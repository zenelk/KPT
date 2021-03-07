import Foundation

public class KanjiPracticeTracker {
    public var nextKanji: Character? { nextIncompleteSession?.nextKanji }

    private var nextIncompleteSession: Session? { cache.first { !$0.complete } }
    private var cache: [Session] = []

    public init() { }

    public func addKanji(_ kanji: String) {
        cache += [Session(date: Date(), kanji: kanji)]
    }

    public func markKanjiComplete() {
        nextIncompleteSession?.markKanjiComplete()
    }
}
