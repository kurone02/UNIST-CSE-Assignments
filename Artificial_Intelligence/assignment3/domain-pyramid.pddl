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
        :quantified-preconditions :conditional-effects
    ) 

    (:types INT CARD - object)

    (:predicates
        ; (sum-int-13 ?x - INT ?y - INT)

        (in-deck ?x - CARD)
        (in-waste ?x - CARD)
        (in-pyramid ?x - CARD)
        (covered ?x - CARD)
        (matched ?x - CARD)

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
        (not (covered ?x))
    ))

    (:derived (top-waste ?x) (and
        (in-waste ?x) 
        (not (covered ?x))
    ))

    (:derived (covered ?x - CARD) (
        exists (?y - CARD) (
            covers ?y ?x
        )
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
            (not (covered ?x))
            (not (matched ?x))
        )
        :effect (and 
            (matched ?x)

            (forall (?z) (when (covers ?x ?z) (not (covers ?x ?z))))

            (not (in-deck ?x))
            (not (in-waste ?x))
            (not (in-pyramid ?x))
        )
    )

    (:action match
        :parameters (?x - CARD ?y - CARD)
        :precondition (and 
            (sum-card-13 ?x ?y)
            (not (covered ?x))
            (not (covered ?y))
            (not (matched ?x))
            (not (matched ?y))
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
                (not (in-waste ?x))
                (in-deck ?x)
                (not (in-waste ?y))
                (in-deck ?y)
            )))
        )
    )

    (:action draw
        :parameters ()
        :precondition ()
        :effect (and 
            (forall (?x - CARD ?y - CARD) (when (and (top-deck ?x) (in-deck ?y) (covers ?x ?y)) (and
                (not (covers ?x ?y))
            )))

            (forall (?x - CARD ?y - CARD) (when (and (top-deck ?x) (top-waste ?y)) (and
                (covers ?x ?y)
            )))

            (forall (?x - CARD) (when (and (top-deck ?x)) (and
                (not (in-deck ?x))
                (in-waste ?x)
            )))
        )
    )
    
    
    
)
