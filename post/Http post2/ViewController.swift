//
//  ViewController.swift
//  Http post2
//
//  Created by k12043kk on 2015/03/01.
//  Copyright (c) 2015年 k12043kk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,NSURLSessionTaskDelegate,NSURLSessionDataDelegate{

    @IBOutlet var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func button1(sender: UIButton) {
        let str = "name=test"
        let data = str.dataUsingEncoding(NSUTF8StringEncoding)
        let identifier = "BackgroundTaskIdentifier"
        let configuration = NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier(identifier)
        let url = NSURL(string: "http://192.168.1.35/post.php")!
        var request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "POST";
        request.HTTPBody = data
        let session = NSURLSession(configuration: configuration, delegate:self,delegateQueue: nil)
        let task:NSURLSessionDownloadTask=session.downloadTaskWithRequest(request)
        task.resume()
            
        
        }
        func URLSession(session: NSURLSession, downloadTask: NSURLSessionDownloadTask, didFinishDownloadingToURL location: NSURL){
            var data = NSData(contentsOfURL: location)!
            var myData:NSString = NSString(data: data, encoding: NSUTF8StringEncoding)!
            println(myData)
            
        }

   }


