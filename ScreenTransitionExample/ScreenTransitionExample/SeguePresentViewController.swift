//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by limyunhwi on 2021/11/14.
//

import UIKit

class SeguePresentViewController: UIViewController {
//Segue로 Present -> Segue 객체와 Present 방법(화면 위에 화면 덮기/ Present Modally 사용)
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tapBackBtn(_ sender: UIButton) {
    //덮어쓴 이전 화면으로 돌아가기
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
