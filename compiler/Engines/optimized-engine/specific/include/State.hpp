/**
 * Copyright Verimag laboratory.
 * 
 * contributors:
 *  Marc Pouhliès
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

#ifndef _BIP_Engine_State_HPP_
#define _BIP_Engine_State_HPP_

#include <string>

/** \brief Represent a state of a model
 */
class State {
 public:
  State(char *buffer, size_t size);
  State(const State &state);
  virtual ~State();

  const char *buffer() const { return mBuffer; }
  size_t size() const { return mSize; }

  bool operator==(const State &state) const;
  bool operator!=(const State &state) const { return !(*this == state); }
  bool operator<(const State &state) const;

  State &operator=(const State &state);

  class Hash {
   public:
    size_t operator()(const State &state) const { return state.hash(); }
  };

 protected:
  char *buffer() { return mBuffer; }

  size_t hash() const { if (mResetHash) recomputeHash(); return mHash; }
  void recomputeHash() const;

  char *mBuffer;
  size_t mSize;

  mutable bool mResetHash;
  mutable size_t mHash;
};

#endif // _BIP_Engine_State_HPP_
