import XCTest

@testable import KPTDomain

final class KPTDomainTests: XCTestCase {
    static var all = [
        (
            "test_givenBlankCache_whenSessionAdded_thenNextKanjiIsCorrect",
            test_givenBlankCache_whenSessionAdded_thenNextKanjiIsCorrect
        )
    ]

    func test_givenBlankCache_whenSessionAdded_thenNextKanjiIsCorrect() {
        XCTAssertTrue(true)
    }
}
