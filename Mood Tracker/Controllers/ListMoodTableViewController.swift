//
//  ListMoodTableViewController.swift
//  Mood Tracker
//
//  Created by Kaichi Momose on 2017/09/27.
//  Copyright © 2017 Kaichi Momose. All rights reserved.
//

import UIKit

class ListMoodTableViewController: UIViewController {
//    var notes = [Note]() {
//        didSet {
//            tableView.reloadData()
//        }
//    }
//    @IBAction func unwindToListNotesViewController(_ segue: UIStoryboardSegue) {
//
//        // for now, simply defining the method is sufficient.
//        // we'll add code later
//
//        self.notes = CoreDataHelper.retrieveNotes()
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let identifier = segue.identifier {
//            if identifier == "displayNote" {
//                print("Table view cell tapped")
//
//                // 1
//                let indexPath = tableView.indexPathForSelectedRow!
//                // 2
//                let note = notes[indexPath.row]
//                // 3
//                let displayNoteViewController = segue.destination as! DisplayNoteViewController
//                // 4
//                displayNoteViewController.note = note
//
//            } else if identifier == "addNote" {
//                print("+ button tapped")
//            }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        notes = CoreDataHelper.retrieveNotes()
    }
}

extension ListMoodTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listMoodTableViewCell", for: indexPath) as! ListMoodTableViewCell
        
//        let row = indexPath.row
        
//        let note = notes[row]
        
//        cell.noteTitleLabel.text = note.title
//
//        cell.noteModificationTimeLabel.text = note.modificationTime?.convertToString()
        cell.backgroundColor = .red
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//
//        if editingStyle == .delete {
//
//            CoreDataHelper.delete(note: notes[indexPath.row])
//
//            notes = CoreDataHelper.retrieveNotes()
//        }
//    }
}

