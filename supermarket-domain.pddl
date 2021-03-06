(define (domain simple-supermarket)
(:requirements :strips :typing :numeric-fluents :durative-actions :conditional-effects)
(:types
  car location agent item - object
)

(:functions
  (numberofcarrings ?a - agent)
  (capacity ?a - agent)
  (distancetime ?from - location ?to - location)
)

(:predicates
  (at ?o - object ?l - location)
  (on ?i - item ?a - agent)
  (hasagent ?c - car)
  (hasnotagent ?c - car)
  (haspath ?from - location ?to - location)
  (oncar ?a - agent ?c - car)
  (busy ?a - agent)
  (notbusy ?a - agent)
)

(:durative-action pick
:parameters (?i - item ?a - agent ?l - location)
:duration (= ?duration 2)
:condition(and
(at start(notbusy ?a))
(over all(at ?a ?l) )
(at start(at ?i ?l) )
(at start(< (numberofcarrings ?a)(capacity ?a)) )
)
:effect(and
(at start(busy ?a))
(at start(not(notbusy ?a)))
(at start(increase (numberofcarrings ?a) 1) )
(at start(not (at ?i ?l)) )
(at end(on ?i ?a) )
(at end(notbusy ?a))
(at end(not(busy ?a)))
)

)

(:durative-action drop
:parameters (?i - item ?a - agent ?l - location)
:duration (= ?duration 2)
:condition(and
(at start(notbusy ?a))
(over all(at ?a ?l) )
(at start(on ?i ?a) )
)
:effect(and
(at start(busy ?a))
(at start(not(notbusy ?a)))
(at start(decrease (numberofcarrings ?a) 1)  )
(at start(not (on ?i ?a)) )
(at end(at ?i ?l))
(at end(notbusy ?a))
(at end(not(busy ?a)))
)

)

(:durative-action movecar
:parameters (?c - car ?from - location ?to - location)
:duration(= ?duration (distancetime ?from ?to))
:condition(and
(at start(at ?c ?from))
(over all(haspath ?from ?to))
(over all(hasagent ?c))

)
:effect(and
(at start(not(at ?c ?from)) )
(at end(at ?c ?to))
)
)

(:durative-action walk
:parameters (?a - agent ?from - location ?to - location)
:duration(= ?duration (* 3 (distancetime ?from ?to)))
:condition(and
(at start(at ?a ?from))

)
:effect(and
(at start(not(at ?a ?from)) )
(at end(at ?a ?to))
)
)

(:durative-action getoncar
:parameters (?a - agent ?c - car ?l - location)
:duration(= ?duration 5)
:condition(and
;hasnotagent over all or at start
(over all(hasnotagent ?c))
(at start(at ?a ?l))
(over all(at ?c ?l))
)
:effect(and
(at start(not(at ?a ?l)) )
(at end(hasagent ?c))
(at end(not(hasnotagent ?c)))
(at end(oncar ?a ?c))
)
)

(:durative-action getoffcar
:parameters (?a - agent ?c - car ?l - location)
:duration(= ?duration 5)
:condition(and
(at start(oncar ?a ?c))
(over all(at ?c ?l))
)
:effect(and
(at end(at ?a ?l) )
(at end(hasnotagent ?c))
(at end(not(hasagent ?c)))
(at end(not(oncar ?a ?c)))
)
)















;last closing bracket
)
