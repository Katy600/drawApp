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
    
    @IBAction func PlayAgain(_ sender: Any) {
    }
   
    //MARK: Actions
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "\(badText!), your drawing \n has been sent! "
        print(badText!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playButton(_ sender: Any) {
        performSegue(withIdentifier: "showFirstViewController", sender: sender)
    }
}
