(define (problem FR_2_2)
 (:domain first-response)
 (:objects  l1 l2  - location
	    f1 f2 - fire_unit
	    v1 v2 - victim
	    m1 m2 - medical_unit
)
 (:init
        (adjacent l1 l1)
        (adjacent l2 l2)
        (fire l1)
        (fire-unit-at f1 l1)
        (fire-unit-at f2 l1)
        (hospital l1)
        (medical-unit-at m1 l2)
        (medical-unit-at m2 l1)
        (nfire l2)
        (victim-at v1 l2)
        (victim-at v2 l1)
        (victim-status v1 hurt)
        (victim-status v2 hurt)
        (water-at l1)
        (water-at l2)
	)
 (:goal (and  (nfire l1) (nfire l1)  (victim-status v1 healthy) (victim-status v2 healthy)))
 )
