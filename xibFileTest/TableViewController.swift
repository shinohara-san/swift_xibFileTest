//
//  TableViewController.swift
//  xibFileTest
//
//  Created by Yuki Shinohara on 2020/06/02.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

struct cellData {
    let cell:Int!
    var text:String!
    var image:UIImage!
}


class TableViewController: UITableViewController {
    
    var array = [cellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        array = [cellData(cell: 1, text: "ううう", image: #imageLiteral(resourceName: "image_carousel_3")),
                 cellData(cell: 2, text: "あああ", image: #imageLiteral(resourceName: "image_carousel_3")),
                 cellData(cell: 1, text: "えええ", image: #imageLiteral(resourceName: "image_carousel_1"))]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if array[indexPath.row].cell == 1{
            let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
            cell.mainImageVIew.image = array[indexPath.row].image
            cell.mainLabel.text = array[indexPath.row].text
            return cell
        } else if array[indexPath.row].cell == 2{
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.mainImageView.image = array[indexPath.row].image
            cell.mainLabel.text = array[indexPath.row].text
            return cell
        } else {
            let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
            cell.mainImageVIew.image = array[indexPath.row].image
            cell.mainLabel.text = array[indexPath.row].text
            return cell
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if array[indexPath.row].cell == 1{
            return 236.5
        } else if array[indexPath.row].cell == 2{
            return 116
        } else {
            return 236.5
        }
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
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
