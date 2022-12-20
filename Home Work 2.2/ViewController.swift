//
//  ViewController.swift
//  Home Work 2.2
//
//  Created by Nikita Kuznetsov on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //MARK: View
        
        //MARK: labels
        redLabel.textColor = .red
        greenLabel.textColor = .green
        blueLabel.textColor = .blue
        //MARK: Sliders
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redLabel.text = "Red: \(String(Int(redSlider.value)))"
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1)
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenLabel.text = "Green: \(String(Int(greenSlider.value)))"
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1)
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueLabel.text = "Blue: \(String(Int(blueSlider.value)))"
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1)
    }
    
}

