//
//  NetworkingManager.swift
//  API
//
//  Created by Artem Zhuzhgin on 15.01.2022.
//

import Foundation
import UIKit

class NetworkManager {
    
    static var shared = NetworkManager()
    private init() {}
    
    func showWeather(url:String, complition: @escaping( _ curentWeather: Weather ) -> Void) {
        
        
        
        guard let url = URL(string: url) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error descriotion")
                return
            }
        
            guard let weather = try? JSONDecoder().decode(Weather.self, from: data) else {return}
            
            
            DispatchQueue.main.async {
                complition(weather)
            }
            
            
            
        } .resume()
       
      
        
        
    }
    
    func showIcon(url:String, complition: @escaping(_ icone: UIImage ) -> Void) {
        guard let url = URL(string: url) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error descriotion")
                return
            }
            guard let icon = UIImage(data: data) else {return}
            
            DispatchQueue.main.async {
                complition(icon)
            }
        } .resume()
}
}
