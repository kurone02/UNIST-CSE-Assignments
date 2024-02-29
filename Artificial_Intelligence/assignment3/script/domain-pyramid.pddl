;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PyramidWorld - the solitaire game playing domain
;;;
;;; See http://en.wikipedia.org/wiki/Pyramid_solitaire for more detail about the game
;;; This version of Pyramid is based on the rules in Microsoft Solitaire Collection:
;;; - You can match any uncovered card including the top cards on the deck and
;;;   waste pile. You can even match the deck and waste pile cards together.
;;; - A player can remove the King card directly without matching any other card.
;;; - A player can cycle through the deck 3 times only. If a player cannot finish
;;;   the game before the end of the third cycle through the deck, the player loses the game.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Author: Nguyen Minh Duc
; Student ID: 20202026
; EMail: ducnm@unist.ac.kr


(define (domain pyramid)

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;; TODO: Please define the predicates, the actions, etc. ;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (:requirements 
        :typing :derived-predicates :negative-preconditions :disjunctive-preconditions :conditional-effects
        :strips :quantified-preconditions :conditional-effects
    ) 

    (:types INT CARD - object)

    (:predicates
        ; (sum-int-13 ?x - INT ?y - INT)

        (in-deck ?x - CARD)
        (in-waste ?x - CARD)
        (in-pyramid ?x - CARD)
        (matched ?x - CARD)
        (available ?x - CARD)

        (king ?x - CARD)

        (top-deck ?x - CARD)
        (top-waste ?x - CARD)

        ; (value ?x - CARD ?y - INT)
        (covers ?x - CARD ?y - CARD)
        (sum-card-13 ?x - CARD ?y - CARD)

        (empty-deck)
        (empty-waste)
        (empty-pyramid)

        (in-cycle1)
        (in-cycle2)
        (in-cycle3)

    )

    (:derived (top-deck ?x) (and
        (in-deck ?x) 
        (available ?x)
    ))

    (:derived (top-waste ?x) (and
        (in-waste ?x) 
        (available ?x)
    ))

    (:derived (available ?x - CARD) (and
        (forall (?y - CARD) (not (covers ?y ?x)))
        (not (matched ?x))
    ))

    ; (:derived (sum-card-13 ?x - CARD ?y - CARD) (
    ;     exists (?x_val - INT ?y_val - INT) (and
    ;         (value ?x ?x_val)
    ;         (value ?y ?y_val)
    ;         (sum-int-13 ?x_val ?y_val)
    ;     )
    ; ))

    (:derived (empty-deck) (
        forall (?x - CARD) (not (in-deck ?x))
    ))

    (:derived (empty-waste) (
        forall (?x - CARD) (not (in-waste ?x))
    ))

    (:derived (empty-pyramid) (
        forall (?x - CARD) (not (in-pyramid ?x))
    ))

    (:action match-king
        :parameters (?x - CARD)
        :precondition (and 
            (king ?x)
            (available ?x)
        )
        :effect (and 
            (matched ?x)

            (forall (?z) (not (covers ?x ?z)))

            (not (in-deck ?x))
            (not (in-waste ?x))
            (not (in-pyramid ?x))
        )
    )

    (:action match
        :parameters (?x - CARD ?y - CARD)
        :precondition (and 
            (sum-card-13 ?x ?y)
            (available ?x)
            (available ?y)
        )
        :effect (and 
            (matched ?x)
            (matched ?y)

            (forall (?z - CARD) (and
                (not (covers ?x ?z))
                (not (covers ?y ?z))
            ))

            (not (in-deck ?x))
            (not (in-waste ?x))
            (not (in-pyramid ?x))

            (not (in-deck ?y))
            (not (in-waste ?y))
            (not (in-pyramid ?y))
        )
    )

    (:action deck-cycle
        :parameters ()
        :precondition (and 
            (not (in-cycle3))
            (empty-deck)
            (not (empty-waste))
        )
        :effect (and 
            (when (not (in-cycle2)) (in-cycle2))
            (when (in-cycle2) (in-cycle3))

            (forall (?x - CARD ?y - CARD) (when (and (in-waste ?x) (in-waste ?y) (covers ?x ?y)) (and
                (not (covers ?x ?y))
                (covers ?y ?x)
            )))

            (forall (?x - CARD) (when (in-waste ?x) (and 
                (not (in-waste ?x))
                (in-deck ?x)
            )))
        )
    )

    (:action first-draw
        :parameters (?x - CARD)
        :precondition (and
            (top-deck ?x)
            (empty-waste)
        )
        :effect (and 
            (forall (?z - CARD) (and
                (not (covers ?x ?z))
            ))

            (not (in-deck ?x))
            (in-waste ?x)
        )
    )

    (:action draw
        :parameters (?x - CARD ?y - CARD)
        :precondition (and
            (top-deck ?x)
            (top-waste ?y)
        )
        :effect (and 
            (forall (?z - CARD) (and
                (not (covers ?x ?z))
            ))

            (covers ?x ?y)

            (not (in-deck ?x))
            (in-waste ?x)
        )
    )
    
    
    
)
