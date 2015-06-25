//
//  ViewController.swift
//  PopupAlert
//
//  Created by Vinicius Fugulin Barbosa on 2015-05-22.
//  Copyright (c) 2015 Vinicius Fugulin Barbosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var helloButton: UIButton = UIButton (frame: CGRect(x:0, y:0, width:250, height:60))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        helloButton.setTitle("Answer a question", forState: UIControlState.Normal)
        helloButton.backgroundColor = UIColor.redColor()
        helloButton.addTarget(self, action: "showAlertController", forControlEvents: UIControlEvents.TouchUpInside)
        helloButton.center = CGPointMake(160, 300)
        view.addSubview(helloButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showMessage(){
        var msgTitle: String = "Hello World!"
        var messageString : String = "Thanks for visiting!"
        
        var alert : UIAlertView = UIAlertView()
        alert.title = msgTitle
        alert.message = messageString
        alert.addButtonWithTitle("OK")
        alert.show()
    }
    
    func showAlertController(){
        
        let title = "Hello World"
        let message = NSLocalizedString("Is Corinthians the best team in the world?", comment: "")
        let acceptButtonTitle = NSLocalizedString("Yes", comment: "")
        let cancelButtonTitle = NSLocalizedString("No", comment: "")
        
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Default){action in NSLog("User is not a fan of soccer")
        }
            
        let acceptAction = UIAlertAction(title: acceptButtonTitle, style: .Cancel){action in NSLog("User is a great fan of soccer")
        }
        
        alertController.addAction(acceptAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }


}
