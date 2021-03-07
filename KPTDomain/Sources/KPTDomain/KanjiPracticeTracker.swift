import Foundation

class KanjiPracticeTracker {
    var nextKanji: String? { nextIncompleteSession?.nextKanji }

    private var nextIncompleteSession: Session? { cache.first { !$0.complete } }
    private var cache: [Session] = []

    func addKanji(_ kanji: [String]) {
        cache += [Session(date: Date(), kanji: kanji)]
    }

    func markKanjiComplete() {
        nextIncompleteSession?.markKanjiComplete()
    }
}
