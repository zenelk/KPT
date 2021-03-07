import Foundation

class Session {
    var complete: Bool { kanji.count <= currentCompletedIndex }

    private var currentCompletedIndex = 0

    private let date: Date
    private let kanji: String

    var nextKanji: Character? {
        complete
            ? nil
            : kanji[kanji.index(kanji.startIndex, offsetBy: currentCompletedIndex)]
    }

    init(date: Date, kanji: String) {
        self.date = date
        self.kanji = kanji
    }

    func markKanjiComplete() {
        currentCompletedIndex += 1
    }
}
