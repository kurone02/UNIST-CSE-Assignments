(define (problem problem-0)
    (:domain pyramid)
    (:objects
        D5 DK S2 DX - CARD
        HJ S8 C3 C5 - CARD
    )
    (:init
        (in-cycle1)

        (in-pyramid D5)
        (in-pyramid DK)
        (in-pyramid S2)
        (in-pyramid DX)

        (in-deck HJ)
        (in-deck S8)
        (in-deck C3)
        (in-deck C5)

        (sum-card-13 D5 S8)
        (king DK)
        (sum-card-13 S2 HJ)
        (sum-card-13 DX C3)
        (sum-card-13 HJ S2)
        (sum-card-13 S8 D5)
        (sum-card-13 S8 C5)
        (sum-card-13 C3 DX)
        (sum-card-13 C5 S8)

        (covers DX DK)
        (covers DK D5)
        (covers S2 D5)

        (covers HJ S8)
        (covers S8 C3)
        (covers C3 C5)
    )
    (:goal
        (empty-pyramid)
    )
)
