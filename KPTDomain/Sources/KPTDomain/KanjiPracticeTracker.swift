import Foundation

class KanjiPracticeTracker {
    var nextKanji: String? { cache.first?.kanji.first }

    private var cache: [Session] = []

    func addSession(_ session: Session) {
        cache += [session]
    }
}
