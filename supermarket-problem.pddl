(define (problem simpleProblem)
(:domain simple-supermarket)
(:objects
x1 x2 x3 x0 - location
a1  - agent
i1 i2 i3 i4 i5 i6 i7 i8 i9 - item

)
(:init

(at a1 x0)

(at i1 x1)
(at i2 x1)
(at i3 x1)
(at i4 x2)
(at i5 x2)
(at i6 x2)
(at i7 x3)
(at i8 x3)
(at i9 x3)

(haspath x0 x1)
(haspath x1 x0)
(haspath x0 x2)
(haspath x2 x0)
(haspath x0 x3)
(haspath x3 x0)
(haspath x1 x2)
(haspath x2 x3)
(haspath x2 x1)
(haspath x3 x2)

)
(:goal
(and
(at i1 x0)
(at i2 x0)
(at i3 x0)
(at i4 x0)
(at i5 x0)
(at i6 x0)
(at i7 x0)
(at i8 x0)
(at i9 x0)


)
)
)
