(define (problem simpleProblem)
(:domain simple-supermarket)
(:objects
x3 x1 x2 - location
a1 - agent
a2 - agent
i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 i12 - item
c1 - car





)
(:init

(at a1 x1)
(at a2 x1)

(at c1 x1)



(at i1 x3)
(at i2 x3)
(at i3 x3)
(at i4 x3)
(at i5 x3)
(at i6 x3)
(at i7 x2)
(at i8 x2)
(at i9 x2)
(at i10 x2)
(at i11 x2)
(at i12 x2)



(hasnotagent c1)
(notbusy a1)
(notbusy a2)

(haspath x1 x2)
(haspath x2 x1)
(haspath x2 x3)
(haspath x3 x2)


(= (numberofcarrings a1) 0)
(= (capacity a1) 4)

(= (numberofcarrings a2) 0)
(= (capacity a2) 4)


(= (distancetime x1 x2) 20)
(= (distancetime x2 x1) 20)
(= (distancetime x2 x3) 20)
(= (distancetime x3 x2) 20)

)

(:goal
(and
(at i1 x1)
(at i2 x1)
(at i3 x1)
(at i4 x1)
(at i5 x1)
(at i6 x1)
(at i7 x1)
(at i8 x1)
(at i9 x1)
(at i10 x1)
(at i11 x1)
(at i12 x1)

)
)




)
