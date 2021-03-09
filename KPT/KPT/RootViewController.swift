import Cocoa
import KPTDomain

class RootViewController: NSViewController {
    var tracker: KanjiPracticeTracker!

    @IBOutlet private weak var kanjiView: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        tracker.addKanji("１２３４５")

        updateCurrentKanji()
    }

    private func updateCurrentKanji() {
        let nextValue: String
        if let nextKanji = tracker.nextKanji {
            nextValue = String(nextKanji)
        } else {
            nextValue = ""
        }
        kanjiView.stringValue = nextValue
    }
}

extension RootViewController {
    @IBAction private func onStrokeOrderClicked(_ sender: NSButton) { }

    @IBAction private func onReadingsClicked(_ sender: NSButton) { }

    @IBAction private func onReAddToQueueClicked(_ sender: NSButton) { }

    @IBAction private func onMarkCompletedClicked(_ sender: NSButton) { }

    @IBAction private func addEntryClicked(_ sender: NSButton) { }

    @IBAction private func onUseHandwritingFontToggled(_ sender: NSButton) { }
}
