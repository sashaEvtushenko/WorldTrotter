//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Sasha Evtushenko on 6/23/20.
//  Copyright © 2020 Sasha Evtushenko. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    var pointsOfInterestLabel: UILabel!
    var pointsOfInterestSwitch: UISwitch!
    
    override func loadView() {
        // Create a map view
        mapView = MKMapView()
        // Set it at the view of the view controller
        view = mapView
        
        // Create segmented control
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let margins = view.layoutMarginsGuide
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        // Set up UILabel
        pointsOfInterestLabel = UILabel()
        pointsOfInterestLabel.text = "Points of Interest"
        pointsOfInterestLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointsOfInterestLabel)
        pointsOfInterestLabel.topAnchor.constraint(equalTo: segmentedControl.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        pointsOfInterestLabel.leadingAnchor.constraint(equalTo: segmentedControl.safeAreaLayoutGuide.leadingAnchor).isActive = true
        
        // Set up UISwitch
        pointsOfInterestSwitch = UISwitch()
        
        pointsOfInterestSwitch.addTarget(self, action: #selector(showPoints(_:)), for: .valueChanged)
        
        pointsOfInterestSwitch.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointsOfInterestSwitch)
        pointsOfInterestSwitch.centerYAnchor.constraint(equalTo: pointsOfInterestLabel.safeAreaLayoutGuide.centerYAnchor).isActive = true
        pointsOfInterestSwitch.leadingAnchor.constraint(equalTo: pointsOfInterestLabel.safeAreaLayoutGuide.trailingAnchor, constant: 8).isActive = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded.")
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    @objc func showPoints(_ pointsSwitcher: UISwitch) {
        switch pointsSwitcher.isOn {
        case true:
            mapView.pointOfInterestFilter = MKPointOfInterestFilter.includingAll
        case false:
            mapView.pointOfInterestFilter = MKPointOfInterestFilter.excludingAll
        }
    }
}
