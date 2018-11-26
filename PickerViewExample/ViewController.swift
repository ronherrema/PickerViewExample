//
//  ViewController.swift
//  PickerViewExample
//
//  Created by R J Herrema on 26/11/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit

// the class adopts two 'protocols', the Picker View Delegate, and the Picker Data Source
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // the array used to populate the picker view
    var teas = ["Earl Gray", "Oolong", "Peppermint", "Chamomille", "English Breakfast", "Chai", "Lemongrass"]
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // delegate and data source, from the protocols above, are assigned to self - i.e. this ViewController class
        teaSelector.delegate = self
        teaSelector.dataSource = self
    }
    
    // the number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // the number of rows, taken from the array above
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teas.count
    }
    
    // updates the picker display
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teas[row]
    }
    
    // the selected row number is accessible as an integer
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedTea.text = teas[row]
    }

    // needed only for the delegation and data source assignment above
    @IBOutlet weak var teaSelector: UIPickerView!
    
    // for display of the chosen tea to the label
    @IBOutlet weak var selectedTea: UILabel!
    

}

