

; invariant composition [mlampCompound]

(define-fun min ((x Real) (y Real)) Real
    (ite (< x y) x y))

(declare-const as1_Active Int)
(assert (<= 0 as1_Active 1))
(declare-const as1_Deployed Int)
(assert (<= 0 as1_Deployed 1))
(declare-const as1_Inactive Int)
(assert (<= 0 as1_Inactive 1))
(declare-const as1_Undeployed Int)
(assert (<= 0 as1_Undeployed 1))
(declare-const as1_Error Int)
(assert (<= 0 as1_Error 1))
(declare-const t2_Active Int)
(assert (<= 0 t2_Active 1))
(declare-const t2_Deployed Int)
(assert (<= 0 t2_Deployed 1))
(declare-const t2_Inactive Int)
(assert (<= 0 t2_Inactive 1))
(declare-const t2_Undeployed Int)
(assert (<= 0 t2_Undeployed 1))
(declare-const t2_Error Int)
(assert (<= 0 t2_Error 1))
(declare-const as0_Active Int)
(assert (<= 0 as0_Active 1))
(declare-const as0_Deployed Int)
(assert (<= 0 as0_Deployed 1))
(declare-const as0_Inactive Int)
(assert (<= 0 as0_Inactive 1))
(declare-const as0_Undeployed Int)
(assert (<= 0 as0_Undeployed 1))
(declare-const as0_Error Int)
(assert (<= 0 as0_Error 1))
(declare-const t1_Active Int)
(assert (<= 0 t1_Active 1))
(declare-const t1_Deployed Int)
(assert (<= 0 t1_Deployed 1))
(declare-const t1_Inactive Int)
(assert (<= 0 t1_Inactive 1))
(declare-const t1_Undeployed Int)
(assert (<= 0 t1_Undeployed 1))
(declare-const t1_Error Int)
(assert (<= 0 t1_Error 1))
(declare-const la1_Active Int)
(assert (<= 0 la1_Active 1))
(declare-const la1_Deployed Int)
(assert (<= 0 la1_Deployed 1))
(declare-const la1_Inactive Int)
(assert (<= 0 la1_Inactive 1))
(declare-const la1_Undeployed Int)
(assert (<= 0 la1_Undeployed 1))
(declare-const la1_Error Int)
(assert (<= 0 la1_Error 1))
(declare-const t0_Active Int)
(assert (<= 0 t0_Active 1))
(declare-const t0_Deployed Int)
(assert (<= 0 t0_Deployed 1))
(declare-const t0_Inactive Int)
(assert (<= 0 t0_Inactive 1))
(declare-const t0_Undeployed Int)
(assert (<= 0 t0_Undeployed 1))
(declare-const t0_Error Int)
(assert (<= 0 t0_Error 1))
(declare-const m0_Active Int)
(assert (<= 0 m0_Active 1))
(declare-const m0_Deployed Int)
(assert (<= 0 m0_Deployed 1))
(declare-const m0_Inactive Int)
(assert (<= 0 m0_Inactive 1))
(declare-const m0_Undeployed Int)
(assert (<= 0 m0_Undeployed 1))
(declare-const m0_Error Int)
(assert (<= 0 m0_Error 1))
(declare-const m2_Active Int)
(assert (<= 0 m2_Active 1))
(declare-const m2_Deployed Int)
(assert (<= 0 m2_Deployed 1))
(declare-const m2_Inactive Int)
(assert (<= 0 m2_Inactive 1))
(declare-const m2_Undeployed Int)
(assert (<= 0 m2_Undeployed 1))
(declare-const m2_Error Int)
(assert (<= 0 m2_Error 1))
(declare-const la0_Active Int)
(assert (<= 0 la0_Active 1))
(declare-const la0_Deployed Int)
(assert (<= 0 la0_Deployed 1))
(declare-const la0_Inactive Int)
(assert (<= 0 la0_Inactive 1))
(declare-const la0_Undeployed Int)
(assert (<= 0 la0_Undeployed 1))
(declare-const la0_Error Int)
(assert (<= 0 la0_Error 1))

; invariant atom-control [Apache as1.]

(assert (and (>= (+ as1_Active
        as1_Deployed
        as1_Error
        as1_Inactive
        as1_Undeployed) 1)
    (= (= as1_Active 1)
        (>= (+ (- 1 as1_Deployed)
            (- 1 as1_Error)
            (- 1 as1_Inactive)
            (- 1 as1_Undeployed)) 4))
    (= (= as1_Deployed 1)
        (>= (+ (- 1 as1_Active)
            (- 1 as1_Error)
            (- 1 as1_Inactive)
            (- 1 as1_Undeployed)) 4))
    (= (= as1_Inactive 1)
        (>= (+ (- 1 as1_Active)
            (- 1 as1_Deployed)
            (- 1 as1_Error)
            (- 1 as1_Undeployed)) 4))
    (= (= as1_Undeployed 1)
        (>= (+ (- 1 as1_Active)
            (- 1 as1_Deployed)
            (- 1 as1_Error)
            (- 1 as1_Inactive)) 4))
    (= (= as1_Error 1)
        (>= (+ (- 1 as1_Active)
            (- 1 as1_Deployed)
            (- 1 as1_Inactive)
            (- 1 as1_Undeployed)) 4))))

;       end atom-control [Apache as1.]


; invariant atom-control [Tomcat t2.]

(assert (and (>= (+ t2_Active
        t2_Deployed
        t2_Error
        t2_Inactive
        t2_Undeployed) 1)
    (= (= t2_Active 1)
        (>= (+ (- 1 t2_Deployed)
            (- 1 t2_Error)
            (- 1 t2_Inactive)
            (- 1 t2_Undeployed)) 4))
    (= (= t2_Deployed 1)
        (>= (+ (- 1 t2_Active)
            (- 1 t2_Error)
            (- 1 t2_Inactive)
            (- 1 t2_Undeployed)) 4))
    (= (= t2_Inactive 1)
        (>= (+ (- 1 t2_Active)
            (- 1 t2_Deployed)
            (- 1 t2_Error)
            (- 1 t2_Undeployed)) 4))
    (= (= t2_Undeployed 1)
        (>= (+ (- 1 t2_Active)
            (- 1 t2_Deployed)
            (- 1 t2_Error)
            (- 1 t2_Inactive)) 4))
    (= (= t2_Error 1)
        (>= (+ (- 1 t2_Active)
            (- 1 t2_Deployed)
            (- 1 t2_Inactive)
            (- 1 t2_Undeployed)) 4))))

;       end atom-control [Tomcat t2.]


; invariant atom-control [Apache as0.]

(assert (and (>= (+ as0_Active
        as0_Deployed
        as0_Error
        as0_Inactive
        as0_Undeployed) 1)
    (= (= as0_Active 1)
        (>= (+ (- 1 as0_Deployed)
            (- 1 as0_Error)
            (- 1 as0_Inactive)
            (- 1 as0_Undeployed)) 4))
    (= (= as0_Deployed 1)
        (>= (+ (- 1 as0_Active)
            (- 1 as0_Error)
            (- 1 as0_Inactive)
            (- 1 as0_Undeployed)) 4))
    (= (= as0_Inactive 1)
        (>= (+ (- 1 as0_Active)
            (- 1 as0_Deployed)
            (- 1 as0_Error)
            (- 1 as0_Undeployed)) 4))
    (= (= as0_Undeployed 1)
        (>= (+ (- 1 as0_Active)
            (- 1 as0_Deployed)
            (- 1 as0_Error)
            (- 1 as0_Inactive)) 4))
    (= (= as0_Error 1)
        (>= (+ (- 1 as0_Active)
            (- 1 as0_Deployed)
            (- 1 as0_Inactive)
            (- 1 as0_Undeployed)) 4))))

;       end atom-control [Apache as0.]


; invariant atom-control [Tomcat t1.]

(assert (and (>= (+ t1_Active
        t1_Deployed
        t1_Error
        t1_Inactive
        t1_Undeployed) 1)
    (= (= t1_Active 1)
        (>= (+ (- 1 t1_Deployed)
            (- 1 t1_Error)
            (- 1 t1_Inactive)
            (- 1 t1_Undeployed)) 4))
    (= (= t1_Deployed 1)
        (>= (+ (- 1 t1_Active)
            (- 1 t1_Error)
            (- 1 t1_Inactive)
            (- 1 t1_Undeployed)) 4))
    (= (= t1_Inactive 1)
        (>= (+ (- 1 t1_Active)
            (- 1 t1_Deployed)
            (- 1 t1_Error)
            (- 1 t1_Undeployed)) 4))
    (= (= t1_Undeployed 1)
        (>= (+ (- 1 t1_Active)
            (- 1 t1_Deployed)
            (- 1 t1_Error)
            (- 1 t1_Inactive)) 4))
    (= (= t1_Error 1)
        (>= (+ (- 1 t1_Active)
            (- 1 t1_Deployed)
            (- 1 t1_Inactive)
            (- 1 t1_Undeployed)) 4))))

;       end atom-control [Tomcat t1.]


; invariant atom-control [Apps la1.]

(assert (and (>= (+ la1_Active
        la1_Deployed
        la1_Error
        la1_Inactive
        la1_Undeployed) 1)
    (= (= la1_Active 1)
        (>= (+ (- 1 la1_Deployed)
            (- 1 la1_Error)
            (- 1 la1_Inactive)
            (- 1 la1_Undeployed)) 4))
    (= (= la1_Deployed 1)
        (>= (+ (- 1 la1_Active)
            (- 1 la1_Error)
            (- 1 la1_Inactive)
            (- 1 la1_Undeployed)) 4))
    (= (= la1_Inactive 1)
        (>= (+ (- 1 la1_Active)
            (- 1 la1_Deployed)
            (- 1 la1_Error)
            (- 1 la1_Undeployed)) 4))
    (= (= la1_Undeployed 1)
        (>= (+ (- 1 la1_Active)
            (- 1 la1_Deployed)
            (- 1 la1_Error)
            (- 1 la1_Inactive)) 4))
    (= (= la1_Error 1)
        (>= (+ (- 1 la1_Active)
            (- 1 la1_Deployed)
            (- 1 la1_Inactive)
            (- 1 la1_Undeployed)) 4))))

;       end atom-control [Apps la1.]


; invariant atom-control [Tomcat t0.]

(assert (and (>= (+ t0_Active
        t0_Deployed
        t0_Error
        t0_Inactive
        t0_Undeployed) 1)
    (= (= t0_Active 1)
        (>= (+ (- 1 t0_Deployed)
            (- 1 t0_Error)
            (- 1 t0_Inactive)
            (- 1 t0_Undeployed)) 4))
    (= (= t0_Deployed 1)
        (>= (+ (- 1 t0_Active)
            (- 1 t0_Error)
            (- 1 t0_Inactive)
            (- 1 t0_Undeployed)) 4))
    (= (= t0_Inactive 1)
        (>= (+ (- 1 t0_Active)
            (- 1 t0_Deployed)
            (- 1 t0_Error)
            (- 1 t0_Undeployed)) 4))
    (= (= t0_Undeployed 1)
        (>= (+ (- 1 t0_Active)
            (- 1 t0_Deployed)
            (- 1 t0_Error)
            (- 1 t0_Inactive)) 4))
    (= (= t0_Error 1)
        (>= (+ (- 1 t0_Active)
            (- 1 t0_Deployed)
            (- 1 t0_Inactive)
            (- 1 t0_Undeployed)) 4))))

;       end atom-control [Tomcat t0.]


; invariant atom-control [MySQL m0.]

(assert (and (>= (+ m0_Active
        m0_Deployed
        m0_Error
        m0_Inactive
        m0_Undeployed) 1)
    (= (= m0_Active 1)
        (>= (+ (- 1 m0_Deployed)
            (- 1 m0_Error)
            (- 1 m0_Inactive)
            (- 1 m0_Undeployed)) 4))
    (= (= m0_Deployed 1)
        (>= (+ (- 1 m0_Active)
            (- 1 m0_Error)
            (- 1 m0_Inactive)
            (- 1 m0_Undeployed)) 4))
    (= (= m0_Inactive 1)
        (>= (+ (- 1 m0_Active)
            (- 1 m0_Deployed)
            (- 1 m0_Error)
            (- 1 m0_Undeployed)) 4))
    (= (= m0_Undeployed 1)
        (>= (+ (- 1 m0_Active)
            (- 1 m0_Deployed)
            (- 1 m0_Error)
            (- 1 m0_Inactive)) 4))
    (= (= m0_Error 1)
        (>= (+ (- 1 m0_Active)
            (- 1 m0_Deployed)
            (- 1 m0_Inactive)
            (- 1 m0_Undeployed)) 4))))

;       end atom-control [MySQL m0.]


; invariant atom-control [MySQL m2.]

(assert (and (>= (+ m2_Active
        m2_Deployed
        m2_Error
        m2_Inactive
        m2_Undeployed) 1)
    (= (= m2_Active 1)
        (>= (+ (- 1 m2_Deployed)
            (- 1 m2_Error)
            (- 1 m2_Inactive)
            (- 1 m2_Undeployed)) 4))
    (= (= m2_Deployed 1)
        (>= (+ (- 1 m2_Active)
            (- 1 m2_Error)
            (- 1 m2_Inactive)
            (- 1 m2_Undeployed)) 4))
    (= (= m2_Inactive 1)
        (>= (+ (- 1 m2_Active)
            (- 1 m2_Deployed)
            (- 1 m2_Error)
            (- 1 m2_Undeployed)) 4))
    (= (= m2_Undeployed 1)
        (>= (+ (- 1 m2_Active)
            (- 1 m2_Deployed)
            (- 1 m2_Error)
            (- 1 m2_Inactive)) 4))
    (= (= m2_Error 1)
        (>= (+ (- 1 m2_Active)
            (- 1 m2_Deployed)
            (- 1 m2_Inactive)
            (- 1 m2_Undeployed)) 4))))

;       end atom-control [MySQL m2.]


; invariant atom-control [Apps la0.]

(assert (and (>= (+ la0_Active
        la0_Deployed
        la0_Error
        la0_Inactive
        la0_Undeployed) 1)
    (= (= la0_Active 1)
        (>= (+ (- 1 la0_Deployed)
            (- 1 la0_Error)
            (- 1 la0_Inactive)
            (- 1 la0_Undeployed)) 4))
    (= (= la0_Deployed 1)
        (>= (+ (- 1 la0_Active)
            (- 1 la0_Error)
            (- 1 la0_Inactive)
            (- 1 la0_Undeployed)) 4))
    (= (= la0_Inactive 1)
        (>= (+ (- 1 la0_Active)
            (- 1 la0_Deployed)
            (- 1 la0_Error)
            (- 1 la0_Undeployed)) 4))
    (= (= la0_Undeployed 1)
        (>= (+ (- 1 la0_Active)
            (- 1 la0_Deployed)
            (- 1 la0_Error)
            (- 1 la0_Inactive)) 4))
    (= (= la0_Error 1)
        (>= (+ (- 1 la0_Active)
            (- 1 la0_Deployed)
            (- 1 la0_Inactive)
            (- 1 la0_Undeployed)) 4))))

;       end atom-control [Apps la0.]



; the negation of the property 

(assert (not (and (>= (+ la0_Active la1_Active) 0) (>= (+ m0_Active m2_Active) 0) )))

