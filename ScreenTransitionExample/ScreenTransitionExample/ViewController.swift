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
        print("ViewController/ viewDidLoad/ 화면이 로드되었다.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController/ viewWillAppear/ 화면이 나타날 것이다.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController/ viewDidAppear/ 화면이 나타났다.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController/ viewWillDisappear/ 화면이 사라질 것이다.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController/ viewDidDisappear/ 화면이 사라졌다.")
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
    @IBAction func tapCodePresentBtn(_ sender: UIButton) {
        //instantiateViewController메서드를 사용해서 스토리보드 내 뷰 컨트롤러를 인스턴스화한다.
        //옵셔널을 반환하기 때문에 guard문을 사용해서 옵셔널 바인딩한다.-> 명시적으로 옵셔널 값 추출
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") else {return}
        //모달 화면 스타일 변경. 풀스타일
        viewController.modalPresentationStyle = .fullScreen
        
        //present메서드에 인스턴스화된 ViewController를 넘겨준다.
        self.present(viewController, animated: true, completion: nil)
    }
}

