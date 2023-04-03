(define (problem p05)
  (:domain earth_observation)
  (:objects 
    p11 p12 p13 p14 p15 p16 p17 p21 p22 p23 p24 p25 p26 p27 p31 p32 p33 p34 p35 p36 p37 - patch 
  )
  (:init
    (CONNECTED p11 p22 north-east)
    (CONNECTED p11 p21 east)
    (CONNECTED p12 p23 north-east)
    (CONNECTED p12 p22 east)
    (CONNECTED p12 p21 south-east)
    (CONNECTED p13 p24 north-east)
    (CONNECTED p13 p23 east)
    (CONNECTED p13 p22 south-east)
    (CONNECTED p14 p25 north-east)
    (CONNECTED p14 p24 east)
    (CONNECTED p14 p23 south-east)
    (CONNECTED p15 p26 north-east)
    (CONNECTED p15 p25 east)
    (CONNECTED p15 p24 south-east)
    (CONNECTED p16 p27 north-east)
    (CONNECTED p16 p26 east)
    (CONNECTED p16 p25 south-east)
    (CONNECTED p17 p27 east)
    (CONNECTED p17 p26 south-east)
    (CONNECTED p21 p32 north-east)
    (CONNECTED p21 p31 east)
    (CONNECTED p22 p33 north-east)
    (CONNECTED p22 p32 east)
    (CONNECTED p22 p31 south-east)
    (CONNECTED p23 p34 north-east)
    (CONNECTED p23 p33 east)
    (CONNECTED p23 p32 south-east)
    (CONNECTED p24 p35 north-east)
    (CONNECTED p24 p34 east)
    (CONNECTED p24 p33 south-east)
    (CONNECTED p25 p36 north-east)
    (CONNECTED p25 p35 east)
    (CONNECTED p25 p34 south-east)
    (CONNECTED p26 p37 north-east)
    (CONNECTED p26 p36 east)
    (CONNECTED p26 p35 south-east)
    (CONNECTED p27 p37 east)
    (CONNECTED p27 p36 south-east)
    (CONNECTED p31 p12 north-east)
    (CONNECTED p31 p11 east)
    (CONNECTED p32 p13 north-east)
    (CONNECTED p32 p12 east)
    (CONNECTED p32 p11 south-east)
    (CONNECTED p33 p14 north-east)
    (CONNECTED p33 p13 east)
    (CONNECTED p33 p12 south-east)
    (CONNECTED p34 p15 north-east)
    (CONNECTED p34 p14 east)
    (CONNECTED p34 p13 south-east)
    (CONNECTED p35 p16 north-east)
    (CONNECTED p35 p15 east)
    (CONNECTED p35 p14 south-east)
    (CONNECTED p36 p17 north-east)
    (CONNECTED p36 p16 east)
    (CONNECTED p36 p15 south-east)
    (CONNECTED p37 p17 east)
    (CONNECTED p37 p16 south-east)
    (is-focal-point p14)
    (is-target p12)
    (is-target p13)
    (is-target p14)
    (is-target p17)
    (is-target p25)
    (is-target p26)
    (is-target p31)
    (is-target p32)
    (is-target p33)
    (is-target p34)
    (is-target p35)
    (is-target p36)
    (is-target p37)
  )
  (:goal (and
    (not (is-target p12))
    (not (is-target p13))
    (not (is-target p14))
    (not (is-target p17))
    (not (is-target p25))
    (not (is-target p26))
    (not (is-target p31))
    (not (is-target p32))
    (not (is-target p33))
    (not (is-target p34))
    (not (is-target p35))
    (not (is-target p36))
    (not (is-target p37))
  ))
  
)