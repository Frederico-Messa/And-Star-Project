(define (problem FR_9_8)
 (:domain first-response)
 (:objects  l1 l2 l3 l4 l5 l6 l7 l8 l9  - location
	    f1 f2 f3 f4 f5 f6 f7 f8 f9 - fire_unit
	    v1 v2 v3 v4 v5 v6 v7 v8 - victim
	    m1 m2 m3 m4 m5 m6 m7 m8 - medical_unit
)
 (:init
        (adjacent l1 l1)
        (adjacent l1 l2)
        (adjacent l1 l3)
        (adjacent l1 l4)
        (adjacent l1 l5)
        (adjacent l1 l6)
        (adjacent l1 l7)
        (adjacent l1 l8)
        (adjacent l1 l9)
        (adjacent l2 l1)
        (adjacent l2 l2)
        (adjacent l2 l3)
        (adjacent l2 l4)
        (adjacent l2 l5)
        (adjacent l2 l6)
        (adjacent l2 l7)
        (adjacent l2 l8)
        (adjacent l2 l9)
        (adjacent l3 l1)
        (adjacent l3 l2)
        (adjacent l3 l3)
        (adjacent l3 l4)
        (adjacent l3 l5)
        (adjacent l3 l6)
        (adjacent l3 l7)
        (adjacent l3 l8)
        (adjacent l4 l1)
        (adjacent l4 l2)
        (adjacent l4 l3)
        (adjacent l4 l4)
        (adjacent l4 l6)
        (adjacent l5 l1)
        (adjacent l5 l2)
        (adjacent l5 l3)
        (adjacent l5 l5)
        (adjacent l6 l1)
        (adjacent l6 l2)
        (adjacent l6 l3)
        (adjacent l6 l4)
        (adjacent l6 l6)
        (adjacent l7 l1)
        (adjacent l7 l2)
        (adjacent l7 l3)
        (adjacent l7 l7)
        (adjacent l8 l1)
        (adjacent l8 l2)
        (adjacent l8 l3)
        (adjacent l8 l8)
        (adjacent l9 l1)
        (adjacent l9 l2)
        (adjacent l9 l9)
        (fire l2)
        (fire l3)
        (fire l6)
        (fire l7)
        (fire l9)
        (fire-unit-at f1 l4)
        (fire-unit-at f2 l3)
        (fire-unit-at f3 l3)
        (fire-unit-at f4 l3)
        (fire-unit-at f5 l2)
        (fire-unit-at f6 l2)
        (fire-unit-at f7 l1)
        (fire-unit-at f8 l1)
        (fire-unit-at f9 l1)
        (hospital l6)
        (hospital l7)
        (hospital l8)
        (hospital l9)
        (medical-unit-at m1 l9)
        (medical-unit-at m2 l9)
        (medical-unit-at m3 l9)
        (medical-unit-at m4 l8)
        (medical-unit-at m5 l8)
        (medical-unit-at m6 l7)
        (medical-unit-at m7 l7)
        (medical-unit-at m8 l7)
        (nfire l1)
        (nfire l4)
        (nfire l5)
        (nfire l8)
        (victim-at v1 l2)
        (victim-at v2 l2)
        (victim-at v3 l1)
        (victim-at v4 l9)
        (victim-at v5 l9)
        (victim-at v6 l7)
        (victim-at v7 l7)
        (victim-at v8 l5)
        (victim-status v1 hurt)
        (victim-status v2 hurt)
        (victim-status v3 dying)
        (victim-status v4 dying)
        (victim-status v5 hurt)
        (victim-status v6 hurt)
        (victim-status v7 dying)
        (victim-status v8 dying)
        (water-at l3)
        (water-at l4)
        (water-at l5)
	)
 (:goal (and  (nfire l3) (nfire l2) (nfire l2) (nfire l9) (nfire l9) (nfire l7) (nfire l7) (nfire l6)  (victim-status v1 healthy) (victim-status v2 healthy) (victim-status v3 healthy) (victim-status v4 healthy) (victim-status v5 healthy) (victim-status v6 healthy) (victim-status v7 healthy) (victim-status v8 healthy)))
 )
