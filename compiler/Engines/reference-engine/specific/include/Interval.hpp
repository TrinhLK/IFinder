/**
 * Copyright Verimag laboratory.
 * 
 * contributors:
 *  Jacques Combaz (jacques.combaz@univ-grenoble-alpes.fr)
 * 
 * This software is a computer program whose purpose is to generate
 * executable code from BIP models.
 * 
 * This software is governed by the CeCILL-B license under French law and
 * abiding by the rules of distribution of free software.  You can  use, 
 * modify and/ or redistribute the software under the terms of the CeCILL-B
 * license as circulated by CEA, CNRS and INRIA at the following URL
 * "http://www.cecill.info".
 * 
 * As a counterpart to the access to the source code and  rights to copy,
 * modify and redistribute granted by the license, users are provided only
 * with a limited warranty  and the software's author,  the holder of the
 * economic rights,  and the successive licensors  have only  limited
 * liability.
 *
 * In this respect, the user's attention is drawn to the risks associated
 * with loading,  using,  modifying and/or developing or reproducing the
 * software by the user in light of its specific status of free software,
 * that may mean  that it is complicated to manipulate,  and  that  also
 * therefore means  that it is reserved for developers  and  experienced
 * professionals having in-depth computer knowledge. Users are therefore
 * encouraged to load and test the software's suitability as regards their
 * requirements in conditions enabling the security of their systems and/or 
 * data to be ensured and,  more generally, to use and operate it in the 
 * same conditions as regards security.
 * 
 * The fact that you are presently reading this means that you have had
 * knowledge of the CeCILL-B license and that you accept its terms.
 */

#ifndef _BIP_Engine_Interval_HPP_
#define _BIP_Engine_Interval_HPP_

// inherited classes
#include <IntervalItf.hpp>

class Interval : public IntervalItf {
 public:
  // constructors
  Interval();
  Interval(const Interval &interval);
  Interval(bool b);
  Interval(const TimeValue &left, const TimeValue &right);
  Interval(const TimeValue &left, const TimeValue &right, bool leftOpen, bool rightOpen);

  // destructor
  virtual ~Interval();

  // operations 
  virtual Interval &operator=(const Interval &interval);
  Interval &operator=(bool b);

  // specific
  bool empty() const;
  bool in(const TimeValue& time) const;
  TimeValue size() const;
  TimeValue next(const TimeValue &time) const;
  Interval urgent(Urgency urgency) const;
  Interval wait(const TimeValue &time, Urgency urgency) const;
  TimeValue shift(const TimeValue &time) const { assert(TimeValue::ZERO <= time && time <= size()); return left() + time; }
  TimeValue random(const TimeValue &granularity) const;

  bool operator==(const Interval &interval);
  bool operator!=(const Interval &interval);

  Interval &operator&=(const Interval &interval);
  Interval &operator+=(const TimeValue &time);
  Interval &operator-=(const TimeValue &time);

  Interval operator&&(const Interval &interval) const { Interval ret = *this; ret &= interval; return ret; }
  Interval operator&&(bool b) const { if (b) return Interval(*this); else return Interval(TimeValue::MAX, TimeValue::MIN); }
  Interval operator||(bool b) const { if (b) return Interval(TimeValue::MIN, TimeValue::MAX); else return Interval(*this); }

  Interval operator-() const;
};

inline bool Interval::operator==(const Interval &interval) {
  return left() == interval.left() &&
    right() == interval.right() &&
    leftOpen() == interval.leftOpen() &&
    rightOpen() == interval.rightOpen();
}

inline bool Interval::operator!=(const Interval &interval) {
  return !(*this == interval);
}

std::ostream &operator<<(std::ostream &o, const Interval &interval);

Interval operator&&(bool b, const Interval &interval);
Interval operator||(bool b, const Interval &interval);

#endif // _BIP_Engine_Interval_HPP_