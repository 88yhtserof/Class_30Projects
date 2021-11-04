//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by limyunhwi on 2021/11/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView! //weak 다른 곳에서 참조하고 있더라도 시스템이 인위적으로 메모리에서 제거할 수 있다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapChankeColorButton(_ sender: UIButton) {
        self.colorView.backgroundColor = UIColor.blue
        print("Change color")
    }
    
}

