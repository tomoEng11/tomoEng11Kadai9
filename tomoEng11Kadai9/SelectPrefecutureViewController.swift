//
//  SelectPrefecutureViewController.swift
//  tomoEng11Kadai9
//
//  Created by 井本智博 on 2024/01/28.
//

import UIKit

protocol SelectPrefectureViewControllerDelegate: AnyObject {
    func didSelectPrefecture(name: String)
}

class SelectPrefecutureViewController: UIViewController {
    weak var delegate: SelectPrefectureViewControllerDelegate?

    @IBAction func prefectureSelectButtonPressed(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            delegate?.didSelectPrefecture(name: title)
        }
        dismiss(animated: true, completion: nil)
    }

    @IBAction private func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
