//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by limyunhwi on 2021/11/17.
//

/*
 Delegate Pattern으로 이전화면(ViewController)로 데이터 전달하기
 Delegate: 대리인, 위임하다.
 delegate, 즉 위임자를 가지고 있는 객체가 자신의 일을 다른 객체에게 위임하는 형태의 디자인 패턴
 
 delegate 패턴을 새용할 때, delegate 변수 앞에 weak 키워드를 적어 주어야 한다. 안 붙여주면 강한 순환 참조가 걸려 메모리 누수가 발생할 수도 있다.
 week 키워드를 붙이려면 프로토콜 생성 시 AnyObject를 준수해야한다.
 */

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    var name:String?
    weak var delegate: SendDataDelegate?
    
    
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
        self.delegate?.sendData(name: "yh")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
