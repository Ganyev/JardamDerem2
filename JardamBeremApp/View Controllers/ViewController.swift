//
//  ViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/30/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ViewController : UIViewController {
    
    var exampleCityId = "1"
    var datamanager = DataManager.manager
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ServerManager.shared.getCities(completion : printCities, error: printError)
       
    }
    
    func printCities(cities : CityResult) {
        for i in cities.results {
            print(i.city_name ?? "empty")
        }
        datamanager.cities = cities.results
        
    }
    
    func printError(error : String) {
        print(error)
    }
    
}

