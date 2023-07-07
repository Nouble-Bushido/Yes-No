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
        let numbers = [1, 2, 3]
                let randomIndex = Int.random(in: 0..<numbers.count)
                let answer = numbers[randomIndex]
    }
    
    func hideLabels(completion: @escaping () -> Void) {
            UIView.animate(withDuration: 0.3, animations: {
                self.yesLabel.alpha = 0
                self.noLabel.alpha = 0
                self.noAnswerLabel.alpha = 0
                self.getAnswerButton.tintColor = .blue
            }, completion: { _ in
                self.labelHidden()
                UIView.animate(withDuration: 0.3, animations: {
                    self.yesLabel.alpha = 1
                    self.noLabel.alpha = 1
                    self.noAnswerLabel.alpha = 1
                    self.getAnswerButton.tintColor = .white
                }, completion: { _ in
                    completion()
                })
            })
        }
    
    func labelHidden() {
           yesLabel.isHidden = true
           noLabel.isHidden = true
           noAnswerLabel.isHidden = true
       }
}
