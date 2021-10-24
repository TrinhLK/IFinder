

; invariant composition [Ring5]

(define-fun min ((x Real) (y Real)) Real
    (ite (< x y) x y))

(declare-const p2_abst Int)
(assert (<= 0 p2_abst 1))
(declare-const p2_interm Int)
(assert (<= 0 p2_interm 1))
(declare-const p2_available Int)
(assert (<= 0 p2_available 1))
(declare-const p2_x Real)
(assert (or (= -1 p2_x)
            (<= 0 p2_x)))
(declare-const p2_trigger Real)
(assert (or (= -1 p2_trigger)
            (<= 0 p2_trigger)))
(declare-const p2_token Real)
(assert (or (= -1 p2_token)
            (<= 0 p2_token)))
(declare-const t0 Real)
(assert (or (= -1 t0)
            (<= 0 t0)))
(declare-const p5_abst Int)
(assert (<= 0 p5_abst 1))
(declare-const p5_interm Int)
(assert (<= 0 p5_interm 1))
(declare-const p5_available Int)
(assert (<= 0 p5_available 1))
(declare-const p5_x Real)
(assert (or (= -1 p5_x)
            (<= 0 p5_x)))
(declare-const p5_trigger Real)
(assert (or (= -1 p5_trigger)
            (<= 0 p5_trigger)))
(declare-const p5_token Real)
(assert (or (= -1 p5_token)
            (<= 0 p5_token)))
(declare-const p3_abst Int)
(assert (<= 0 p3_abst 1))
(declare-const p3_interm Int)
(assert (<= 0 p3_interm 1))
(declare-const p3_available Int)
(assert (<= 0 p3_available 1))
(declare-const p4_abst Int)
(assert (<= 0 p4_abst 1))
(declare-const p4_interm Int)
(assert (<= 0 p4_interm 1))
(declare-const p4_available Int)
(assert (<= 0 p4_available 1))
(declare-const p1_abst Int)
(assert (<= 0 p1_abst 1))
(declare-const p1_interm Int)
(assert (<= 0 p1_interm 1))
(declare-const p1_available Int)
(assert (<= 0 p1_available 1))
(declare-const p4_trigger Real)
(assert (or (= -1 p4_trigger)
            (<= 0 p4_trigger)))
(declare-const p4_token Real)
(assert (or (= -1 p4_token)
            (<= 0 p4_token)))
(declare-const p1_trigger Real)
(assert (or (= -1 p1_trigger)
            (<= 0 p1_trigger)))
(declare-const p1_token Real)
(assert (or (= -1 p1_token)
            (<= 0 p1_token)))
(declare-const send51 Real)
(assert (or (= -1 send51)
            (<= 0 send51)))
(declare-const send45 Real)
(assert (or (= -1 send45)
            (<= 0 send45)))
(declare-const send34 Real)
(assert (or (= -1 send34)
            (<= 0 send34)))
(declare-const send23 Real)
(assert (or (= -1 send23)
            (<= 0 send23)))
(declare-const send12 Real)
(assert (or (= -1 send12)
            (<= 0 send12)))
(declare-const p3_trigger Real)
(assert (or (= -1 p3_trigger)
            (<= 0 p3_trigger)))
(declare-const p3_token Real)
(assert (or (= -1 p3_token)
            (<= 0 p3_token)))
(declare-const p1_x Real)
(assert (or (= -1 p1_x)
            (<= 0 p1_x)))
(declare-const p3_x Real)
(assert (or (= -1 p3_x)
            (<= 0 p3_x)))
(declare-const p4_x Real)
(assert (or (= -1 p4_x)
            (<= 0 p4_x)))

; invariant atom-control [R p2.]

(assert (and (>= (+ p2_abst
        p2_available
        p2_interm) 1)
    (= (= p2_abst 1)
        (>= (+ (- 1 p2_available)
            (- 1 p2_interm)) 2))
    (= (= p2_interm 1)
        (>= (+ (- 1 p2_abst)
            (- 1 p2_available)) 2))
    (= (= p2_available 1)
        (>= (+ (- 1 p2_abst)
            (- 1 p2_interm)) 2))))

;       end atom-control [R p2.]


; invariant zone-reachability [R p2.]

(assert (or (and (= p2_abst 1)
        (or (and (= t0 p2_x)
                (<= 0 p2_x)
                (= p2_trigger -1)
                (= p2_token -1))
            (and (= p2_token p2_x)
                (<= 0 p2_x)
                (<= p2_x p2_trigger)
                (<= (+ p2_trigger 2) t0))))
    (and (= p2_interm 1)
        (or (and (= p2_trigger p2_x)
                (<= 0 p2_x)
                (<= (+ p2_x 2) t0)
                (= p2_token -1))
            (and (= p2_trigger p2_x)
                (<= 0 p2_x)
                (<= (+ p2_x 2) p2_token)
                (<= (+ p2_token 2) t0))))
    (and (= p2_available 1)
        (or (and (= p2_trigger p2_x)
                (<= 0 p2_x)
                (<= p2_x 2)
                (<= (+ p2_x 2) t0)
                (= p2_token -1))
            (and (= p2_trigger p2_x)
                (<= 0 p2_x)
                (<= p2_x 2)
                (<= (+ p2_x 2) p2_token)
                (<= (+ p2_token 2) t0))))))

;       end zone-reachability [R p2.]


; invariant atom-control [R p5.]

(assert (and (>= (+ p5_abst
        p5_available
        p5_interm) 1)
    (= (= p5_abst 1)
        (>= (+ (- 1 p5_available)
            (- 1 p5_interm)) 2))
    (= (= p5_interm 1)
        (>= (+ (- 1 p5_abst)
            (- 1 p5_available)) 2))
    (= (= p5_available 1)
        (>= (+ (- 1 p5_abst)
            (- 1 p5_interm)) 2))))

;       end atom-control [R p5.]


; invariant zone-reachability [R p5.]

(assert (or (and (= p5_abst 1)
        (or (and (= t0 p5_x)
                (<= 0 p5_x)
                (= p5_trigger -1)
                (= p5_token -1))
            (and (= p5_token p5_x)
                (<= 0 p5_x)
                (<= p5_x p5_trigger)
                (<= (+ p5_trigger 2) t0))))
    (and (= p5_interm 1)
        (or (and (= p5_trigger p5_x)
                (<= 0 p5_x)
                (<= (+ p5_x 2) t0)
                (= p5_token -1))
            (and (= p5_trigger p5_x)
                (<= 0 p5_x)
                (<= (+ p5_x 2) p5_token)
                (<= (+ p5_token 2) t0))))
    (and (= p5_available 1)
        (or (and (= p5_trigger p5_x)
                (<= 0 p5_x)
                (<= p5_x 2)
                (<= (+ p5_x 2) t0)
                (= p5_token -1))
            (and (= p5_trigger p5_x)
                (<= 0 p5_x)
                (<= p5_x 2)
                (<= (+ p5_x 2) p5_token)
                (<= (+ p5_token 2) t0))))))

;       end zone-reachability [R p5.]


; invariant trap [Ring5 ]

(assert (and (>= (+ p1_available
        p1_interm
        p2_available
        p2_interm
        p3_available
        p3_interm
        p4_available
        p4_interm
        p5_available
        p5_interm) 1)
    (>= (+ p1_abst
        p2_abst
        p3_abst
        p4_abst
        p5_abst) 1)))

;       end trap [Ring5 ]


; invariant interaction-time [Ring5 ]

(assert (and (= p1_trigger send51)
    (= p1_token send12)
    (= p2_trigger send12)
    (= p2_token send23)
    (= p3_trigger send23)
    (= p3_token send34)
    (= p4_trigger send34)
    (= p4_token send45)
    (= p5_trigger send45)
    (= p5_token send51)))

;       end interaction-time [Ring5 ]


; invariant atom-control [R1 p1.]

(assert (and (>= (+ p1_abst
        p1_available
        p1_interm) 1)
    (= (= p1_abst 1)
        (>= (+ (- 1 p1_available)
            (- 1 p1_interm)) 2))
    (= (= p1_interm 1)
        (>= (+ (- 1 p1_abst)
            (- 1 p1_available)) 2))
    (= (= p1_available 1)
        (>= (+ (- 1 p1_abst)
            (- 1 p1_interm)) 2))))

;       end atom-control [R1 p1.]


; invariant zone-reachability [R1 p1.]

(assert (or (and (= p1_abst 1)
        (or (and (= p1_token p1_x)
                (<= 0 p1_x)
                (<= p1_x t0)
                (= p1_trigger -1))
            (and (= p1_token p1_x)
                (<= 0 p1_x)
                (<= p1_x p1_trigger)
                (<= (+ p1_trigger 2) t0))))
    (and (= p1_interm 1)
        (or (and (= t0 p1_x)
                (<= 0 p1_x)
                (= p1_trigger -1)
                (= p1_token -1))
            (and (= p1_trigger p1_x)
                (<= 0 p1_x)
                (<= (+ p1_x 2) p1_token)
                (<= p1_token t0))))
    (and (= p1_available 1)
        (or (and (= t0 p1_x)
                (<= 0 p1_x)
                (<= p1_x 2)
                (= p1_trigger -1)
                (= p1_token -1))
            (and (= p1_trigger p1_x)
                (<= 0 p1_x)
                (<= p1_x 2)
                (<= (+ p1_x 2) p1_token)
                (<= p1_token t0))))))

;       end zone-reachability [R1 p1.]


; invariant atom-control [R p3.]

(assert (and (>= (+ p3_abst
        p3_available
        p3_interm) 1)
    (= (= p3_abst 1)
        (>= (+ (- 1 p3_available)
            (- 1 p3_interm)) 2))
    (= (= p3_interm 1)
        (>= (+ (- 1 p3_abst)
            (- 1 p3_available)) 2))
    (= (= p3_available 1)
        (>= (+ (- 1 p3_abst)
            (- 1 p3_interm)) 2))))

;       end atom-control [R p3.]


; invariant zone-reachability [R p3.]

(assert (or (and (= p3_abst 1)
        (or (and (= t0 p3_x)
                (<= 0 p3_x)
                (= p3_trigger -1)
                (= p3_token -1))
            (and (= p3_token p3_x)
                (<= 0 p3_x)
                (<= p3_x p3_trigger)
                (<= (+ p3_trigger 2) t0))))
    (and (= p3_interm 1)
        (or (and (= p3_trigger p3_x)
                (<= 0 p3_x)
                (<= (+ p3_x 2) t0)
                (= p3_token -1))
            (and (= p3_trigger p3_x)
                (<= 0 p3_x)
                (<= (+ p3_x 2) p3_token)
                (<= (+ p3_token 2) t0))))
    (and (= p3_available 1)
        (or (and (= p3_trigger p3_x)
                (<= 0 p3_x)
                (<= p3_x 2)
                (<= (+ p3_x 2) t0)
                (= p3_token -1))
            (and (= p3_trigger p3_x)
                (<= 0 p3_x)
                (<= p3_x 2)
                (<= (+ p3_x 2) p3_token)
                (<= (+ p3_token 2) t0))))))

;       end zone-reachability [R p3.]


; invariant atom-control [R p4.]

(assert (and (>= (+ p4_abst
        p4_available
        p4_interm) 1)
    (= (= p4_abst 1)
        (>= (+ (- 1 p4_available)
            (- 1 p4_interm)) 2))
    (= (= p4_interm 1)
        (>= (+ (- 1 p4_abst)
            (- 1 p4_available)) 2))
    (= (= p4_available 1)
        (>= (+ (- 1 p4_abst)
            (- 1 p4_interm)) 2))))

;       end atom-control [R p4.]


; invariant zone-reachability [R p4.]

(assert (or (and (= p4_abst 1)
        (or (and (= t0 p4_x)
                (<= 0 p4_x)
                (= p4_trigger -1)
                (= p4_token -1))
            (and (= p4_token p4_x)
                (<= 0 p4_x)
                (<= p4_x p4_trigger)
                (<= (+ p4_trigger 2) t0))))
    (and (= p4_interm 1)
        (or (and (= p4_trigger p4_x)
                (<= 0 p4_x)
                (<= (+ p4_x 2) t0)
                (= p4_token -1))
            (and (= p4_trigger p4_x)
                (<= 0 p4_x)
                (<= (+ p4_x 2) p4_token)
                (<= (+ p4_token 2) t0))))
    (and (= p4_available 1)
        (or (and (= p4_trigger p4_x)
                (<= 0 p4_x)
                (<= p4_x 2)
                (<= (+ p4_x 2) t0)
                (= p4_token -1))
            (and (= p4_trigger p4_x)
                (<= 0 p4_x)
                (<= p4_x 2)
                (<= (+ p4_x 2) p4_token)
                (<= (+ p4_token 2) t0))))))

;       end zone-reachability [R p4.]



; the negation of the property 

(assert (not (or (>= p1_available 1)    (>= p2_available 1)    (>= p3_available 1)    (>= p4_available 1)    (>= p5_available 1)        (and (>= (+ p5_interm p1_abst) 2) (>= p1_x 2))    (and (>= (+ p4_interm p5_abst) 2) (>= p5_x 2))    (and (>= (+ p3_interm p4_abst) 2) (>= p4_x 2))    (and (>= (+ p2_interm p3_abst) 2) (>= p3_x 2))    (and (>= (+ p1_interm p2_abst) 2) (>= p2_x 2))        (and (=> (>= p1_available 1) (< p1_x 2))         (=> (>= p2_available 1) (< p2_x 2))         (=> (>= p3_available 1) (< p3_x 2))         (=> (>= p4_available 1) (< p4_x 2))         (=> (>= p5_available 1) (< p5_x 2))    ))))

