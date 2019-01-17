(define (problem simpleProblem)
(:domain simple-supermarket)
(:objects
x0 x1 - location
a1  - agent
i1 i2 i3 i4 i5 i6 i7 i8 i9 - item
c1 - car

)
(:init

(at a1 x0)
(at c1 x0)
(at i1 x1)
(at i2 x1)
(at i3 x1)
(at i4 x1)
(at i5 x1)
(at i6 x1)
(at i7 x1)
(at i8 x1)
(at i9 x1)

(hasnotagent c1)
(haspath x0 x1)
(haspath x1 x0)

(= (numberofcarrings a1) 0)
(= (capacity a1) 3)

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
