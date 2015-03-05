//
//  ViewController.swift
//  http get
//
//  Created by k12043kk on 2015/03/04.
//  Copyright (c) 2015年 k12043kk. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    @IBOutlet var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    @IBAction func button1(sender: UIButton) {
        var myUrl:NSURL = NSURL(string:"localhost")!
        
        var myRequest:NSURLRequest  = NSURLRequest(URL: myUrl)
        
        NSURLConnection.sendAsynchronousRequest(myRequest, queue: NSOperationQueue.mainQueue(), completionHandler: self.getHttp)
        label.text = "通信中"
    }
    func getHttp(res:NSURLResponse?,data:NSData?,error:NSError?){
        
        var myData:NSString = NSString(data: data!, encoding: NSUTF8StringEncoding)!
        
        label.text = myData
    }
    
}
