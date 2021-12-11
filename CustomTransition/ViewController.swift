//
//  ViewController.swift
//  CustomTransition
//
//  Created by 岩本康孝 on 2021/12/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapTransitionButton(_ sender: Any) {
        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateInitialViewController() as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
