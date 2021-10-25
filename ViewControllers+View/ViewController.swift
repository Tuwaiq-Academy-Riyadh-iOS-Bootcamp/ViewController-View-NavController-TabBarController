//
//  ViewController.swift
//  ViewControllers+View
//
//  Created by يعرُب on 18/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func moveToSecondScreenButtonClicked(_ sender: Any) {
        let text = titleLabel.text
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondScreenVC
        vc.myText = text!
        
        
        self.navigationController?.pushViewController(vc, animated: true)

        //        push(vc!, animated: true) {
//            print("done")
//        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        let id = segue.identifier
//
//        if id == "toSecondVCSegue" {
//            let vc = segue.destination as! SecondScreenVC
//            vc.myText = titleLabel.text!
//
//        }
    }
    

}


