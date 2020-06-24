//
//  ViewController.swift
//  CoronaTest
//
//  Created by Student31 on 04/06/2020.
//  Copyright © 2020 Student31. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageLbl: UILabel!
    var age=30;
    @IBAction func Slider(_ sender: UISlider) {
        ageLbl.text=String(Int(sender.value));
        age=Int(sender.value)
    }
    
    override func loadView() {
        super.loadView()
        print("first loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("first viewDidLoad")        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("first viewWillAppear")     }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("first viewDidAppear")     }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("first viewWillDisappear")     }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("first viewDidDisapear")     }
    
    
    @IBAction func ButtonClicked(_ sender: Any) {
        if(age>50){
            
        performSegue(withIdentifier: "AgeToRisk", sender: "")
        }
        else{
        performSegue(withIdentifier: "AgeToAbroad", sender: "")
        }
        
    }
    @IBAction func returned(segue: UIStoryboardSegue){
        
    }
}

