//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by limyunhwi on 2021/11/13.
//

import UIKit

class SeguePushViewController: UIViewController {
//Segue로 Push ->Segue 객체와 내비게이션 컨트롤러 사용
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        //NavigationController를 사용할 때, 이전 화면으로 돌아가기 위해서는 popViewController 메서드를 사용한다. -> Navigation Stack에서 현재 뷰 컨트롤러를 제거
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tapRootBtn(_ sender: UIButton) {
        //Navigation Stack의 첫 번째 화면, 즉 첫 번째 뷰 컨트롤러로 이동하려면 popToRootViewController메서드를 사용한다.
        self.navigationController?.popToRootViewController(animated: true)
    }
}
