//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by limyunhwi on 2021/11/16.
//

import UIKit

class CodePushViewController: UIViewController {

    var name:String?
    
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //옵셔널 값이므로 옵셔널 바인딩을 해준다.
        if let name = self.name {
            self.lblName.text = name
            self.lblName.sizeToFit()
        }

    }
    @IBAction func tapBackBtn(_ sender: UIButton) {
        //Navigation Stack에서 현재 화면, 즉 상단의 뷰컨트롤러를 제거한다.
        self.navigationController?.popViewController(animated: true)
    }
}
