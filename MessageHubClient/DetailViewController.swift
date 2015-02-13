//
//  DetailViewController.swift
//  MessageHubClient
//
//  Created by Michael Owens on 2/11/15.
//  Copyright (c) 2015 Michael Owens. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    var messages = [
                    Message(text: "helloTOO LONG OF A MESSAGE AHHHHHHH", userName: "M"),
                    Message(text: "haha", userName: "gg"),
                    Message(text: "awww", userName: "C")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.messages.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        let message = self.messages[indexPath.row]
        
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.text = "<\(message.userName)> \(message.text)"

            return cell
    }
}

