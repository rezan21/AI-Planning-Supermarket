(define (domain simple-supermarket)
(:requirements :strips :typing :numeric-fluents :durative-actions :conditional-effects)
(:types
  location agent item- object

)
(:predicates
(at ?o - object ?l - location)
(notat ?a - agent ?l - location)
(agentfree ?a - agent)
(agentnotfree ?a - agent)
(agentfull ?a - agent)
(agentnotfull ?a -agent)
(on ?i - item ?a - agent)
(noton ?i - item ?a - agent)


)

(:functions
(capacity ?a - agent)
(itemsholding ?a agent)

)

(:durative-action load
:parameters (?i - item ?a - agent ?l - location)
:duration (= ?duration 5)
:condition(
(and(over all(at ?i ?l))(at start(i)))
)
)
)
