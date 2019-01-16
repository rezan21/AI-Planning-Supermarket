(define (domain simple-supermarket)
(:requirements :strips :typing :numeric-fluents :durative-actions :conditional-effects)
(:types
  location agent item - object

)

(:functions
(numberofcarrings ?a - agent)
(capacity ?a - agent)
)
(:predicates
(at ?o - object ?l - location)
;(notat ?a - agent ?l - location)
;(agentfree ?a - agent)
;(agentnotfree ?a - agent)
;(agentfull ?a - agent)
;(agentnotfull ?a -agent)
(on ?i - item ?a - agent)
;(noton ?i - item ?a - agent)
(haspath ?from - location ?to - location)

)

(:durative-action pick
:parameters (?i - item ?a - agent ?l - location)
:duration (= ?duration 2)
:condition(and
(over all(at ?a ?l))
(at start(at ?i ?l))
(at start(< (numberofcarrings ?a)(capacity ?a)))
)

:effect(and (at start(not (at ?i ?l))) (at end(on ?i ?a)) (at start(increase (numberofcarrings ?a) 1))  )
)

(:durative-action drop
:parameters (?i - item ?a - agent ?l - location)
:duration (= ?duration 2)
:condition(and(over all(at ?a ?l)) (at start(on ?i ?a))
)
:effect(and (at start(not (on ?i ?a))) (at end(at ?i ?l)) (at end(decrease (numberofcarrings) 1)))
)

(:durative-action move
:parameters (?a - agent ?from - location ?to - location)
:duration(= ?duration 10)
:condition(and (at start(at ?a ?from))(over all(haspath ?from ?to)))
:effect(and(at start(not(at ?a ?from)) )(at end(at ?a ?to)) )

)

(:durative-action



)
















)
