//
//  MainVC.swift
//  ChangeBG
//
//  Created by Roma on 7.02.22.
//

import UIKit

class MainVC: UIViewController, ChangeColorDelegate{
    
    var vcSettings = SettingColorVC()
    
    func changeColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vcSettings.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vcSettings = segue.destination as? SettingColorVC {
            vcSettings.delegate = self
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
