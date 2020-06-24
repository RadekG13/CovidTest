//
//  CVNewTemp.swift
//  CoronaTest
//
//  Created by Student31 on 05/06/2020.
//  Copyright © 2020 Student31. All rights reserved.
//

import UIKit

class CVNewTemp: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var tempN: UILabel!
    
    var te=36.6;
    
    @IBAction func TempStepper(_ sender: UIStepper) {
        te=sender.value;
        tempN.text=String(format: "%.1f",sender.value);
    }
    
    
    
    @IBAction func Enter(_ sender: UIButton) {
        
        if(te>37.5){
            performSegue(withIdentifier: "TempToRisk", sender: "")
        }
        else{
performSegue(withIdentifier: "TempToGreen", sender: "")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
