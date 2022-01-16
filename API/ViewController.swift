//
//  ViewController.swift
//  API
//
//  Created by Artem Zhuzhgin on 14.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageFromURL: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    
    var city: City!
    var iconUrl: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let url = city.weatherUrl
       
        NetworkManager.shared.showWeather(url: url) { (weather) in
            let iconUrl = "http:\(weather.current.condition.icon)"

            print(self.iconUrl)
            self.weatherLabel.text =
            """
             City: \(weather.location.name)
             Time updating: \(weather.current.last_updated)
             Temperature: \(weather.current.temp_c)
             Wind Speed_kph: \(weather.current.wind_kph)
             """
            
            NetworkManager.shared.showIcon(url: iconUrl) { (icon) in
                                    self.imageFromURL.image = icon
                                }
            
        }
    }
}
