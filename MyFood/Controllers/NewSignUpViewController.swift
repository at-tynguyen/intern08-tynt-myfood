//
//  NewSignUpViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/29/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class NewSignUpViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    swipeDownToClose()
  }
  
  @IBAction func closeBtn(_ sender: UIButton) {
    closeView()
  }
  
  func swipeDownToClose() {
    let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeDownAction(sender:)))
    swipeDown.direction = UISwipeGestureRecognizerDirection.down
    view.addGestureRecognizer(swipeDown)
  }
  
  func swipeDownAction(sender: UISwipeGestureRecognizer) {
    closeView()
  }
  
  func closeView() {
    let transition = CATransition()
    transition.duration = 0.5
    transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
    transition.type = kCATransitionPush
    transition.subtype = kCATransitionFromBottom
    navigationController?.view.layer.add(transition, forKey:kCATransition)
    self.view.removeFromSuperview()
    self.parent?.view.backgroundColor = UIColor.init(red: 250/255, green: 87/255, blue: 78/255, alpha: 1)
  }
  
  @IBAction func doneBtnPressed(_ sender: UIButton) {
    closeView()
  }
  
}