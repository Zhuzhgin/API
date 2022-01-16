//
//  DataManager.swift
//  API
//
//  Created by Artem Zhuzhgin on 16.01.2022.
//

import Foundation



class DataManager  {
    static let shared = DataManager()
    let cities = [
        "Moskow": "http://api.weatherapi.com/v1/current.json?key=f8b11debd58a47d182d142534221501&q=Moscow&aqi=no",
        "Tyumen": "http://api.weatherapi.com/v1/current.json?key=f8b11debd58a47d182d142534221501&q=Tyumen&aqi=no",
        "Ekaterinburg": "http://api.weatherapi.com/v1/current.json?key=f8b11debd58a47d182d142534221501&q=Ekaterinburg&aqi=no",
        "Ufa": "http://api.weatherapi.com/v1/current.json?key=f8b11debd58a47d182d142534221501&q=Ufa&aqi=no",
        "S.Peterburg": "http://api.weatherapi.com/v1/current.json?key=f8b11debd58a47d182d142534221501&q=Peterburg&aqi=no"
    ]
  
    private init() {}
}




