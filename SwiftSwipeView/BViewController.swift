//
//  BViewController.swift
//  bubble_ios
//
//  Created by Brendan Lee on 7/23/14.
//  Copyright (c) 2014 Brendan Lee. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class BViewController: UIViewController {
    
    var moviePlayer:MPMoviePlayerController!
    
    func configureView() {
        var player = AVPlayer()
        let url = "http://128.199.128.227/chestream_raw/Steve%20Jobs%20-%20Official%20Trailer%20%28HD%29-aEr6K1bwIVs.mp4"
        let playerItem = AVPlayerItem( URL:NSURL( string:url )! )
        player = AVPlayer(playerItem:playerItem)
        player.rate = 1.0;
        player.play()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view, typically from a nib.
        var url:NSURL = NSURL(string: "http://128.199.128.227/chestream_raw/v5_old.mp4")!
        var moviePlayer = MPMoviePlayerController(contentURL: url)
        
        moviePlayer.view.frame = CGRect(x: 20, y: 100, width: 200, height: 150)
        self.view.addSubview(moviePlayer.view)
        
        moviePlayer.fullscreen = true
        moviePlayer.controlStyle = MPMovieControlStyle.Embedded
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

