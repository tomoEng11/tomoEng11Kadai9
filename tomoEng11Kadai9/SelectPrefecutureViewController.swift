//
//  SelectPrefecutureViewController.swift
//  tomoEng11Kadai9
//
//  Created by 井本智博 on 2024/01/28.
//

import UIKit

protocol SelectPrefectureDelegate {
    func setValue(value: String)
}

class SelectPrefecutureViewController: UIViewController {
    var delegate: SelectPrefectureDelegate?

    @IBAction func prefectureSelectButtonPressed(_ sender: UIButton) {
        if let title =  sender.titleLabel?.text {
            self.delegate?.setValue(value:title)
        }
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction private func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
