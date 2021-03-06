//
//  UIViewControllerExtension.swift
//  InteractiveViewerAndInputExample
//
//  Created by 酒井文也 on 2020/12/28.
//

import Foundation
import UIKit

// UIViewControllerの拡張
extension UIViewController {

    // この画面のナビゲーションバーを設定するメソッド
    func setupNavigationBarTitle(_ title: String) {

        // NavigationControllerのデザイン調整を行う
        var attributes = [NSAttributedString.Key : Any]()
        attributes[NSAttributedString.Key.font] = UIFont(name: "HiraKakuProN-W6", size: 14.0)
        attributes[NSAttributedString.Key.foregroundColor] = UIColor.white

        self.navigationController!.navigationBar.titleTextAttributes = attributes

        // タイトルを入れる
        self.navigationItem.title = title
    }

    // 戻るボタンの「戻る」テキストを削除した状態にするメソッド
    func removeBackButtonText() {
        self.navigationController!.navigationBar.tintColor = UIColor.white
        if #available(iOS 14.0, *) {
            self.navigationItem.backButtonDisplayMode = .minimal
            self.navigationItem.backButtonTitle = self.navigationItem.title
        } else {
            // 戻るボタンの文言を消す
            let backButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            self.navigationItem.backBarButtonItem = backButtonItem
        }
    }
}
