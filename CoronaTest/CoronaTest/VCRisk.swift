//
//  VCRisk.swift
//  CoronaTest
//
//  Created by Student31 on 04/06/2020.
//  Copyright © 2020 Student31. All rights reserved.
//

import UIKit

class VCRisk: UIViewController {

    override func loadView() {
        super.loadView()
        print("second loadView")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
print("second viewDidLoad")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("second viewWillAppear")     }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("second viewDidAppear")     }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("second viewWillDisappear")     }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("second viewDidDisapear")     }
    
    var corona=0;
    @IBAction func faver(_ sender: UISwitch) {
        if(sender.isOn==true){
            corona=corona+1;
        }
        else{
            corona=corona-1;
        }
    }
    
    @IBAction func cought(_ sender: UISwitch) {
          if(sender.isOn==true){
                  corona=corona+1;
              }
              else{
                  corona=corona-1;
              }    }
    
    
    @IBAction func headaches(_ sender: UISwitch) {
          if(sender.isOn==true){
                  corona=corona+1;
              }
              else{
                  corona=corona-1;
              }    }
    
    
    @IBAction func enter(_ sender: UIButton) {
        if(corona>1){
performSegue(withIdentifier: "RiskToDanger", sender: "")
        }
        else{
            performSegue(withIdentifier: "RiskToCaution", sender: "")        }
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
