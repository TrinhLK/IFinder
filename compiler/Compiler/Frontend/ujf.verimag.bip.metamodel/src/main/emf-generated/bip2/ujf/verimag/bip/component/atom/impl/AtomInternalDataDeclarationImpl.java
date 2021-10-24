/**
 * Copyright Verimag laboratory.
 * 
 * contributors:
 *  Marc Pouhliès
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

package bip2.ujf.verimag.bip.component.atom.impl;

import bip2.ujf.verimag.bip.actionlang.ValuedExpression;
import bip2.ujf.verimag.bip.annotation.AnnotatedElement;
import bip2.ujf.verimag.bip.annotation.AnnotationPackage;
import bip2.ujf.verimag.bip.annotation.BipAnnotation;
import bip2.ujf.verimag.bip.annotation.impl.StringToAnnotationMapEntryImpl;
import bip2.ujf.verimag.bip.annotation.impl.AnnotatedElementImpl;
import bip2.ujf.verimag.bip.component.atom.AtomInternalDataDeclaration;
import bip2.ujf.verimag.bip.component.atom.AtomPackage;

import bip2.ujf.verimag.bip.data.DataType;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.InternalEList;
import ujf.verimag.bip.metamodel.AnnotatedEObjectImpl;

import org.eclipse.emf.ecore.impl.EObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Internal Data Declaration</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * <ul>
 *   <li>{@link bip2.ujf.verimag.bip.component.atom.impl.AtomInternalDataDeclarationImpl#getDataType <em>Data Type</em>}</li>
 *   <li>{@link bip2.ujf.verimag.bip.component.atom.impl.AtomInternalDataDeclarationImpl#getName <em>Name</em>}</li>
 *   <li>{@link bip2.ujf.verimag.bip.component.atom.impl.AtomInternalDataDeclarationImpl#getValue <em>Value</em>}</li>
 *   <li>{@link bip2.ujf.verimag.bip.component.atom.impl.AtomInternalDataDeclarationImpl#isConst <em>Const</em>}</li>
 *   <li>{@link bip2.ujf.verimag.bip.component.atom.impl.AtomInternalDataDeclarationImpl#isExported <em>Exported</em>}</li>
 * </ul>
 * </p>
 *
 * @generated
 */
public class AtomInternalDataDeclarationImpl extends AnnotatedElementImpl
        implements AtomInternalDataDeclaration {
    /**
     * The cached value of the '{@link #getDataType() <em>Data Type</em>}' reference.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #getDataType()
     * @generated
     * @ordered
     */
    protected DataType dataType;

    /**
     * The default value of the '{@link #getName() <em>Name</em>}' attribute.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #getName()
     * @generated
     * @ordered
     */
    protected static final String NAME_EDEFAULT = null;

    /**
     * The cached value of the '{@link #getName() <em>Name</em>}' attribute.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #getName()
     * @generated
     * @ordered
     */
    protected String name = NAME_EDEFAULT;

    /**
     * The cached value of the '{@link #getValue() <em>Value</em>}' containment reference.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #getValue()
     * @generated
     * @ordered
     */
    protected ValuedExpression value;

    /**
     * The default value of the '{@link #isConst() <em>Const</em>}' attribute.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #isConst()
     * @generated
     * @ordered
     */
    protected static final boolean CONST_EDEFAULT = false;

    /**
     * The cached value of the '{@link #isConst() <em>Const</em>}' attribute.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #isConst()
     * @generated
     * @ordered
     */
    protected boolean const_ = CONST_EDEFAULT;

    /**
     * The default value of the '{@link #isExported() <em>Exported</em>}' attribute.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #isExported()
     * @generated
     * @ordered
     */
    protected static final boolean EXPORTED_EDEFAULT = false;

    /**
     * The cached value of the '{@link #isExported() <em>Exported</em>}' attribute.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see #isExported()
     * @generated
     * @ordered
     */
    protected boolean exported = EXPORTED_EDEFAULT;

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    protected AtomInternalDataDeclarationImpl() {
        super();
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    protected EClass eStaticClass() {
        return AtomPackage.Literals.ATOM_INTERNAL_DATA_DECLARATION;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public DataType getDataType() {
        if (dataType != null && ((EObject) dataType).eIsProxy()) {
            InternalEObject oldDataType = (InternalEObject) dataType;
            dataType = (DataType) eResolveProxy(oldDataType);
            if (dataType != oldDataType) {
                if (eNotificationRequired())
                    eNotify(new ENotificationImpl(
                            this,
                            Notification.RESOLVE,
                            AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__DATA_TYPE,
                            oldDataType, dataType));
            }
        }
        return dataType;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public DataType basicGetDataType() {
        return dataType;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public void setDataType(DataType newDataType) {
        DataType oldDataType = dataType;
        dataType = newDataType;
        if (eNotificationRequired())
            eNotify(new ENotificationImpl(this, Notification.SET,
                    AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__DATA_TYPE,
                    oldDataType, dataType));
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public String getName() {
        return name;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public void setName(String newName) {
        String oldName = name;
        name = newName;
        if (eNotificationRequired())
            eNotify(new ENotificationImpl(this, Notification.SET,
                    AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__NAME, oldName,
                    name));
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public ValuedExpression getValue() {
        return value;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public NotificationChain basicSetValue(ValuedExpression newValue,
            NotificationChain msgs) {
        ValuedExpression oldValue = value;
        value = newValue;
        if (eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl(this,
                    Notification.SET,
                    AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE,
                    oldValue, newValue);
            if (msgs == null)
                msgs = notification;
            else
                msgs.add(notification);
        }
        return msgs;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public void setValue(ValuedExpression newValue) {
        if (newValue != value) {
            NotificationChain msgs = null;
            if (value != null)
                msgs = ((InternalEObject) value)
                        .eInverseRemove(
                                this,
                                EOPPOSITE_FEATURE_BASE
                                        - AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE,
                                null, msgs);
            if (newValue != null)
                msgs = ((InternalEObject) newValue)
                        .eInverseAdd(
                                this,
                                EOPPOSITE_FEATURE_BASE
                                        - AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE,
                                null, msgs);
            msgs = basicSetValue(newValue, msgs);
            if (msgs != null)
                msgs.dispatch();
        } else if (eNotificationRequired())
            eNotify(new ENotificationImpl(this, Notification.SET,
                    AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE,
                    newValue, newValue));
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public boolean isConst() {
        return const_;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public void setConst(boolean newConst) {
        boolean oldConst = const_;
        const_ = newConst;
        if (eNotificationRequired())
            eNotify(new ENotificationImpl(this, Notification.SET,
                    AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__CONST,
                    oldConst, const_));
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public boolean isExported() {
        return exported;
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    public void setExported(boolean newExported) {
        boolean oldExported = exported;
        exported = newExported;
        if (eNotificationRequired())
            eNotify(new ENotificationImpl(this, Notification.SET,
                    AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__EXPORTED,
                    oldExported, exported));
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd,
            int featureID, NotificationChain msgs) {
        switch (featureID) {
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE:
            return basicSetValue(null, msgs);
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__DATA_TYPE:
            if (resolve)
                return getDataType();
            return basicGetDataType();
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__NAME:
            return getName();
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE:
            return getValue();
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__CONST:
            return isConst();
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__EXPORTED:
            return isExported();
        }
        return super.eGet(featureID, resolve, coreType);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__DATA_TYPE:
            setDataType((DataType) newValue);
            return;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__NAME:
            setName((String) newValue);
            return;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE:
            setValue((ValuedExpression) newValue);
            return;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__CONST:
            setConst((Boolean) newValue);
            return;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__EXPORTED:
            setExported((Boolean) newValue);
            return;
        }
        super.eSet(featureID, newValue);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__DATA_TYPE:
            setDataType((DataType) null);
            return;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__NAME:
            setName(NAME_EDEFAULT);
            return;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE:
            setValue((ValuedExpression) null);
            return;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__CONST:
            setConst(CONST_EDEFAULT);
            return;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__EXPORTED:
            setExported(EXPORTED_EDEFAULT);
            return;
        }
        super.eUnset(featureID);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__DATA_TYPE:
            return dataType != null;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__NAME:
            return NAME_EDEFAULT == null ? name != null : !NAME_EDEFAULT
                    .equals(name);
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__VALUE:
            return value != null;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__CONST:
            return const_ != CONST_EDEFAULT;
        case AtomPackage.ATOM_INTERNAL_DATA_DECLARATION__EXPORTED:
            return exported != EXPORTED_EDEFAULT;
        }
        return super.eIsSet(featureID);
    }

    /**
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    @Override
    public String toString() {
        if (eIsProxy())
            return super.toString();

        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        result.append(name);
        result.append(", const: ");
        result.append(const_);
        result.append(", exported: ");
        result.append(exported);
        result.append(')');
        return result.toString();
    }

} //AtomInternalDataDeclarationImpl
