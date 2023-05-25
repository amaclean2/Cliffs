//
//  MapBoxMapView.swift
//  Cliffs
//
//  Created by Andrew Maclean on 5/15/23.
//

import SwiftUI
import MapboxMaps

struct MapboxView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> MapViewController {
        return MapViewController()
    }
    
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {}
}

class MapViewController: UIViewController {
    internal var mapView: MapView!
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let myResourceOptions = ResourceOptions(accessToken: "pk.eyJ1IjoiYW1hY2xlYW4iLCJhIjoiY2wydzM2YjB2MGh4dzNqb2FpeTg2bmo4dSJ9.KSDbOciqbYDn5eA4SHNOZg"
        )
        let myMapInitOptions = MapInitOptions(resourceOptions: myResourceOptions)
        
        mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOptions)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(mapView)
    }
}
