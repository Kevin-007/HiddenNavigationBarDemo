//
//  HistoryRecordViewController.swift
//  HiddenNavigationBarDemo
//
//  Created by Kevin on 2018/7/22.
//  Copyright © 2018年 Kevin. All rights reserved.
//

import UIKit

///MARK: -历史记录页面
class HistoryRecordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        hideNavigationBar()
    }

    private func hideNavigationBar() {
        /**
         *注意，要实现UINavigationControllerDelegate代理
         */
        self.navigationController?.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


// MARK: - UINavigationControllerDelegate
extension HistoryRecordViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        navigationController.setNavigationBarHidden(viewController.isKind(of: HistoryRecordViewController.classForCoder()), animated: animated)
    }
}
