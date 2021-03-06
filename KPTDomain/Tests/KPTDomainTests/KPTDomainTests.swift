import XCTest

@testable import KPTDomain

final class KPTDomainTests: XCTestCase {
    private enum Constant {
        static let goodKanji = "良"
    }

    static var all = [
        (
            "test_givenNewTracker_whenSessionAdded_thenNextKanjiIsFirstKanjiOfSession",
            test_givenNewTracker_whenSessionAdded_thenNextKanjiIsFirstKanjiOfSession
        ),
        (
            "test_givenNewTracker_thenNextKanjiIsNil",
            test_givenNewTracker_thenNextKanjiIsNil
        )
    ]

    private let tracker = KanjiPracticeTracker()

    func test_givenNewTracker_whenSessionAdded_thenNextKanjiIsFirstKanjiOfSession() {
        tracker.addSession(Session(date: Date(), kanji: [Constant.goodKanji]))

        XCTAssertEqual(tracker.nextKanji, Constant.goodKanji)
    }

    func test_givenNewTracker_thenNextKanjiIsNil() {
        XCTAssertNil(tracker.nextKanji)
    }
}
