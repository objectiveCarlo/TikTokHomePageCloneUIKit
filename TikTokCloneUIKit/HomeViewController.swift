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
        VideoSource.sharedInstance.videos.forEach { (video) in
            let playerViewController =  makePlayerViewController(player: video.player, yPos:CGFloat(yPos))
       
            scrollView.addSubview(playerViewController.view)
            self.addChild(playerViewController)
            yPos = yPos + Int(UIScreen.main.bounds.height)
        }
        VideoSource.sharedInstance.videos.first?.player.play()
        
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((VideoSource.sharedInstance.videos.count)))
        
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        
        // to ignore safe area...
        scrollView.contentInsetAdjustmentBehavior = .never
    }
    
    func makePlayerViewController(player: AVPlayer, yPos: CGFloat) -> AVPlayerViewController{
        
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.showsPlaybackControls = false
        playerViewController.videoGravity = .resizeAspectFill
        playerViewController.view.backgroundColor = .white
        playerViewController.view.frame = CGRect(x: 0, y: yPos, width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        return playerViewController
    }


}

