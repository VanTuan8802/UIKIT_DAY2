//
//  ViewController.swift
//  BMI
//
//  Created by Nguyễn Tuấn on 09/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var viewBoy: UIView!
    @IBOutlet weak var male: UIImageView!
    @IBOutlet weak var lableMale: UILabel!
    
    @IBOutlet weak var viewGirl: UIView!
    @IBOutlet weak var lableFemale: UILabel!
    @IBOutlet weak var female: UIImageView!
   

    @IBOutlet weak var viewHeight: UIView!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var valueHeight: UILabel!
    @IBOutlet weak var sliderHight: UISlider!
    
    @IBOutlet weak var viewWeight: UIView!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var valueWeight: UILabel!
    @IBOutlet weak var weightStepper: UIStepper!
    
    @IBOutlet weak var viewAge: UIView!
    @IBOutlet weak var ageStepper: UIStepper!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var valuege: UILabel!
    
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    func setUI()
    {
        view.backgroundColor = .lightGray
        label.text = "BMI CALCULATOR"
        label.frame = CGRect(x: 85, y: 80, width: 250, height: 20)
        label.font = .systemFont(ofSize: 26)
        
        viewBoy.backgroundColor = .darkGray
        male.image = UIImage(named: "MALE")
        male.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
        lableMale.text = "MALE"
        lableMale.frame = CGRect(x: 60, y: 125, width: 100, height: 15)
        lableMale.textColor = .lightGray
        
        viewGirl.backgroundColor = .darkGray
        female.image = UIImage(named: "FEMALE")
        female.frame = CGRect(x: 60, y: 60, width: 50, height: 50)
        lableFemale.text = "FEMALE"
        lableFemale.frame = CGRect(x: 50, y: 125, width: 100, height: 15)
        lableFemale.textColor = .lightGray
        
        viewHeight.backgroundColor = .darkGray
        height.text = "HEIGHT"
        height.frame = CGRect(x: 160, y: 20, width: 80, height: 20)
        valueHeight.frame = CGRect(x: 160, y: 80, width: 40, height: 15)
        valueHeight.textColor = .white
        valueHeight.font = .systemFont(ofSize: 20)
        valueHeight.text = "100"
        
        viewWeight.backgroundColor = .darkGray
        weight.text = "WEIGHT"
        weight.frame = CGRect(x: 60, y: 20, width: 80, height: 20)
        valueWeight.frame = CGRect(x: 70, y: 70, width: 40, height: 15)
        valueWeight.textColor = .white
        valueWeight.font = .systemFont(ofSize: 20)
        valueWeight.text = "50"
        
        viewAge.backgroundColor = .darkGray
        age.text = "AGE"
        age.frame = CGRect(x: 70, y: 20, width: 80, height: 20)
        valuege.text = "20"
        valuege.frame = CGRect(x: 70, y: 70, width: 40, height: 15)
        valuege.textColor = .white
        valuege.font = .systemFont(ofSize: 20)
        
        button.setTitle("CACULATE", for: .normal)
        button.backgroundColor = .systemTeal
        button.titleLabel?.font = .systemFont(ofSize: 26)
        button.frame = CGRect(x: 10, y: 750, width: 350, height: 50)
    }

    @IBAction func changeHeight(_ sender: UISlider) {
        let a :Int = Int(sender.value)
        valueHeight.text = "\(a)"
    }
    
    @IBAction func changeWeight(_ sender: UIStepper) {
        valueWeight.text = "\(Int(sender.value))"
    }
    @IBAction func changeAge(_ sender: UIStepper) {
        valuege.text = "\(Int(sender.value))"
    }
}

