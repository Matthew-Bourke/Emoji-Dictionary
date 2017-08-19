//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Matthew Bourke on 19/8/17.
//  Copyright © 2017 Matthew Bourke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableList: UITableView!
    
    // Array of strings containing emojis
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableList.dataSource = self
        tableList.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of row is equal to number of emojis in array
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        // Assigns corresponding emoji to correct spot in tableview
        cell.textLabel?.text = emoji.realEmoji
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // For de-highlighting option after its been selected
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  //  var emojis = ["😊", "🙃", "😏", "😎", "💩", "🐹"]
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.realEmoji = "😊"
        emoji1.nameEmoji = "Happy emoji"
        emoji1.categoryEmoji = "Smiley"
        emoji1.originEmoji = 2009
        
        
        let emoji2 = Emoji()
        emoji2.realEmoji = "🙃"
        emoji2.nameEmoji = "Happy emoji?"
        emoji2.categoryEmoji = "Smiley"
        emoji2.originEmoji = 2013
        
        
        let emoji3 = Emoji()
        emoji3.realEmoji = "😏"
        emoji3.nameEmoji = "Cheeky emoji"
        emoji3.categoryEmoji = "Smiley"
        emoji3.originEmoji = 2014
        
        
        let emoji4 = Emoji()
        emoji4.realEmoji = "😎"
        emoji4.nameEmoji = "Sunnies emoji"
        emoji4.categoryEmoji = "Smiley"
        emoji4.originEmoji = 2010
        
        
        let emoji5 = Emoji()
        emoji5.realEmoji = "💩"
        emoji5.nameEmoji = "Poop emoji"
        emoji5.categoryEmoji = "Smiley"
        emoji5.originEmoji = 2008
        
        
        let emoji6 = Emoji()
        emoji6.realEmoji = "🐹"
        emoji6.nameEmoji = "Hamster emoji"
        emoji6.categoryEmoji = "Aminal"
        emoji6.originEmoji = 2011
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
    
    
}

