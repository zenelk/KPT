import Cocoa
import KPTDomain

class RootViewController: NSViewController {
    var tracker: KanjiPracticeTracker!

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @IBOutlet private weak var kanjiView: NSTextField!

    @IBAction private func onStrokeOrderClicked(_ sender: NSButton) {
    }

    @IBAction private func onReadingsClicked(_ sender: NSButton) {
    }

    @IBAction private func onReAddToQueueClicked(_ sender: NSButton) {
    }

    @IBAction private func onMarkCompletedClicked(_ sender: NSButton) {
    }

    @IBAction private func addEntryClicked(_ sender: NSButton) {
    }
}
