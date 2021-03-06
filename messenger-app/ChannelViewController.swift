//
//  ChannelViewController.swift
//  messenger-app
//
//  Created by Jay Khan on 27/08/2018.
//  Copyright © 2018 Jay Khan. All rights reserved.
//

import UIKit
import Firebase

class ChannelViewController: UIViewController {

    @IBOutlet weak var channelButton1: UIButton!
    @IBOutlet weak var channelButton2: UIButton!
    @IBOutlet weak var channelButton3: UIButton!
    
    @IBAction func actionButtonChannel1(_ sender: UIButton) {
        if channelButton1.currentTitle != nil {
            performSegue(withIdentifier: "segueChannel", sender: self)
        }
    }
    
    @IBAction func actionButtonChannel2(_ sender: UIButton) {
        if channelButton2.currentTitle != nil {
            performSegue(withIdentifier: "segueChannel", sender: self)
        }
    }
    
    @IBAction func actionButtonChannel3(_ sender: UIButton) {
        if channelButton3.currentTitle != nil {
            performSegue(withIdentifier: "segueChannel", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let chatViewController = segue.destination as! ChatViewController
        if channelButton1.isTouchInside {
            chatViewController.channelParam = channelButton1.currentTitle!
            print("button 1 pressed")
        } else if channelButton2.isTouchInside {
            chatViewController.channelParam = channelButton2.currentTitle!
            print("button 2 pressed")
        } else if channelButton3.isTouchInside {
            chatViewController.channelParam = channelButton3.currentTitle!
            print("button 3 pressed")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
