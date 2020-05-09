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
  static var root: UIViewController? {
    get {
      UIApplication.shared.keyWindow?.rootViewController
    }
  }
  var view: UIView?

  @objc
  func showToast(_ message : String) {

    view = ToastView.root?.view

    do {

      if #available(iOS 11.0, *) {
        // Toast View
        let toastView = try self.view?.toastViewForMessage(message,
                title: nil,
                image: nil,
                style: ToastManager.shared.style)
        // Size/Position
        let padding = (ToastView.root?.navigationController?.navigationBar.frame.height ?? 0)
                + self.view!.safeAreaInsets.bottom + CGFloat.init(57.0)
        let point = CGPoint(x: UIScreen.main.bounds.width / 2.0,
                y: (UIScreen.main.bounds.height - (toastView?.frame.size.height ?? 0.0 / 2.0)) - padding)
        // Show
        ToastView.view!.showToast(toastView!,
                duration: 3.0,
                point: point,
                completion: nil)
      } else {
        // Fallback on earlier versions
      }

    } catch {
      print("아웃")
    }

  }
}




