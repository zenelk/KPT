extension KPTDomainTests {
    static var allTests = [
        (
            "test_givenNewTracker_thenNextKanjiIsNil",
            test_givenNewTracker_thenNextKanjiIsNil
        ),
        (
            "test_givenOneKanji_whenSessionAdded_thenNextKanjiIsFirstKanjiOfSession",
            test_givenOneKanji_whenSessionAdded_thenNextKanjiIsFirstKanjiOfSession
        ),
        (
            "test_givenOneKanji_whenKanjiMarkedComplete_thenNextKanjiIsNil",
            test_givenOneKanji_whenKanjiMarkedComplete_thenNextKanjiIsNil
        ),
        (
            "test_givenTwoKanji_whenKanjiMarkedComplete_thenNextKanjiIsSecondKanji",
            test_givenTwoKanji_whenKanjiMarkedComplete_thenNextKanjiIsSecondKanji
        ),
        (
            "test_givenTwoEntries_whenKanjiMarkedComplete_thenNextKanjiIsKanjiOfSecondEntry",
            test_givenTwoEntries_whenKanjiMarkedComplete_thenNextKanjiIsKanjiOfSecondEntry
        )
    ]
}
