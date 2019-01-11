//
//  CoursesTableViewController.swift
//  MVVM Demo Courses
//
//  Created by Jitendra Patil on 10/01/19.
//  Copyright © 2019 Jitendra Patil. All rights reserved.
//

import UIKit

class CoursesTableViewController: UITableViewController {
    
    @IBOutlet var viewModel: CoursesViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.ready()
        self.navigationItem.title = viewModel.title
        self.tableView.register(CourseTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }
    
    // MARK: - Table view data source

    
}
extension CoursesTableViewController {
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel.coursesModels.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier") as? CourseTableViewCell
        if cell != nil {
            cell = CourseTableViewCell.init(style: .subtitle, reuseIdentifier: "reuseIdentifier")
        }
        cell?.courseViewModel = viewModel.coursesModels[indexPath.row]
        return cell!
     }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
}
