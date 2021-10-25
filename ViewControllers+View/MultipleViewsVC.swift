//
//  MultipleViewsVC.swift
//  ViewControllers+View
//
//  Created by يعرُب on 19/03/1443 AH.
//

import UIKit

class MultipleViewsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRects()
        
//        let w = UIScreen.main.bounds.width
//        let h = UIScreen.main.bounds.height
//
//
//        let rectHeight = 200.0
//        let rectWidth = 200.0
//
//        let myView = UIView(frame: CGRect(x: w/2 - rectWidth/2, y: h/2 - rectHeight/2, width: rectWidth, height: rectHeight ))
//
//
//        myView.backgroundColor = UIColor.yellow
//        self.view.addSubview(myView)
        
        
        
    }
    
    private func makeRects()
    {
        var numOfColumns = 10
        var counter = 1
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let rectWidth = screenWidth/Double(numOfColumns)
        let rectHeight = screenHeight/Double(numOfColumns)
        
        
        for i in 1...numOfColumns {
            for j in 1...numOfColumns {
                let rect = CGRect(x: CGFloat(j-1)*rectWidth, y: CGFloat(i-1)*rectHeight, width: rectWidth, height: rectHeight)
                let v = UILabel(frame: rect)
                v.text = "\(counter)"
                v.textAlignment = .center
                counter+=1
                v.font = UIFont(name: "ArialRoundedMTBold", size: 12)
                v.backgroundColor = UIColor.orange
                self.view.addSubview(v)
            }
            
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
