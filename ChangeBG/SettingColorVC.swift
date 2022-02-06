//
//  SettingColorVC.swift
//  ChangeBG
//
//  Created by Roma on 6.02.22.
//

import UIKit

final class SettingColorVC: UIViewController {

    @IBOutlet private weak var redSlider: UISlider!
    @IBOutlet private weak var greenSlider: UISlider!
    @IBOutlet private weak var blueSlider: UISlider!
    @IBOutlet private weak var opacitySlider: UISlider!
    @IBOutlet private weak var colorView: UIView!
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var opacityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redSlider.minimumValue = 0
        redSlider.maximumValue = 100
        redSlider.value = 50
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 100
        greenSlider.value = 50
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 100
        blueSlider.value = 50
        
        opacitySlider.minimumValue = 0
        opacitySlider.maximumValue = 100
        opacitySlider.value = 50
    }
    
    @IBAction private func redSliderAction(_ sender: UISlider) {
        redTextField.text = String(Int(sender.value))
    }
    
    @IBAction private func greenSliderAction(_ sender: UISlider) {
        greenTextField.text = String(Int(sender.value))
    }
    
    @IBAction private func blueSliderAction(_ sender: UISlider) {
        blueTextField.text = String(Int(sender.value))
    }
    
    @IBAction private func opacitySliderAction(_ sender: UISlider) {
        opacityTextField.text = String(Int(sender.value))
    }
    
    @IBAction private func redField(_ sender: UITextField) {
    }
    
    @IBAction private func greenField(_ sender: Any) {
    }
    
    @IBAction private func blueField(_ sender: Any) {
    }
    
    @IBAction private func opacityField(_ sender: Any) {
    }
    
    @IBAction private func doneBtn(_ sender: Any) {
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
