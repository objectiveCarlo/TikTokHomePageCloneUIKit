//
//  ViewController.swift
//  TikTokCloneUIKit
//
//  Created by Carlo Luis Martinez Bation on 16/4/21.
//

import UIKit
import AVKit


class HomeViewController: UIViewController {
    var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(scrollView)
        
        var yPos = 0
        VideoDataSource.sharedInstance.videos.forEach { (video) in
            let playerViewController =  makePlayerViewController(player: video.player, yPos:CGFloat(yPos))
       
            scrollView.addSubview(playerViewController.view)
            self.addChild(playerViewController)
            yPos = yPos + Int(UIScreen.main.bounds.height)
        }
        
        VideoDataSource.sharedInstance.currentIndex = 0
        
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((VideoDataSource.sharedInstance.videos.count)))
        
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        
        // to ignore safe area...
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        VideoDataSource.sharedInstance.resume()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        VideoDataSource.sharedInstance.pause()
    }
    
    func makePlayerViewController(player: AVPlayer, yPos: CGFloat) -> AVPlayerViewController{
        
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.showsPlaybackControls = false
        playerViewController.videoGravity = .resizeAspect
        playerViewController.view.backgroundColor = .black
        playerViewController.view.frame = CGRect(x: 0, y: yPos, width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        return playerViewController
    }
}

extension HomeViewController: UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let index = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
        
        if VideoDataSource.sharedInstance.currentIndex != index {
            VideoDataSource.sharedInstance.currentIndex = index
        }
    }
}

