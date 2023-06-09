(define (problem FR_7_2)
 (:domain first-response)
 (:objects  l1 l2 l3 l4 l5 l6 l7  - location
	    f1 f2 f3 f4 f5 - fire_unit
	    v1 v2 - victim
	    m1 - medical_unit
)
 (:init
        (adjacent l1 l1)
        (adjacent l1 l2)
        (adjacent l1 l3)
        (adjacent l1 l4)
        (adjacent l1 l5)
        (adjacent l1 l6)
        (adjacent l1 l7)
        (adjacent l2 l1)
        (adjacent l2 l2)
        (adjacent l2 l3)
        (adjacent l2 l4)
        (adjacent l2 l5)
        (adjacent l2 l7)
        (adjacent l3 l1)
        (adjacent l3 l2)
        (adjacent l3 l3)
        (adjacent l3 l4)
        (adjacent l3 l5)
        (adjacent l3 l6)
        (adjacent l3 l7)
        (adjacent l4 l1)
        (adjacent l4 l2)
        (adjacent l4 l3)
        (adjacent l4 l4)
        (adjacent l4 l5)
        (adjacent l5 l1)
        (adjacent l5 l2)
        (adjacent l5 l3)
        (adjacent l5 l4)
        (adjacent l5 l5)
        (adjacent l6 l1)
        (adjacent l6 l3)
        (adjacent l6 l6)
        (adjacent l7 l1)
        (adjacent l7 l2)
        (adjacent l7 l3)
        (adjacent l7 l7)
        (fire l2)
        (fire-unit-at f1 l1)
        (fire-unit-at f2 l6)
        (fire-unit-at f3 l5)
        (fire-unit-at f4 l4)
        (fire-unit-at f5 l2)
        (hospital l2)
        (hospital l3)
        (hospital l5)
        (hospital l6)
        (medical-unit-at m1 l1)
        (nfire l1)
        (nfire l3)
        (nfire l4)
        (nfire l5)
        (nfire l6)
        (nfire l7)
        (victim-at v1 l1)
        (victim-at v2 l1)
        (victim-status v1 hurt)
        (victim-status v2 dying)
        (water-at l4)
	)
 (:goal (and  (nfire l2) (nfire l2)  (victim-status v1 healthy) (victim-status v2 healthy)))
 )
