//
//  ViewController.swift
//
//  Created by Robin Malhotra on 07/07/15.
//  Copyright © 2015 Robin Malhotra. All rights reserved.
//

import UIKit

class AViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let tableView=UITableView()
    let dataArray=1...10
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.frame=view.frame
        view.addSubview(tableView)
        tableView.registerClass(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate=self
        tableView.dataSource=self
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell=tableView.dequeueReusableCellWithIdentifier("cell") as? CustomTableViewCell
        
        if(cell != nil)
        {
            cell=CustomTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell", image: UIImage(named: "img")!, title: "sd", date: "sd", votes: 1)
        }
        
        cell!.dateLabel.text="Date"+String(indexPath.row)
        cell!.titleLabel.text="title"+String(indexPath.row)
        cell!.voteLabel.text=String(indexPath.row)
        cell!.videoImageView.image=UIImage(named: "img")
        return cell!
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

