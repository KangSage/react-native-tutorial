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
  @objc static var SHORT: String = "SHORT"
  @objc static var LONG: String = "LONG"
  static var root: UIViewController? {
    get {
        return UIApplication.shared.delegate?.window??.rootViewController
    }
  }

  @objc
  func show(_ message : String, duration: String) -> Void {
    DispatchQueue.main.async {
      let view = ToastView.root?.view
      let rawDuration = self.setDuration(duration: duration)
      
      do {
        if #available(iOS 11.0, *) {
          // Toast View
          let toastView = try view?.toastViewForMessage(message,
                  title: nil,
                  image: nil,
                  style: ToastManager.shared.style)
          // Size/Position
          let padding = (ToastView.root?.navigationController?.navigationBar.frame.height ?? 0)
            + (view?.safeAreaInsets.bottom ?? 0)
            + CGFloat.init(57.0)
          let point = CGPoint(x: UIScreen.main.bounds.width / 2.0,
                  y: (UIScreen.main.bounds.height - (toastView?.frame.size.height ?? 0.0 / 2.0)) - padding)
          // Show
          view?.showToast(toastView!,
                  duration: rawDuration,
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
  
  private func setDuration (duration:String) -> TimeInterval {
    switch duration {
      case "SHORT": return 2.0
      case "LONG": return 3.5
      default: return 2.0
    }
  }
}
