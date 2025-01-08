//
//  ViewController.swift
//  CountryPicker
//
//  Created by Thaha on 08/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var countryCodeLbl: UILabel!
    @IBOutlet weak var countryLbl: UILabel!
    public weak var delegate: DialCountriesControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnPickedCountry(_ sender: Any) {
        let controller = DialCountriesController(locale: Locale(identifier: "en_US"))
        controller.delegate = self
        controller.show(vc: self)
    }
    
}
extension ViewController: DialCountriesControllerDelegate{
    func didSelected(with country: Country) {
        countryLbl.text  = country.name
        countryCodeLbl.text = country.dialCode
    }
    
    
}

