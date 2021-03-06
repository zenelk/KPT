import XCTest

@testable import KPTDomain

final class KPTDomainTests: XCTestCase {
    private enum Constant {
        static let goodKanji = "良"
    }

    static var all = [
        (
            "test_givenNewTracker_whenSessionAdded_thenNextKanjiIsCorrect",
            test_givenNewTracker_whenSessionAdded_thenNextKanjiIsCorrect
        )
    ]

    func test_givenNewTracker_whenSessionAdded_thenNextKanjiIsCorrect() {
        let tracker = KanjiPracticeTracker()

        tracker.addSession(Session(date: Date(), kanji: [Constant.goodKanji]))

        XCTAssertEqual(tracker.nextKanji, Constant.goodKanji)
    }
}
