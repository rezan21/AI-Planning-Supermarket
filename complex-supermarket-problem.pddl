(define (problem complexProblem)
(:domain simple-supermarket)
(:objects
x1 x2 x3 x4 x5 x6 x7 - location
a1 a2 a3 a4 a5 a6 a7 - agent
i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 i12 i13 i14 i15 i16 i17 - item
c1 - car
c2 - car
c3 - car





)
(:init

(at a1 x1)
(at a2 x1)
(at a3 x4)
(at a4 x5)
(at a5 x7)
(at a6 x6)
(at a7 x6)

(at c1 x1)
(at c2 x1)
(at c3 x3)


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
(at i13 x3)
(at i14 x4)
(at i15 x5)
(at i16 x6)
(at i17 x7)


(hasnotagent c1)
(hasnotagent c2)
(hasnotagent c3)
(notbusy a1)
(notbusy a2)
(notbusy a3)
(notbusy a4)
(notbusy a5)
(notbusy a6)
(notbusy a7)

(haspath x1 x2)
(haspath x2 x1)
(haspath x2 x3)
(haspath x3 x2)
(haspath x1 x7)
(haspath x7 x1)

(= (numberofcarrings a1) 0)
(= (capacity a1) 4)

(= (numberofcarrings a2) 0)
(= (capacity a2) 4)

(= (numberofcarrings a3) 1)
(= (capacity a2) 3)

(= (numberofcarrings a4) 0)
(= (capacity a2) 4)

(= (numberofcarrings a5) 2)
(= (capacity a2) 10)

(= (numberofcarrings a6) 0)
(= (capacity a2) 1)

(= (numberofcarrings a7) 0)
(= (capacity a2) 3)



(= (distancetime x1 x2) 20)
(= (distancetime x2 x1) 20)

(= (distancetime x2 x3) 20)
(= (distancetime x3 x2) 20)

(= (distancetime x3 x4) 20)
(= (distancetime x3 x3) 20)


(= (distancetime x4 x5) 20)
(= (distancetime x5 x4) 20)

(= (distancetime x5 x6) 20)
(= (distancetime x6 x5) 20)

(= (distancetime x6 x7) 20)
(= (distancetime x7 x6) 20)



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
(at i13 x1)
(at i14 x1)
(at i15 x1)
(at i16 x1)
(at i17 x1)


)
)




)
