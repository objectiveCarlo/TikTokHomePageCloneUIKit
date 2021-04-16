//
//  ViewController.swift
//  TikTokCloneUIKit
//
//  Created by Carlo Luis Martinez Bation on 16/4/21.
//

import UIKit

class HomeViewController: UIViewController {
    var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        scrollView.contentSize = view.bounds.size
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(scrollView)
    }


}

