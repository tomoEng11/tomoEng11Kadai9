//
//  ViewController.swift
//  tomoEng11Kadai9
//
//  Created by 井本智博 on 2024/01/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var prefectureLabel: UILabel!
    private let delegate = UIApplication.shared.delegate as! AppDelegate

    @IBAction private func buttonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SelectPrefecture", bundle: nil)
        let selectPrefectureVC = storyboard.instantiateViewController(withIdentifier: "selectPrefecture")
        selectPrefectureVC.modalPresentationStyle = .fullScreen
        self.present(selectPrefectureVC,animated: true)
    }

    override func viewWillAppear(_ animated: Bool) {
        prefectureLabel.text = delegate.selectedPrefecture
    }
}
