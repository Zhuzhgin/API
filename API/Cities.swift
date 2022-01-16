//
//  Cities.swift
//  API
//
//  Created by Artem Zhuzhgin on 16.01.2022.
//

import Foundation

struct City {
    let name: String
    let weatherUrl: String
    
    static func returnArrayOfCities() -> [City] {
        var citiesArray: [City] = []
        for (name, url) in DataManager.shared.cities {
            let city = City(
                name: name,
                weatherUrl: url)
            //print(name)
            citiesArray.append(city)
        }
        print(citiesArray[0].name)
        return citiesArray
    }
    
}





