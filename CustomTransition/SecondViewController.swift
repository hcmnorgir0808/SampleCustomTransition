//
//  SecondViewController.swift
//  CustomTransition
//
//  Created by 岩本康孝 on 2021/12/11.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.transitioningDelegate = self
    }

    @IBAction func didTapDismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension SecondViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController,
                             presenting: UIViewController,
                             source: UIViewController) -> UIViewControllerAnimatedTransitioning? {

        return AnimationTransitioning()
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimationTransitioning()
    }
}
