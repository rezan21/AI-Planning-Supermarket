(define (problem simpleProblem)
(:domain simple-supermarket)
(:objects
x1 x2 x3 - location
a1  - agent
i1 i2 - item

)
(:init

(at a1 x3)
(at i1 x1)
(haspath x1 x2)
(haspath x2 x3)
(haspath x2 x1)
(haspath x3 x2)

)
(:goal
(and
(at i1 x3)
)
)
)
