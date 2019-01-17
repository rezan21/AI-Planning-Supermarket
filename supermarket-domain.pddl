(define (domain simple-supermarket)
(:requirements :strips :typing :numeric-fluents :durative-actions :conditional-effects)
(:types
  car location agent item - object
)

(:functions
  (numberofcarrings ?a - agent)
  (capacity ?a - agent)
)

(:predicates
  (at ?o - object ?l - location)
  (on ?i - item ?a - agent)
  (agentoncar ?a ?c )
  (hasagent ?c - car)
  (hasnotagent ?c - car)
  (haspath ?from - location ?to - location)
)

(:durative-action pick
:parameters (?i - item ?a - agent ?l - location)
:duration (= ?duration 2)
:condition(and
(over all(at ?a ?l) )
(at start(at ?i ?l) )
(at start(< (numberofcarrings ?a)(capacity ?a)) )
)
:effect(and
(at start(increase (numberofcarrings ?a) 1) )
(at start(not (at ?i ?l)) )
(at end(on ?i ?a) )
)

)

(:durative-action drop
:parameters (?i - item ?a - agent ?l - location)
:duration (= ?duration 2)
:condition(and
(over all(at ?a ?l) )
(at start(on ?i ?a) )
)
:effect(and
(at start(decrease (numberofcarrings) 1)  )
(at start(not (on ?i ?a)) )
(at end(at ?i ?l))
)

)

(:durative-action move
:parameters (?c - car ?from - location ?to - location)
:duration(= ?duration 10)
:condition(and
(at start(at ?c ?from))
(over all(haspath ?from ?to))
(over all(hasagent ?c))
)
:effect(and
(at start(not(at ?c ?from)) )
(at end(at ?c ?to))
)

(:durative-action getoncar
:parameters (?a - agent ?c - car ?l - location)
:duration(= ?duration 5)
:condition(and
;at start has no driver or over all?
(at start((hasnotagent ?c))  )
(at start(at ?a ?l))
(over all(at ?c ?l))

)
:effect(and
(at start(not(at ?a ?l)) )
(at end(agentoncar ?a ?c))
(at end(hasagent ?c))
(at end(not(hasnotagent ?c)))
)

)

(:durative-action getoffcar
:parameters (?a - agent ?c - car ?l - location)
:duration(= ?duration 5)
:condition(and
(at start(agentoncar ?a ?c))
(over all(at ?c ?l))

)
:effect(and
(at start(not(hasagent? c)) )
(at start(hasnotagent ?c))
(at start(not(agentoncar ?a ?c)))
(at end(at ?a ?l))
)

)














;last closing bracket
)
