//
//  SelectPrefecutureViewController.swift
//  tomoEng11Kadai9
//
//  Created by 井本智博 on 2024/01/28.
//

import UIKit

class SelectPrefecutureViewController: UIViewController {
    private let delegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction private func buttonPressed(_ sender: UIButton) {
        if let title =  sender.titleLabel?.text {
            delegate.selectedPrefecture = title
        }
        self.dismiss(animated: true, completion: nil)
    }
}
