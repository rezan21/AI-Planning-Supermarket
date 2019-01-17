(define (problem simpleProblem)
(:domain simple-supermarket)
(:objects
x0 x1 x2 x3  - location
a1  - agent
i1 - item
c1 - car

)
(:init

(at a1 x0)
(at c1 x0)
(at i1 x1)


(haspath x0 x1)
(haspath x1 x0)

(= (numberofcarrings a1) 0)
(= (capacity a1) 3)

)

(:goal
(and
(at i1 x0)
)
)




)
