//
//  Video.swift
//  TikTokCloneUIKit
//
//  Created by Carlo Luis Martinez Bation on 16/4/21.
//
import AVFoundation
struct Video : Identifiable {
    var id : Int
    var player : AVQueuePlayer
}

class VideoDataSource {
    static let sharedInstance = VideoDataSource()
    var looper: AVPlayerLooper?
    var currentIndex = 0 {
        willSet {
            videos[currentIndex].player.seek(to: .zero)
            videos[currentIndex].player.pause()
            if let looper = looper {
                looper.disableLooping()
            }
        }
        didSet {
            looper = AVPlayerLooper(player: videos[currentIndex].player, templateItem: videos[currentIndex].player.currentItem!)
            videos[currentIndex].player.play()
        }
    }
    func pause() {
        videos[currentIndex].player.pause()
    }
    
    func resume() {
        guard videos[currentIndex].player.rate == 0 else {
            return
        }
        videos[currentIndex].player.play()
    }
    
    var videos = [
        Video(id: 0, player: AVQueuePlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "1", ofType: "mp4")!))),
        Video(id: 1, player: AVQueuePlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "2", ofType: "mp4")!))),
        Video(id: 2, player: AVQueuePlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "3", ofType: "mp4")!))),
        Video(id: 3, player: AVQueuePlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "4", ofType: "mp4")!))),
        Video(id: 4, player: AVQueuePlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "5", ofType: "mp4")!))),
        Video(id: 5, player: AVQueuePlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "6", ofType: "mp4")!))),
    ]
}
