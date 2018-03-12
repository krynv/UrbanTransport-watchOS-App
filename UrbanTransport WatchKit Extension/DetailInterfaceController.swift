//
//  DetailInterfaceController.swift
//  UrbanTransport WatchKit Extension
//
//  Created by Vitaliy Krynytskyy on 12/03/2018.
//  Copyright © 2018 Vitaliy Krynytskyy. All rights reserved.
//

import Foundation
import WatchKit

class DetailInterfaceController: WKInterfaceController {
    

    @IBOutlet var detailLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // providing the data as a string (unwrapping)
        if let detailData = context as? String {
            
            if (detailData.contains("Scan Token")) {
                detailLabel.setText(detailData)
            } else if (detailData.contains("View Profile")) {
                detailLabel.setText("Vitaliy\n\nCurrent Credit: XXX")
            } else {
                detailLabel.setText("Added\nX\namount\nof\ncredits")
            }
        }
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
}
