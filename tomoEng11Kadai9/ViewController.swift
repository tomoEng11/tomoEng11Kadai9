//
//  ViewController.swift
//  tomoEng11Kadai9
//
//  Created by 井本智博 on 2024/01/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var prefectureLabel: UILabel!
    private var selectedPrefecture: String = "未選択"

    @IBAction private func buttonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SelectPrefecture", bundle: nil)
        let selectPrefectureVC = storyboard.instantiateViewController(withIdentifier: "selectPrefecture") as! SelectPrefecutureViewController
        selectPrefectureVC.delegate = self
        selectPrefectureVC.modalPresentationStyle = .fullScreen
        present(selectPrefectureVC, animated: true)
    }
}

extension ViewController: SelectPrefectureViewControllerDelegate {
    func didSelectPrefecture(name: String) {
        selectedPrefecture = name
        prefectureLabel.text = selectedPrefecture
    }
}
