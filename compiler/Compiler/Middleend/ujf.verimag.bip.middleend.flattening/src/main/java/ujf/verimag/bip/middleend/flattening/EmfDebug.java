/**
 * Copyright Verimag laboratory.
 * 
 * contributors:
 *  Anakreontas Mentis
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

package ujf.verimag.bip.middleend.flattening;

import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.impl.AdapterImpl;

public class EmfDebug {
	private static class ContainmentExaminer extends AdapterImpl {
		public void notifyChanged(Notification notification) {
			Object feature = notification.getFeature();
			if (feature instanceof EReference) {
				EReference ref = (EReference) feature;
				if (notification.getOldValue() != null) {
					throw new IllegalArgumentException("changed");
				}
				if (ref.isContainment()) {
					Object newVal = notification.getNewValue();
					if (newVal instanceof EObject) {
						EObject nob = (EObject) newVal;
						if (nob.eContainer() != notification.getNotifier()) {
							throw new IllegalArgumentException("Allready bound");
						}
					}
				}
			}
		}
    };


	private static ContainmentExaminer freezer;

	public static boolean freeze(Object obj) {
		if (freezer == null) {
			freezer = new ContainmentExaminer();
		}
		if (obj instanceof EObject) {
			EObject eobj = (EObject) obj;
			if (!eobj.eAdapters().contains(freezer)) {
				eobj.eAdapters().add(freezer);
				return true;
			}
		}
		return false;
	}

	public static boolean unfreeze(Object obj) {
		if (freezer == null) {
			freezer = new ContainmentExaminer();
		}
		if (obj instanceof EObject) {
			EObject eobj = (EObject) obj;
			return eobj.eAdapters().remove(freezer);
		}
		return false;
	}
}

