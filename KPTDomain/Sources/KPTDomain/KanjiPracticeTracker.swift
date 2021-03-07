import Foundation

class KanjiPracticeTracker {
    var nextKanji: String? { cache.first?.nextKanji }

    private var cache: [Session] = []

    func addKanji(_ kanji: [String]) {
        cache += [Session(date: Date(), kanji: kanji)]
    }

    func markKanjiComplete() {
        cache.first?.markKanjiComplete()
    }
}
