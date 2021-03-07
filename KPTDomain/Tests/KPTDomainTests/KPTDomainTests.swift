import XCTest

@testable import KPTDomain

final class KPTDomainTests: XCTestCase {
    private enum Constant {
        enum KanjiExample {
            static let one = "一"
            static let two = "二"
        }
    }

    private let tracker = KanjiPracticeTracker()

    func test_givenNewTracker_thenNextKanjiIsNil() {
        XCTAssertNil(tracker.nextKanji)
    }

    func test_givenOneKanji_whenSessionAdded_thenNextKanjiIsFirstKanjiOfSession() {
        tracker.addKanji([Constant.KanjiExample.one])

        XCTAssertEqual(tracker.nextKanji, Constant.KanjiExample.one)
    }

    func test_givenOneKanji_whenKanjiMarkedComplete_thenNextKanjiIsNil() {
        tracker.addKanji([Constant.KanjiExample.one])

        tracker.markKanjiComplete()

        XCTAssertNil(tracker.nextKanji)
    }

    func test_givenTwoKanji_whenKanjiMarkedComplete_thenNextKanjiIsSecondKanji() {
        tracker.addKanji([Constant.KanjiExample.one, Constant.KanjiExample.two])

        tracker.markKanjiComplete()

        XCTAssertEqual(tracker.nextKanji, Constant.KanjiExample.two)
    }
}
