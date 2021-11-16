//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by limyunhwi on 2021/11/16.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tapBackBtn(_ sender: UIButton) {
        //Navigation Stack에서 현재 화면, 즉 상단의 뷰컨트롤러를 제거한다.
        self.navigationController?.popViewController(animated: true)
    }
}
