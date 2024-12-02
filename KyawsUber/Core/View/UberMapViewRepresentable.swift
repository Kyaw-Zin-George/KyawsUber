//
//  UberMapViewRepresentable.swift
//  KyawsUber
//
//  Created by Kyaw Thant Zin(George) on 9/19/24.
//

import SwiftUI
import MapKit

//not know anything about map delegate
struct UberMapViewRepresentable: UIViewRepresentable{
    
    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    //creating coordinatior
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}
extension UberMapViewRepresentable {
    //coordinator object
    class MapCoordinator :NSObject, MKMapViewDelegate{
        let parent: UberMapViewRepresentable
        
        init(parent: UberMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation : MKUserLocation) {
            let region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
            parent.mapView.setRegion(region, animated: true)
            
        }
    }
}
