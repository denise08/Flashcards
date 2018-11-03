//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Denise Gip on 11/3/18.
//  Copyright © 2018 Denise Gip. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!

    @IBOutlet weak var question: UITextField!
    @IBOutlet weak var answer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        
        //Get the text in the question text field
        let questionText = question.text
        
        //Get the text in the answer text field
        let answerText = answer.text
        
        //Call the function to update the flashcard
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
        //Dismiss
        dismiss(animated: true)
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
