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

; Author: Truong Huy Trung
; Student ID: 20192028
; EMail: truonghuytrung@unist.ac.kr


(define (domain pyramid)
  (:requirements :adl :derived-predicates)
  (:types
    CARD
    VAL
  )

  (:constants
    n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 - VAL
  )

  (:predicates
    (sum-equal-13 ?x ?y - VAL)
    (free ?x - CARD)
    (inDeck ?x - CARD)
    (inWaste ?x - CARD)
    (inPyramid ?x - CARD)
    (topDeck ?x - CARD)
    (discarded ?x - CARD)
    (thisCoversthat ?x ?y - CARD)
    (valOf ?x - CARD ?y - VAL)
    (wasteEmpty)
    (deckEmpty)
    (cycle1)
    (cycle2)
    (cycle3)
  )

  (:derived (free ?x - CARD)
    (and
      (or
        (inDeck ?x)
        (inPyramid ?x)
        (inWaste ?x)
      )
      (forall (?c - CARD) (not (thisCoversthat ?c ?x)))
    )
  )

  (:derived (topDeck ?x - CARD)
    (and
      (inDeck ?x)
      (forall (?c - CARD) (not (thisCoversThat ?c ?x)))
    )
  )

  (:derived (wasteEmpty)
    (forall (?c - CARD) (not (inWaste ?c)))
  )

  (:derived (deckEmpty)
    (forall (?c - CARD) (not (inDeck ?c)))
  )

  (:action match
    :parameters (?x ?y - CARD ?a ?b - VAL)
    :precondition (and
        ; the first card is free (not covered)
        (free ?x)
        ; the second card is free 
        (free ?y)
        ; their sum is 13
        (valOf ?x ?a)
        (valOf ?y ?b)
        (sum-equal-13 ?a ?b)
    )
    :effect (and
        ; all the cards covered by the card is no longer covered
        (forall (?c - CARD) 
          (and
            (not (thisCoversthat ?x ?c))
            (not (thisCoversthat ?y ?c))
          ) 
        )
        (discarded ?x)
        (discarded ?y)
        ; if the cards are from deck
        (not (inDeck ?x))
        (not (inDeck ?y))
        ; if the cards are from waste pil
        (not (inWaste ?x)) 
        (not (inWaste ?y))
        ; if the cards are from pyramid
        (not (inPyramid ?x))
        (not (inPyramid ?y))
    )
  ) 

  (:action removeKing
    :parameters (?x - CARD)
    :precondition (and 
      (free ?x)
      (valOf ?x n13)
    )
    :effect (and 
        ; all the cards covered by the card is no longer covered
        (forall (?c - CARD ) (not (thisCoversthat ?x ?c)))
        (discarded ?x)
        (not (inDeck ?x))
        (not (inWaste ?x))
        (not (inPyramid ?x))
    )
  )

  (:action draw
    :parameters (?x - CARD)
    :precondition (and 
      (topDeck ?x)
    )
    :effect (and 
      ;the next card in deck, which is previously covered by the card being drawn, is no longer covered. 
      (forall (?c - CARD) (when (inDeck ?c) (not (thisCoversthat ?x ?c))))
      ;after the top deck card is drawn, all the remaining card in waste pile is covered by this card.
      (forall (?c - CARD) (when (and (inWaste ?c) (free ?c)) (thisCoversthat ?x ?c)))
      ;when the top card of the deck is drawn, it moves to the waste pile and leave the deck
      (not (inDeck ?x))
      (inWaste ?x)
    )
  )

  (:action cycle
      :parameters ()
      :precondition (and
        ; there doesn't exist a card that is currently in the deck (deck empty)
        (deckEmpty)
        ; not cycled 2 times already 
        (not (cycle3))
        ; but there are cards in the waste (game not done)
        (not (wasteEmpty))
      )
      :effect (and
        (forall (?x - CARD ?y - CARD)
          (when 
            ; before
            (and    
              (thisCoversThat ?x ?y) 
              (inWaste ?x)
              (inWaste ?y)
            )
            ; after
            (and
              ; since x covers y in waste, now y covers x in deck
              (not (thisCoversthat ?x ?y))
              (thisCoversthat ?y ?x)
            ) 
          ) 
        )
        ; set their status from waste pile to deck 
        (forall (?c - CARD) (when (inWaste ?c) (and (inDeck ?c) (not (inWaste ?c)))))
        ; increase the number of cycles by 1
        (when (cycle1) (cycle2))
        (when (cycle2) (cycle3))
      )
  )

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; TODO: Please define the predicates, the actions, etc. ;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

)
