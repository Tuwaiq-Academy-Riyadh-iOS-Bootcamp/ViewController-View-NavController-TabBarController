//
//  SecondScreenVC.swift
//  ViewControllers+View
//
//  Created by يعرُب on 18/03/1443 AH.
//

import UIKit

class SecondScreenVC: UIViewController {

    var myText = ""
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myText

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeButtonClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
