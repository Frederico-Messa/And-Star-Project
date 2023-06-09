(define (problem p11)
  (:domain earth_observation)
  (:objects 
    p11 p12 p13 p21 p22 p23 p31 p32 p33 p41 p42 p43 p51 p52 p53 - patch 
  )
  (:init
    (CONNECTED p11 p22 north-east)
    (CONNECTED p11 p21 east)
    (CONNECTED p12 p23 north-east)
    (CONNECTED p12 p22 east)
    (CONNECTED p12 p21 south-east)
    (CONNECTED p13 p23 east)
    (CONNECTED p13 p22 south-east)
    (CONNECTED p21 p32 north-east)
    (CONNECTED p21 p31 east)
    (CONNECTED p22 p33 north-east)
    (CONNECTED p22 p32 east)
    (CONNECTED p22 p31 south-east)
    (CONNECTED p23 p33 east)
    (CONNECTED p23 p32 south-east)
    (CONNECTED p31 p42 north-east)
    (CONNECTED p31 p41 east)
    (CONNECTED p32 p43 north-east)
    (CONNECTED p32 p42 east)
    (CONNECTED p32 p41 south-east)
    (CONNECTED p33 p43 east)
    (CONNECTED p33 p42 south-east)
    (CONNECTED p41 p52 north-east)
    (CONNECTED p41 p51 east)
    (CONNECTED p42 p53 north-east)
    (CONNECTED p42 p52 east)
    (CONNECTED p42 p51 south-east)
    (CONNECTED p43 p53 east)
    (CONNECTED p43 p52 south-east)
    (CONNECTED p51 p12 north-east)
    (CONNECTED p51 p11 east)
    (CONNECTED p52 p13 north-east)
    (CONNECTED p52 p12 east)
    (CONNECTED p52 p11 south-east)
    (CONNECTED p53 p13 east)
    (CONNECTED p53 p12 south-east)
    (is-focal-point p12)
    (is-target p53)
  )
  (:goal (and
    (not (is-target p53))
  ))
  
)
