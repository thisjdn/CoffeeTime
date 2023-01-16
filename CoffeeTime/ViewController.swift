//
//  ViewController.swift
//  CoffeeTime
//
//  Created by Jaden Hong on 2023-01-07.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    let testLongitude : CLLocationDegrees = -79.38
    let testLatitude : CLLocationDegrees = 43.65
    

    override func viewDidLoad() {
        super.viewDidLoad() 
        // Do any additional setup after loading the view.
        createMap(lon: testLongitude, lat: testLatitude)
    }
    
    func createMap(lon: CLLocationDegrees, lat: CLLocationDegrees) {
        let camera = GMSCameraPosition.camera(withLatitude: lat, longitude: lon, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        view.addSubview(mapView)
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: testLatitude, longitude: testLongitude)
        marker.title = "Toronto"
        marker.snippet = "Canada"
        marker.map = mapView
    }


}

