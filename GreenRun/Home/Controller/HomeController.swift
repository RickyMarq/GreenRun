//
//  ViewController.swift
//  GreenRun
//
//  Created by Henrique Marques on 25/03/24.
//

import UIKit
import MapKit
import CoreLocation

class HomeController: UIViewController {
    
    var homeView: HomeView?
    private var locationManager: CLLocationManager = CLLocationManager()
    private var currentUserLocation: MKCoordinateRegion?
    
    override func loadView() {
        self.homeView = HomeView()
        self.view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configNavigationController()
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        
        if let firstLocation = locationManager.location?.coordinate {
            let initialRegion = MKCoordinateRegion(center: firstLocation, latitudinalMeters: 500.0, longitudinalMeters: 500.0)
            self.homeView?.mapView.setRegion(initialRegion, animated: true)
        }
    }

    func configNavigationController() {
        self.title = "Green Run"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func userPositionOnMap() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        
        let firstLocation = locationManager.location?.coordinate
        if let userLocation = firstLocation {
            let initialRegion = MKCoordinateRegion(center: userLocation, latitudinalMeters: 1000.0, longitudinalMeters: 1000.0)
            homeView?.mapView.setRegion(initialRegion, animated: true)
      //      userLocationAnimateOn()
        }
    }
    

}

extension HomeController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
            if CLLocationManager.isMonitoringAvailable(for: CLBeaconRegion.self) {
                if CLLocationManager.isRangingAvailable() {
                    // do stuff
                }
            }
        }
    }
}
