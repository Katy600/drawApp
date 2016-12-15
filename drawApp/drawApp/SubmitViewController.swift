//
//  SubmitViewController.swift
//  drawApp
//
//  Created by Elizabeth Wicks on 15/12/2016.
//  Copyright © 2016 RAKE. All rights reserved.
//

import UIKit

class SubmitViewController: UIViewController {
    
    //MARK: Properties
    var badText: String?
    @IBOutlet var nameLabel: UILabel!
    
   
    //MARK: Actions
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "\(badText!), your drawing \n has been sent! "
        print(badText!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func playButton(_ sender: Any) {
    }
    
    
}
