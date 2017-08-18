//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Matthew Bourke on 19/8/17.
//  Copyright © 2017 Matthew Bourke. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😊" {
            defLabel.text = "Typical smiley face"
        }
        
        if emoji == "🙃" {
            defLabel.text = "Upside down smiley"
        }
        
        if emoji == "😏" {
            defLabel.text = "Cheeky face"
        }
        
        if emoji == "😎" {
            defLabel.text = "Cool guy with sunnies"
        }
        
        if emoji == "💩" {
            defLabel.text = "Poop"
        }
        
        if emoji == "🐹" {
            defLabel.text = "A cute hamster"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
