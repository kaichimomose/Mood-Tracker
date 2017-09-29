//
//  DisplayViewController.swift
//  Mood Tracker
//
//  Created by Kaichi Momose on 2017/09/27.
//  Copyright © 2017 Kaichi Momose. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var moodSegue: UISegmentedControl!
    var list: List?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let list = list {
            nameTextField.text = list.name
            var case_number: Int
            if list.mood == "😁"{
                case_number = 0
            }
            else if list.mood == "😑"{
                case_number = 1
            }
            else{
                case_number = 2
            }
            moodSegue.selectedSegmentIndex = case_number
        } else {
            nameTextField.text = ""
            //noteContentTextView.text = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "save" {
            let listMoodTableViewController = segue.destination as! ListMoodTableViewController
            
            if let list = list {
                // 1
                list.name = nameTextField.text ?? ""
                
                var mood = ""
                
                switch moodSegue.selectedSegmentIndex {
                case 0:
                    mood = "😁"
                case 1:
                    mood = "😑"
                case 2:
                    mood = "😡"
                default:
                    break
                }
                list.mood = mood
                
                list.modificationTime = Date()
                
                listMoodTableViewController.tableView.reloadData()
            } else {
                // 3
                let newList = List()
                newList.name = nameTextField.text ?? ""
                var mood = ""
                
                switch moodSegue.selectedSegmentIndex {
                case 0:
                    mood = "😁"
                case 1:
                    mood = "😑"
                case 2:
                    mood = "😡"
                default:
                    break
                }
                newList.mood = mood
                //newList.volume = listVolumeTextField.text ?? ""
                newList.modificationTime = Date()
                listMoodTableViewController.lists.append(newList)
            }
            // if note exists, update title and content
//            let note = self.note ?? CoreDataHelper.newNote()
//            note.title = noteTitleTextField.text ?? ""
//            note.content = noteContentTextView.text ?? ""
//            note.modificationTime = Date() as NSDate
//            CoreDataHelper.saveNote()
            print("save button tapped")
        }
        else if segue.identifier == "cancel" {
            print("cancel button tapped")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
