//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by limyunhwi on 2021/11/17.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func tapBackBtn(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
