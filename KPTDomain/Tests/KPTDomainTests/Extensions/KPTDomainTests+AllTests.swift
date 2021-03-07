extension KPTDomainTests {
    static var allTests = [
        (
            "test_givenNewTracker_thenNextKanjiIsNil",
            test_givenNewTracker_thenNextKanjiIsNil
        ),
        (
            "test_givenSessionWithOneKanji_whenSessionAdded_thenNextKanjiIsFirstKanjiOfSession",
            test_givenSessionWithOneKanji_whenSessionAdded_thenNextKanjiIsFirstKanjiOfSession
        ),
        (
            "test_givenSessionWithOneKanji_whenKanjiMarkedComplete_thenNextKanjiIsNil",
            test_givenSessionWithOneKanji_whenKanjiMarkedComplete_thenNextKanjiIsNil
        ),
        (
            "test_givenSessionWithTwoKanji_whenKanjiMarkedComplete_thenNextKanjiIsSecondKanji",
            test_givenSessionWithTwoKanji_whenKanjiMarkedComplete_thenNextKanjiIsSecondKanji
        )
    ]
}
