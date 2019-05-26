//
//  ViewController.swift
//  TestHapticFeedback
//
//  Created by tuyoshi tonobe on 2019/05/26.
//  Copyright © 2019 tuyoshi tonobe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var impactFeedbackButton: UIButton!
    @IBOutlet weak var selectFeedbackButton: UIButton!
    @IBOutlet weak var notificationFeedbackButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func impactFeedbackButtonTapped(_ sender: Any) {
        impactFeedbackOccurred(type: .heavy)
    }
    
    @IBAction func selectFeedbackButtonTapped(_ sender: Any) {
        selectFeedbackOccurred()
    }
    @IBAction func notificationFeedbackButtonTapped(_ sender: Any) {
        notificationFeedbackOccurred(status: .warning)
    }

    private func impactFeedbackOccurred(type: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: type)
        generator.prepare()
        generator.impactOccurred()
    }

    private func selectFeedbackOccurred() {
        let generator = UISelectionFeedbackGenerator()
        generator.prepare()
        generator.selectionChanged()
    }

    private func notificationFeedbackOccurred(status: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(status)
    }
}
