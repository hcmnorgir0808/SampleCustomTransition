//
//  AnimationTransitioning.swift
//  CustomTransition
//
//  Created by 岩本康孝 on 2021/12/11.
//

import UIKit
import Foundation

class AnimationTransitioning: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        // アニメーションにかかる時間
        return 1.0
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        // アニメーションの挙動
        guard let fromView = transitionContext.view(forKey: .from),
              let toView = transitionContext.view(forKey: .to) else { return }

        transitionContext.containerView.insertSubview(toView, belowSubview: fromView)

        UIView.animate(withDuration: transitionDuration(using: transitionContext),
                       animations: {
            fromView.alpha = 0
            toView.alpha = 1
        }) { didComplete in
            fromView.alpha = 1
            transitionContext.completeTransition(didComplete)
        }
    }
}
