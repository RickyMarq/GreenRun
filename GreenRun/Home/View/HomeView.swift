//
//  HomeView.swift
//  GreenRun
//
//  Created by Henrique Marques on 25/03/24.
//

import UIKit
import MapKit

class HomeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    lazy var mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.layer.masksToBounds = true
        mapView.mapType = .standard
        mapView.showsUserLocation = true
        mapView.tintColor = .systemBlue
        mapView.showsCompass = true
        return mapView
    }()
    
    func setUpView() {
        self.addSubview(mapView)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.mapView.topAnchor.constraint(equalTo: self.topAnchor),
            self.mapView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.mapView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.mapView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        
        ])
    }
}
