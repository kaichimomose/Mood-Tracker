//
//  ListMoodTableViewController.swift
//  Mood Tracker
//
//  Created by Kaichi Momose on 2017/09/27.
//  Copyright © 2017 Kaichi Momose. All rights reserved.
//

import UIKit

class ListMoodTableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var lists = [List]() {
        didSet {
            tableView.reloadData()
        }
    }
    @IBAction func unwindToListMoodViewController(_ segue: UIStoryboardSegue) {

        // for now, simply defining the method is sufficient.
        // we'll add code later

//        self.notes = CoreDataHelper.retrieveNotes()

    }
//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "displayMood" {
                print("Table view cell tapped")

                let indexPath = tableView.indexPathForSelectedRow!

                let list = lists[indexPath.row]

                let displayViewController = segue.destination as! DisplayViewController

                displayViewController.list = list

            } else if identifier == "addMood" {
                print("+ button tapped")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        notes = CoreDataHelper.retrieveNotes()
    }
}

extension ListMoodTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listMoodTableViewCell", for: indexPath) as! ListMoodTableViewCell
        
        let row = indexPath.row
        
        let list = lists[row]
        
        cell.nameLabel.text = list.name
        
        cell.moodLabel.text = list.mood

        cell.moodModificationTimeLabel.text = list.modificationTime.convertToString()

        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete {
//            let appDelegate = UIApplication.shared.delegate as! AppDelegate
//            let persistentContainer = appDelegate.persistentContainer
//            let managedContext = persistentContainer.viewContext
//
            let row = indexPath.row

            lists.remove(at: row)
        }
    }
}

