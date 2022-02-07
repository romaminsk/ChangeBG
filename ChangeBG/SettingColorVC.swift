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
        setSliders()
    }

    @IBAction private func redSliderAction(_ sender: UISlider) {
        redTextField.text = String(Float(sender.value))
        updateColor()
    }

    @IBAction private func greenSliderAction(_ sender: UISlider) {
        greenTextField.text = String(Float(sender.value))
        updateColor()
    }

    @IBAction private func blueSliderAction(_ sender: UISlider) {
        blueTextField.text = String(Float(sender.value))
        updateColor()
    }

    @IBAction private func opacitySliderAction(_ sender: UISlider) {
        opacityTextField.text = String(Float(sender.value))
        updateColor()
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

    private func updateColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let opacity = CGFloat(opacitySlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: opacity)
    }

    private func setSliders() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0.5

        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0.5

        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0.5

        opacitySlider.minimumValue = 0
        opacitySlider.maximumValue = 1
        opacitySlider.value = 0.5
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
