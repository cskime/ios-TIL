//
//  RendererOverlayViewController.swift
//  MapKitExample
//
//  Created by giftbot on 2020. 1. 5..
//  Copyright © 2020년 giftbot. All rights reserved.
//

import MapKit
import UIKit

final class RendererOverlayViewController: UIViewController {
    
    @IBOutlet private weak var mapView: MKMapView!
    
    @IBAction func addCircle(_ sender: Any) {
        let center = mapView.centerCoordinate
        let circle = MKCircle(center: center, radius: 40000) // 미터 단위
        mapView.addOverlay(circle)
    }
    
    @IBAction func addStar(_ sender: Any) {
        let center = mapView.centerCoordinate
        var point1 = center; point1.latitude += 0.65
        var point2 = center; point2.longitude += 0.4;   point2.latitude -= 0.15
        var point3 = center; point3.longitude -= 0.45;  point3.latitude += 0.4
        var point4 = center; point4.longitude += 0.45;  point4.latitude += 0.4
        var point5 = center; point5.longitude -= 0.4;   point5.latitude -= 0.15
        let points: [CLLocationCoordinate2D] = [point1, point2, point3, point4, point5, point1]
        let polyline = MKPolyline(coordinates: points, count: points.count)
        mapView.addOverlay(polyline)
    }
    
    @IBAction private func removeOverlays(_ sender: Any) {
        mapView.removeOverlays(mapView.overlays)
    }
}

// MARK:- MKMapViewDelegate

extension RendererOverlayViewController: MKMapViewDelegate {
    // 추가된 overray가 들어옴
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if let circle = overlay as? MKCircle {
            let renderer = MKCircleRenderer(circle: circle)
            renderer.strokeColor = .blue
            renderer.lineWidth = 2
            return renderer
        }
        if let polyline = overlay as? MKPolyline {
            let renderer = MKPolylineRenderer(polyline: polyline)
            renderer.strokeColor = .red
            renderer.lineWidth = 2
            return renderer
        }
        return MKOverlayRenderer(overlay: overlay)
    }
}
