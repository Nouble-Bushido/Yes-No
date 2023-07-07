//
//  ViewController.swift
//  YesNo
//
//  Created by Артем Чжен on 06/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yesLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var noLabel: UILabel!
    @IBOutlet weak var getAnswerButton: UIButton!
    @IBOutlet weak var noAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    getAnswerButton.layer.cornerRadius = 8
                labelHidden()
    
    }
    
    @IBAction func pressButton(_ sender: Any) {
    }
    
    
    func labelHidden() {
           yesLabel.isHidden = true
           noLabel.isHidden = true
           noAnswerLabel.isHidden = true
       }
}
