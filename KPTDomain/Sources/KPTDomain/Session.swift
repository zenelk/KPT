import Foundation

class Session {
    private var currentCompletedIndex = 0

    private let date: Date
    private let kanji: [String]

    var nextKanji: String? {
         kanji.count > currentCompletedIndex
            ? kanji[currentCompletedIndex]
            : nil
    }

    init(date: Date, kanji: [String]) {
        self.date = date
        self.kanji = kanji
    }

    func markKanjiComplete() {
        currentCompletedIndex += 1
    }
}
