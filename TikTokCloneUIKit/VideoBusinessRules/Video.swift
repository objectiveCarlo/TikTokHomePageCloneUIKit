//
//  Video.swift
//  TikTokCloneUIKit
//
//  Created by Carlo Luis Martinez Bation on 16/4/21.
//
import AVFoundation
struct Video : Identifiable {
    var id : Int
    var player : AVPlayer
}

class VideoSource {
    static let sharedInstance = VideoSource()
    var currentIndex = 0 {
        willSet {
            videos[currentIndex].player.seek(to: .zero)
            videos[currentIndex].player.pause()
        }
        didSet {
            videos[currentIndex].player.play()
            videos[currentIndex].player.actionAtItemEnd = .none
        }
    }
    var videos = [
        Video(id: 0, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "1", ofType: "mp4")!))),
        Video(id: 1, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "2", ofType: "mp4")!))),
        Video(id: 2, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "3", ofType: "mp4")!))),
        Video(id: 3, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "4", ofType: "mp4")!))),
        Video(id: 4, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "5", ofType: "mp4")!))),
        Video(id: 5, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "6", ofType: "mp4")!))),
    ]
}
