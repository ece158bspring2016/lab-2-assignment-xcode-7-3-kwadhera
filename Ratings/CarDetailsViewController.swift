//
//  CarDetailsViewController.swift
//  Ratings
//
//  Created by Karan Wadhera on 5/7/16.
//  Copyright © 2016 Karan Wadhera. All rights reserved.
//

import UIKit

class CarDetailsViewController: UITableViewController {
    var car:Car?
    @IBOutlet weak var labelYear: UILabel!
    @IBOutlet weak var sliderYear: UISlider!
    @IBOutlet weak var switchSedan: UISwitch!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBAction func sliderYearValueChanged(sender: UISlider) {
        let currentValue = Int(sender.value);
        labelYear.text = "\(currentValue)";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SaveCarDetail" {
            var isSedan:Bool;
            
            if switchSedan.on {
                isSedan = true;
            } else {
                isSedan = false;
            }
            car = Car(type: nameTextField.text!, year: Int(sliderYear.value), isSedan: isSedan)
        }
    }

}
