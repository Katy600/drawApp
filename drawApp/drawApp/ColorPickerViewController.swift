//
//  ColorPickerViewController.swift
//  drawApp
//
//  Created by Rosie Gollancz on 10/12/2016.
//  Copyright © 2016 RAKE. All rights reserved.
//

import UIKit



class ColorPickerViewController: UIViewController {
     var currentColor = UIColor(red: 0.26, green: 0.53, blue: 0.96, alpha: 1.0).cgColor

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeColorPicker(_ sender: Any) {
        self.view.removeFromSuperview()
    }

    @IBAction func paintRed(_ sender: Any) {
        currentColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0).cgColor
        performSegue(withIdentifier: "showDrawViewController2", sender: sender );
    }
    
    
    @IBAction func paintGreen(_ sender: Any) {
        currentColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0).cgColor
        performSegue(withIdentifier: "showDrawViewController2", sender: sender );
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDrawViewController2" {
            if let destination = segue.destination as? DrawViewController {
                destination.currentColor = self.currentColor
            }
        }
    }
    
    //MARK: Actions
   
}
