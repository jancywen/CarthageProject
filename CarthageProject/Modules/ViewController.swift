//
//  ViewController.swift
//  CarthageProject
//
//  Created by wangwenjie on 2020/7/19.
//  Copyright © 2020 wangwenjie. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class ViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btn1.rx.tap.subscribe(onNext: {
            print("btn1 tap")
            }).disposed(by: disposeBag)
    }


}

