//
//  ContactViewController.swift
//  Master Kebab
//
//  Created by Rehan Mirza on 09/06/2020.
//  Copyright © 2020 Rehan Mirza. All rights reserved.
//

import UIKit
import MapKit

class ContactViewController: UIViewController {

    @IBOutlet var mapview: MKMapView!
    
    //Master kebabs kat and long
    //51.372758, 0.558175
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 51.372758, longitude: 0.558175)
        annontation.title = "Master Kebabs"
        mapview.addAnnotation(annontation)
        
        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        mapview.setRegion(region, animated: true)

    }
    
    
    
    class viewcontroller: UIViewController {
        @IBAction func phone(_ sender: UIButton) {
        }
        
        func makePhoneCall(phoneNumber: String) {

            if let phoneURL = NSURL(string: ("tel://" + phoneNumber)) {

                let alert = UIAlertController(title: ("Call " + phoneNumber + "01634582488"), message: nil, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Call", style: .default, handler: { (action) in
                    UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
                }))

                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        override func viewDidLoad() {
            super.viewDidLoad()
        }
    }

    /*
    // MARK: - Navigation

    // In la storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
