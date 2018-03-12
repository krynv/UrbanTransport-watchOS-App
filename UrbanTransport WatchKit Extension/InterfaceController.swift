//
//  InterfaceController.swift
//  UrbanTransport WatchKit Extension
//
//  Created by Vitaliy Krynytskyy on 12/03/2018.
//  Copyright © 2018 Vitaliy Krynytskyy. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tableView: WKInterfaceTable!
     let tableData = ["Scan Token", "View Profile", "Add Credit"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        loadTableData()
        // Configure interface objects here.
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        
        // context = data... data at the index you tapped on
        // name = the controller you're passing teh information to
        
        pushController(withName: "DetailInterfaceController", context: tableData[rowIndex])
    }
    
    private func loadTableData() {
        
        // every row is of type: - also has attribute value in storyboard (don't forget)
        tableView.setNumberOfRows(tableData.count, withRowType: "RowController")
        
        // row model corresponds with each attribute in data source, will also give you index of that item (particular row)
        for (index, rowModel) in tableData.enumerated() {
            if let rowController = tableView.rowController(at: index) as? RowController {
                // set the row's label to the text from our data source
                rowController.rowLabel.setText(rowModel)
            }
        }
        
    }

}
