//
//  ViewController.swift
//  Flashcards
//
//  Created by Denise Gip on 10/13/18.
//  Copyright © 2018 Denise Gip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        frontLabel.isHidden = true;
    }
    
    func updateFlashcard(question: String, answer: String){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //We know the destination fo the segue is the Navigation Controller
        let navigationController = segue.destination as! UINavigationController
        
        //We know the Navigation Controller only contains a Creation View Controller
        let creationController = navigationController.topViewController as! CreationViewController
        
        //We set the flashcardsController property to self
        creationController.flashcardsController = self
    }
    
}

