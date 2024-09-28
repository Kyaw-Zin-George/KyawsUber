//
//  LocationManager.swift
//  KyawsUber
//
//  Created by Kyaw Thant Zin(George) on 9/28/24.
//

import Foundation
import CoreLocation

class LocationManager:NSObject,ObservableObject {
    private let locationManager = CLLocationManager()
    
    override init(){
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}


