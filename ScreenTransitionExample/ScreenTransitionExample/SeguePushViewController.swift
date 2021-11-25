//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by limyunhwi on 2021/11/13.
//

//세그웨이로 구현된 화면 전환 시 이전 화면으로 데이터 전달하는 방법-> prepare 메서드 사용: 화면 전환 직전 호출된다.

import UIKit

class SeguePushViewController: UIViewController {
//Segue로 Push ->Segue 객체와 내비게이션 컨트롤러 사용
    
    var name:String?
    
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = self.name {
            self.lblName.text = name
            self.lblName.sizeToFit()
        }

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
