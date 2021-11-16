//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by limyunhwi on 2021/11/13.
//

import UIKit

class ViewController: UIViewController {
//Segue로 Present -> Segue객체와 Present 방식(화면 위에 화면 덮기/ Present Modally 사용)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapCodePushBtn(_ sender: UIButton) {
        //Navigation Stack에 CodePuchViewController가 push되도록 코드 작성
        //애라 메서드를 사용해 스토리보드에 있는 뷰 컨트롤러를 인스턴스화한다.
        //identifier에 스토리보드의 id를 전달한다
        //스토리보드 도착지 화면의 뷰컨트롤러에서 스토리보드 id설정
        //옵셔널로 반환하기때문에 guard문을 사용한다.
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePuchViewController") else {return}
        
        //Navigation Stack에 새로운 뷰 컨트롤러가 쌓여 새 화면이 뜨게 된다.
        self.navigationController?.pushViewController(viewController, animated: true)
        //상단의 back버튼을 누르거나 left edge swipe를 사용하여 이전 화면으로 넘어갈 수 있다.
    }
}

