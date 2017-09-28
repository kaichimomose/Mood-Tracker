//
//  DisplayViewController.swift
//  Mood Tracker
//
//  Created by Kaichi Momose on 2017/09/27.
//  Copyright © 2017 Kaichi Momose. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    @IBOutlet weak var noteContentTextView: UITextView!
    @IBOutlet weak var noteTitleTextField: UITextField!
    //var note: Note?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        if let note = note {
//            noteTitleTextField.text = note.title
//            noteContentTextView.text = note.content
//        } else {
//            noteTitleTextField.text = ""
//            noteContentTextView.text = ""
//        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "save" {
//            // if note exists, update title and content
//            let note = self.note ?? CoreDataHelper.newNote()
//            note.title = noteTitleTextField.text ?? ""
//            note.content = noteContentTextView.text ?? ""
//            note.modificationTime = Date() as NSDate
//            CoreDataHelper.saveNote()
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
