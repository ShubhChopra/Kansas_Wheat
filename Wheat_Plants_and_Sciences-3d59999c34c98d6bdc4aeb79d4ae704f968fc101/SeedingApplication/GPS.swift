//
//  GPS.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/17/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation

import UIKit
import CoreLocation


class GPS: UIViewController, CLLocationManagerDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    var data = [ "Allen" ,
        "Anderson",
        "Atchison",
        "Barber",
        "Barton",
        "Bourbon",
        "Brown",
        "Butler",
        "Chase",
        "Chautauqua",
        "Cherokee" ,
          "Cheyenne",
        "Clark" ,
        "Clay",
        "Cloud" ,
        "Coffey" ,
        "Comanche" ,
        "Cowley" ,
        "Crawford",
        "Decatur" ,
        "Dickinson" ,
        "Doniphan",
        "Douglas",
        "Edwards",
        "Elk",
        "Ellis" ,
        "Ellsworth",
        "Finney" ,
        "Ford",
        "Franklin" ,
        "Geary",
        "Gove",
        "Graham",
        "Grant",
        "Gray",
        "Greeley",
        "Greenwood",
        "Hamilton",
        "Harper",
        "Harvey",
        "Haskell",
        "Hodgeman",
        "Jackson",
        "Jefferson",
        "Jewell",
        "Johnson",
        "Kearny",
        "Kingman",
        "Kiowa",
        "Labette",
        "Lane",
        "Leavenworth",
        "Lincoln",
        "Linn",
        "Logan",
        "Lyon",
        "McPherson",
        "Marion",
        "Marshall",
        "Meade",
        "Miami",
        "Mitchell",
        "Montgomery",
        "Morris",
        "Morton",
        "Nemaha",
        "Neosho",
        "Ness",
        "Norton",
        "Osage",
        "Osborne",
        "Ottawa",
        "Pawnee" ,
        "Phillips",
        "Pottawatomie",
        "Pratt",
        "Rawlins" ,
        "Reno",
        "Republic",
        "Rice",
        "Riley",
        "Rooks",
        "Rush" ,
        "Russell",
        "Saline",
        "Scott",
        "Sedgwick",
        "Seward",
        "Shawnee",
        "Sheridan",
        "Sherman",
        "Smith",
        "Stafford",
        "Stanton",
        "Stevens",
        "Sumner",
        "Thomas",
        "Trego",
        "Wabaunsee",
        "Wallace",
        "Washington",
        "Wichita",
        "Wilson",
        "Woodson",
        "Wyandotte"]
   
    @IBOutlet var County: UITextField!
    var picker = UIPickerView()
    internal func numberOfComponents(in pickerView: UIPickerView) -> Int
    {return 1}
    
    internal func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {return data.count}
    internal func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        County.text=data[row]
        self.view.endEditing(true)
    }
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
       picker.delegate=self
    picker.dataSource=self
    County.inputView=picker
    }
    
    let locationManager = CLLocationManager()
    
    
    var option="";
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error while updating location " + error.localizedDescription)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error)->Void in
            
            if (error != nil) {
                print("Reverse geocoder failed with error" + error!.localizedDescription)
                return
            }
            let locArray = locations as NSArray
            let locObj = locArray.lastObject as! CLLocation
            let coord = locObj.coordinate
            applicationVars.lat = "\(coord.latitude)"
            applicationVars.lon = "\(coord.longitude)"
            
            if placemarks!.count > 0 {
                let pm = placemarks![0] 
                self.displayLocationInfo(pm)
            } else {
                print("Problem with the data received from geocoder")
            }
        })
        
    };
    
    @IBAction func NW(_ sender: AnyObject) {
        applicationVars.district="NW";
        applicationVars.rate = "western"
            applicationVars.date = "zone1"
       
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
             }
    
    @IBAction func NC(_ sender: AnyObject) {
        applicationVars.district="NC";
        applicationVars.rate = "central"
        applicationVars.date = "zone2"
        
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
    }
    
    @IBAction func NE(_ sender: AnyObject) {
        applicationVars.district="NE";
        applicationVars.rate = "eastern"
        applicationVars.date = "zone2"
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
    }
    
    @IBAction func WC(_ sender: AnyObject) {
        applicationVars.district="WC";
        applicationVars.rate = "western"
        applicationVars.date = "zone1"
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
        
    }
    
    @IBAction func C(_ sender: AnyObject) {
        applicationVars.district="C";
        applicationVars.rate = "central"
        applicationVars.date = "zone2"
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
    }
    
    @IBAction func EC(_ sender: AnyObject) {
        applicationVars.district="EC";
        applicationVars.rate = "eastern"
        applicationVars.date = "zone3"
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
        
    }
    @IBAction func SW(_ sender: AnyObject) {
        applicationVars.district="SW";
        applicationVars.rate = "western"
        applicationVars.date = "zone2"
        
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
        
    }
    
    @IBAction func SC(_ sender: AnyObject) {
        applicationVars.district="SC";
        applicationVars.rate = "central"
        applicationVars.date = "zone3"
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
    }
    
    @IBAction func SE(_ sender: AnyObject) {
        applicationVars.district="SE";
        applicationVars.rate = "eastern"
        applicationVars.date = "zone4"
        self.performSegue(withIdentifier: "mainscreen", sender: nil)
    }
    
    @IBAction func SAve(_ sender: AnyObject) {
        
        if( County.text=="Cheyenne" || County.text=="Rawlins" || County.text=="Decatur" || County.text=="Norton" || County.text=="Sherman" || County.text=="Thomas" || County.text=="Sheridan" || County.text=="Graham" )
        {applicationVars.district="NW";
            applicationVars.date = "zone1";
        }
        if(County.text=="Cheyenne" || County.text=="Sherman" || County.text=="Wallace" || County.text=="Logan" || County.text=="Greeley" || County.text=="Wichita" || County.text=="Scott" || County.text=="Hamilton" || County.text=="Kearny" || County.text=="Finney" ||  County.text=="Stanton" || County.text=="Morton" ||
       County.text=="Grant" ||  County.text=="Stevens" || County.text=="Seward" || County.text=="Haskell" )
        {
        applicationVars.rate="western"
        }
        if ( County.text=="Wallace" || County.text=="Logan" || County.text=="Gove" || County.text=="Greeley" || County.text=="Wichita" )
        {
            applicationVars.date = "zone1";
        }
        if( County.text=="Phillips" || County.text=="Smith" || County.text=="Jewell" || County.text=="Republic" || County.text=="Washington" || County.text=="Rooks" || County.text=="Osborne" || County.text=="Mitchell" || County.text=="Cloud" || County.text=="Ottawa" || County.text=="Clay" )
        {applicationVars.district="NC";
            applicationVars.date = "zone2"
        }
        if ( County.text=="Marshall" || County.text=="Nemaha" || County.text=="Brown" || County.text=="Doniphan" || County.text=="Riley" || County.text=="Pottawatomie" || County.text=="Johnson" || County.text=="Atchison" || County.text=="Ellis" || County.text=="Russell" ||  County.text=="Pawnee" || County.text=="Hamilton" || County.text=="Kearny" || County.text=="Finney" || County.text=="Hodgeman" || County.text=="Trego" || County.text=="Scott" || County.text=="Lane" || County.text=="Ness" || County.text=="Lincoln" || County.text=="Rush" || County.text=="Barton" || County.text=="Morton" || County.text=="Stevens" ||  County.text=="Stanton" || County.text=="Grant" || County.text=="Haskell" || County.text=="Gray")
        {
        applicationVars.date = "zone2"
        }
        if( County.text=="Marshall" || County.text=="Nemaha" || County.text=="Brown" || County.text=="Doniphan" || County.text=="Riley" || County.text=="Pottawatomie" || County.text=="Johnson" || County.text=="Atchison" || County.text=="Jefferson" || County.text=="Leavenworth" || County.text=="Wyandotte")
        {applicationVars.district="NE";
            applicationVars.rate = "eastern"
        }
        if( County.text=="Wallace" || County.text=="Logan" || County.text=="Gove" || County.text=="Trego" || County.text=="Greeley" || County.text=="Wichita" || County.text=="Scott" || County.text=="Lane" || County.text=="Ness" )
        {applicationVars.district="WC";}
        if( County.text=="Ellis" || County.text=="Russell" || County.text=="Saline" || County.text=="Lincoln" || County.text=="Dickinson" || County.text=="Rush" || County.text=="Barton" || County.text=="Ellsworth" || County.text=="Rice" || County.text=="McPherson" || County.text=="Marion" )
        {applicationVars.district="C";}
        if( County.text=="Geary" || County.text=="Morris" || County.text=="Chase" || County.text=="Wabaunsee" || County.text=="Lyon" || County.text=="Shawnee" || County.text=="Osage" || County.text=="Coffey" || County.text=="Douglas" || County.text=="Franklin" || County.text=="Anderson" || County.text=="Johnson" || County.text=="Miami" || County.text=="Linn" )
        {applicationVars.district="EC";
            applicationVars.rate = "eastern"
        }
        if( County.text=="Hamilton" || County.text=="Stanton" || County.text=="Morton" || County.text=="Kearny" || County.text=="Grant" || County.text=="Stevens" || County.text=="Finney" || County.text=="Haskell" || County.text=="Seward" || County.text=="Gray" || County.text=="Meade" || County.text=="Hodgeman" || County.text=="Ford" || County.text=="Clark" )
        {applicationVars.district="SW";}
        if( County.text=="Pawnee" || County.text=="Edwards" || County.text=="Kiowa" || County.text=="Comanche" || County.text=="Stafford" || County.text=="Pratt" || County.text=="Barber" || County.text=="Reno" || County.text=="Kingman" || County.text=="Harper" || County.text=="Harvey" || County.text=="Sedgwick" || County.text=="Sumner" )
        {applicationVars.district="SC";}
        if(County.text=="Sumner")
        {
        applicationVars.date="zone4"
        }
        if( County.text=="Butler" || County.text=="Cowley" || County.text=="Chautauqua" || County.text=="Greenwood" || County.text=="Elk" || County.text=="Woodson" || County.text=="Montgomery" || County.text=="Allen" || County.text=="Wilson" || County.text=="Neosho" || County.text=="Labette" || County.text=="Bourbon" || County.text=="Crawford" || County.text=="Cherokee" )
        {applicationVars.district="SE";
            applicationVars.date="zone4"
            applicationVars.rate = "eastern"
            
        }
        
        if(applicationVars.date=="" && County.text != "")
        {
        applicationVars.date="zone3"
        }
        if(applicationVars.rate=="" && County.text != "")
        
        {applicationVars.rate = "central"}
        if(County.text != "")
        {
            
            self.performSegue(withIdentifier: "mainscreen", sender: nil)
        }
    }
    
    func displayLocationInfo(_ placemark: CLPlacemark?) {
        if let containsPlacemark = placemark {
            //stop updating location to save battery life
            locationManager.stopUpdatingLocation()
            //let locality = (containsPlacemark.locality != nil) ? containsPlacemark.locality : ""
            //let postalCode = (containsPlacemark.postalCode != nil) ? containsPlacemark.postalCode : ""
            //let administrativeArea = (containsPlacemark.administrativeArea != nil) ? containsPlacemark.administrativeArea : ""
            let county = (containsPlacemark.subAdministrativeArea != nil) ? containsPlacemark.subAdministrativeArea : ""
            
            /* simplify location comfirmation informaiton
            var location = locality! + ", " + postalCode! + ", ";
            location = location +  administrativeArea! + ", " + county!;*/
            
            let Alert = UIAlertController(title: "Are you currently in " + county! + " county?", message: "We use your current location to adjust our seeding calculations. Select \"OK\" to use " + county! + " county or select \"Cancel\" to select manually below.", preferredStyle: UIAlertControllerStyle.alert)
            
            Alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
                print("Ok")
                
                applicationVars.county = county!
                
                if( county=="Cheyenne" || county=="Rawlins" || county=="Decatur" || county=="Norton" || county=="Sherman" || county=="Thomas" || county=="Sheridan" || county=="Graham" )
                {
                    applicationVars.district="NW";
                    applicationVars.date = "zone1";
                }
                if ( county=="Wallace" || county=="Logan" || county=="Gove" || county=="Greeley" || county=="Wichita" )
                {
                    applicationVars.date = "zone1";
                }
                if(county=="Cheyenne" || county=="Sherman" || county=="Wallace" || county=="Logan" || county=="Greeley" || county=="Wichita" || county=="Scott" || county=="Hamilton" || county=="Kearny" || county=="Finney" ||  county=="Stanton" || county=="Morton" ||
                    county=="Grant" ||  county=="Stevens" || county=="Seward" || county=="Haskell" )
                {
                    applicationVars.rate="western"
                }

                if( county=="Phillips" || county=="Smith" || county=="Jewell" || county=="Republic" || county=="Washington" || county=="Rooks" || county=="Osborne" || county=="Mitchell" || county=="Cloud" || county=="Ottawa" || county=="Clay" )
                {
                    applicationVars.district="NC";
                    applicationVars.date = "zone2"

                }
                if ( county=="Marshall" || county=="Nemaha" || county=="Brown" || county=="Doniphan" || county=="Riley" || county=="Pottawatomie" || county=="Johnson" || county=="Atchison" || county=="Ellis" || county=="Russell" ||  county=="Pawnee" || county=="Hamilton" || county=="Kearny" || county=="Finney" || county=="Hodgeman" || county=="Trego" || county=="Scott" || county=="Lane" || county=="Ness" || county=="Lincoln" || county=="Rush" || county=="Barton" || county=="Morton" || county=="Stevens" ||  county=="Stanton" || county=="Grant" || county=="Haskell" || county=="Gray")
                {
                    applicationVars.date = "zone2"
                }
                if(county=="Sumner")
                {
                    applicationVars.date="zone4"
                }
                if( county=="Marshall" || county=="Nemaha" || county=="Brown" || county=="Doniphan" || county=="Riley" || county=="Pottawatomie" || county=="Johnson" || county=="Atchison" || county=="Jefferson" || county=="Leavenworth" || county=="Wyandotte" )
                {applicationVars.district="NE";
                    applicationVars.rate = "eastern"
                }
                if( county=="Wallace" || county=="Logan" || county=="Gove" || county=="Trego" || county=="Greeley" || county=="Wichita" || county=="Scott" || county=="Lane" || county=="Ness" )
                {applicationVars.district="WC";}
                if( county=="Ellis" || county=="Russell" || county=="Saline" || county=="Lincoln" || county=="Dickinson" || county=="Rush" || county=="Barton" || county=="Ellsworth" || county=="Rice" || county=="McPherson" || county=="Marion" )
                {applicationVars.district="C";}
                if( county=="Geary" || county=="Morris" || county=="Chase" || county=="Wabaunsee" || county=="Lyon" || county=="Shawnee" || county=="Osage" || county=="Coffey" || county=="Douglas" || county=="Franklin" || county=="Anderson" || county=="Johnson" || county=="Miami" || county=="Linn" )
                {applicationVars.district="EC";
                    applicationVars.rate = "eastern"
                }
                if( county=="Hamilton" || county=="Stanton" || county=="Morton" || county=="Kearny" || county=="Grant" || county=="Stevens" || county=="Finney" || county=="Haskell" || county=="Seward" || county=="Gray" || county=="Meade" || county=="Hodgeman" || county=="Ford" || county=="Clark" )
                {applicationVars.district="SW";}
                if( county=="Pawnee" || county=="Edwards" || county=="Kiowa" || county=="Comanche" || county=="Stafford" || county=="Pratt" || county=="Barber" || county=="Reno" || county=="Kingman" || county=="Harper" || county=="Harvey" || county=="Sedgwick" || county=="Sumner" )
                {applicationVars.district="SC";}
                if( county=="Butler" || county=="Cowley" || county=="Chautauqua" || county=="Greenwood" || county=="Elk" || county=="Woodson" || county=="Montgomery" || county=="Allen" || county=="Wilson" || county=="Neosho" || county=="Labette" || county=="Bourbon" || county=="Crawford" || county=="Cherokee" )
                {applicationVars.district="SE";
                    applicationVars.rate = "eastern"
                    applicationVars.date="zone4"
                }
                if(applicationVars.date=="" && county != "")
                {
                    applicationVars.date="zone3"
                }
                if(applicationVars.rate=="" && county != "")
                    
                {applicationVars.rate = "central"}
                
                self.performSegue(withIdentifier: "mainscreen", sender: nil)
                
            }))
            
            Alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
                print(" Cancel ")
            }))
            
            present(Alert, animated: true, completion: nil)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
