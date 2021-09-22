//
//  InitialViewController.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 20-09-21.
//

import UIKit
import Alamofire

class InitialViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var participantsTextField: UITextField!
    @IBOutlet weak var sliderBar: UISlider!
    @IBOutlet weak var priceLabel: UILabel!
    
//    private var viewModel: SuggestionViewModel?
    
    let suggestionViewController = SuggestionViewController(nibName: "SuggestionViewController", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startButton.layer.cornerRadius = 5
        startButton.clipsToBounds = true
        
        participantsTextField.addTarget(self, action:  #selector(textFieldDidChange(_:)),  for:.editingChanged )
//        viewModel = SuggestionViewModel(suggestionServices: ServiceManager())
    }
    
    @objc func textFieldDidChange(_ sender: UITextField) {
        
        if (Int(participantsTextField.text!) != nil) && Int(participantsTextField.text!)! > 0 {
            startButton.isEnabled = true
        } else {
            startButton.isEnabled = false
        }
        
    }

    @IBAction func sliderBarChange(_ sender: UISlider) {
        let price = String(format: "%.1f", sender.value)
        priceLabel.text = String(price)
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        

//        viewModel?.getSuggestion(completion: {
//            print("Ok")
//        })
        presentTapBarController()
        
    }
    
    

    @IBAction func termsAndConditionsTapped(_ sender: Any) {
        let termsAndConditionsVC = TermsAndConditionsViewController(nibName: "TermsAndConditionsViewController", bundle: nil)
        termsAndConditionsVC.modalPresentationStyle = .fullScreen
        self.present(termsAndConditionsVC, animated: true, completion: nil)
    }
    
    func presentTapBarController() {
        let tabBarController = TabBarController()
        
        tabBarController.textExample.0 = participantsTextField.text
        tabBarController.textExample.1 = priceLabel.text
        
        tabBarController.modalPresentationStyle = .overFullScreen
     
        present(tabBarController, animated: true)
    }
    
    

}
