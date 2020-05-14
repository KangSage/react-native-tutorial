//
// ToastView.swift
// AwesomeTSProject
//
// Created by KangSH on 2020/05/01.
//

import UIKit
import Toast_Swift

@objc(ToastView)
class ToastView: NSObject {
  @objc
  func show(_ message: String, duration: NSNumber) {
      print("왜 첫번째 파라미터는 생략해? \(message) \(duration)")
  }
}




