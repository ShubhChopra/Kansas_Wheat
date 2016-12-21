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


class GPS: UIViewController ,CLLocationManagerDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
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
    internal func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {return 1}
    
    internal func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {return data.count}
    internal func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        County.text=data[row]
        self.view.endEditing(true)
    }
    internal func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
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
    
         func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Error while updating location " + error.localizedDescription)
    }
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error)->Void in
            
            if (error != nil) {
                print("Reverse geocoder failed with error" + error!.localizedDescription)
                return
            }
            let locArray = locations as NSArray
            let locObj = locArray.lastObject as! CLLocation
            let coord = locObj.coordinate
            MyVariables.lat = "\(coord.latitude)"
            MyVariables.lon = "\(coord.longitude)"
            
            if placemarks!.count > 0 {
                let pm = placemarks![0] 
                self.displayLocationInfo(pm)
            } else {
                print("Problem with the data received from geocoder")
            }
        })
        
    };
    
    @IBAction func NW(sender: AnyObject) {
        MyVariables.district="NW";
        MyVariables.rate = "western"
            MyVariables.date = "zone1"
       
        self.performSegueWithIdentifier("mainscreen", sender: nil)
             }
    
    @IBAction func NC(sender: AnyObject) {
        MyVariables.district="NC";
        MyVariables.rate = "central"
        MyVariables.date = "zone2"
        
        self.performSegueWithIdentifier("mainscreen", sender: nil)
    }
    
    @IBAction func NE(sender: AnyObject) {
        MyVariables.district="NE";
        MyVariables.rate = "eastern"
        MyVariables.date = "zone2"
        self.performSegueWithIdentifier("mainscreen", sender: nil)
    }
    
    @IBAction func WC(sender: AnyObject) {
        MyVariables.district="WC";
        MyVariables.rate = "western"
        MyVariables.date = "zone1"
        self.performSegueWithIdentifier("mainscreen", sender: nil)
        
    }
    
    @IBAction func C(sender: AnyObject) {
        MyVariables.district="C";
        MyVariables.rate = "central"
        MyVariables.date = "zone2"
        self.performSegueWithIdentifier("mainscreen", sender: nil)
    }
    
    @IBAction func EC(sender: AnyObject) {
        MyVariables.district="EC";
        MyVariables.rate = "eastern"
        MyVariables.date = "zone3"
        self.performSegueWithIdentifier("mainscreen", sender: nil)
        
    }
    @IBAction func SW(sender: AnyObject) {
        MyVariables.district="SW";
        MyVariables.rate = "western"
        MyVariables.date = "zone2"
        
        self.performSegueWithIdentifier("mainscreen", sender: nil)
        
    }
    
    @IBAction func SC(sender: AnyObject) {
        MyVariables.district="SC";
        MyVariables.rate = "central"
        MyVariables.date = "zone3"
        self.performSegueWithIdentifier("mainscreen", sender: nil)
    }
    
    @IBAction func SE(sender: AnyObject) {
        MyVariables.district="SE";
        MyVariables.rate = "eastern"
        MyVariables.date = "zone4"
        self.performSegueWithIdentifier("mainscreen", sender: nil)
    }
    
    @IBAction func SAve(sender: AnyObject) {
        
        if( County.text=="Cheyenne" || County.text=="Rawlins" || County.text=="Decatur" || County.text=="Norton" || County.text=="Sherman" || County.text=="Thomas" || County.text=="Sheridan" || County.text=="Graham" )
        {MyVariables.district="NW";
            MyVariables.date = "zone1";
        }
        if(County.text=="Cheyenne" || County.text=="Sherman" || County.text=="Wallace" || County.text=="Logan" || County.text=="Greeley" || County.text=="Wichita" || County.text=="Scott" || County.text=="Hamilton" || County.text=="Kearny" || County.text=="Finney" ||  County.text=="Stanton" || County.text=="Morton" ||
       County.text=="Grant" ||  County.text=="Stevens" || County.text=="Seward" || County.text=="Haskell" )
        {
        MyVariables.rate="western"
        }
        if ( County.text=="Wallace" || County.text=="Logan" || County.text=="Gove" || County.text=="Greeley" || County.text=="Wichita" )
        {
            MyVariables.date = "zone1";
        }
        if( County.text=="Phillips" || County.text=="Smith" || County.text=="Jewell" || County.text=="Republic" || County.text=="Washington" || County.text=="Rooks" || County.text=="Osborne" || County.text=="Mitchell" || County.text=="Cloud" || County.text=="Ottawa" || County.text=="Clay" )
        {MyVariables.district="NC";
            MyVariables.date = "zone2"
        }
        if ( County.text=="Marshall" || County.text=="Nemaha" || County.text=="Brown" || County.text=="Doniphan" || County.text=="Riley" || County.text=="Pottawatomie" || County.text=="Johnson" || County.text=="Atchison" || County.text=="Ellis" || County.text=="Russell" ||  County.text=="Pawnee" || County.text=="Hamilton" || County.text=="Kearny" || County.text=="Finney" || County.text=="Hodgeman" || County.text=="Trego" || County.text=="Scott" || County.text=="Lane" || County.text=="Ness" || County.text=="Lincoln" || County.text=="Rush" || County.text=="Barton" || County.text=="Morton" || County.text=="Stevens" ||  County.text=="Stanton" || County.text=="Grant" || County.text=="Haskell" || County.text=="Gray")
        {
        MyVariables.date = "zone2"
        }
        if( County.text=="Marshall" || County.text=="Nemaha" || County.text=="Brown" || County.text=="Doniphan" || County.text=="Riley" || County.text=="Pottawatomie" || County.text=="Johnson" || County.text=="Atchison" || County.text=="Jefferson" || County.text=="Leavenworth" || County.text=="Wyandotte")
        {MyVariables.district="NE";
            MyVariables.rate = "eastern"
        }
        if( County.text=="Wallace" || County.text=="Logan" || County.text=="Gove" || County.text=="Trego" || County.text=="Greeley" || County.text=="Wichita" || County.text=="Scott" || County.text=="Lane" || County.text=="Ness" )
        {MyVariables.district="WC";}
        if( County.text=="Ellis" || County.text=="Russell" || County.text=="Saline" || County.text=="Lincoln" || County.text=="Dickinson" || County.text=="Rush" || County.text=="Barton" || County.text=="Ellsworth" || County.text=="Rice" || County.text=="McPherson" || County.text=="Marion" )
        {MyVariables.district="C";}
        if( County.text=="Geary" || County.text=="Morris" || County.text=="Chase" || County.text=="Wabaunsee" || County.text=="Lyon" || County.text=="Shawnee" || County.text=="Osage" || County.text=="Coffey" || County.text=="Douglas" || County.text=="Franklin" || County.text=="Anderson" || County.text=="Johnson" || County.text=="Miami" || County.text=="Linn" )
        {MyVariables.district="EC";
            MyVariables.rate = "eastern"
        }
        if( County.text=="Hamilton" || County.text=="Stanton" || County.text=="Morton" || County.text=="Kearny" || County.text=="Grant" || County.text=="Stevens" || County.text=="Finney" || County.text=="Haskell" || County.text=="Seward" || County.text=="Gray" || County.text=="Meade" || County.text=="Hodgeman" || County.text=="Ford" || County.text=="Clark" )
        {MyVariables.district="SW";}
        if( County.text=="Pawnee" || County.text=="Edwards" || County.text=="Kiowa" || County.text=="Comanche" || County.text=="Stafford" || County.text=="Pratt" || County.text=="Barber" || County.text=="Reno" || County.text=="Kingman" || County.text=="Harper" || County.text=="Harvey" || County.text=="Sedgwick" || County.text=="Sumner" )
        {MyVariables.district="SC";}
        if(County.text=="Sumner")
        {
        MyVariables.date="zone4"
        }
        if( County.text=="Butler" || County.text=="Cowley" || County.text=="Chautauqua" || County.text=="Greenwood" || County.text=="Elk" || County.text=="Woodson" || County.text=="Montgomery" || County.text=="Allen" || County.text=="Wilson" || County.text=="Neosho" || County.text=="Labette" || County.text=="Bourbon" || County.text=="Crawford" || County.text=="Cherokee" )
        {MyVariables.district="SE";
            MyVariables.date="zone4"
            MyVariables.rate = "eastern"
            
        }
        
        if(MyVariables.date=="" && County.text != "")
        {
        MyVariables.date="zone3"
        }
        if(MyVariables.rate=="" && County.text != "")
        
        {MyVariables.rate = "central"}
        if(County.text != "")
        {
            
            self.performSegueWithIdentifier("mainscreen", sender: nil)
        }
    }
    
    func displayLocationInfo(placemark: CLPlacemark?) {
        if let containsPlacemark = placemark {
            //stop updating location to save battery life
            locationManager.stopUpdatingLocation()
            let locality = (containsPlacemark.locality != nil) ? containsPlacemark.locality : ""
            let postalCode = (containsPlacemark.postalCode != nil) ? containsPlacemark.postalCode : ""
            let administrativeArea = (containsPlacemark.administrativeArea != nil) ? containsPlacemark.administrativeArea : ""
            let county = (containsPlacemark.subAdministrativeArea != nil) ? containsPlacemark.subAdministrativeArea : ""
           
            var location = locality! + " , " + postalCode! + " , ";
            location = location +  administrativeArea! + " , " + county!;
            
            let Alert = UIAlertController(title: "Do you want to continue with this location ?", message: location , preferredStyle: UIAlertControllerStyle.Alert)
            
            Alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                print(" Ok ")
                
                if( county=="Cheyenne" || county=="Rawlins" || county=="Decatur" || county=="Norton" || county=="Sherman" || county=="Thomas" || county=="Sheridan" || county=="Graham" )
                {
                    MyVariables.district="NW";
                    MyVariables.date = "zone1";
                }
                if ( county=="Wallace" || county=="Logan" || county=="Gove" || county=="Greeley" || county=="Wichita" )
                {
                    MyVariables.date = "zone1";
                }
                if(county=="Cheyenne" || county=="Sherman" || county=="Wallace" || county=="Logan" || county=="Greeley" || county=="Wichita" || county=="Scott" || county=="Hamilton" || county=="Kearny" || county=="Finney" ||  county=="Stanton" || county=="Morton" ||
                    county=="Grant" ||  county=="Stevens" || county=="Seward" || county=="Haskell" )
                {
                    MyVariables.rate="western"
                }

                if( county=="Phillips" || county=="Smith" || county=="Jewell" || county=="Republic" || county=="Washington" || county=="Rooks" || county=="Osborne" || county=="Mitchell" || county=="Cloud" || county=="Ottawa" || county=="Clay" )
                {
                    MyVariables.district="NC";
                    MyVariables.date = "zone2"

                }
                if ( county=="Marshall" || county=="Nemaha" || county=="Brown" || county=="Doniphan" || county=="Riley" || county=="Pottawatomie" || county=="Johnson" || county=="Atchison" || county=="Ellis" || county=="Russell" ||  county=="Pawnee" || county=="Hamilton" || county=="Kearny" || county=="Finney" || county=="Hodgeman" || county=="Trego" || county=="Scott" || county=="Lane" || county=="Ness" || county=="Lincoln" || county=="Rush" || county=="Barton" || county=="Morton" || county=="Stevens" ||  county=="Stanton" || county=="Grant" || county=="Haskell" || county=="Gray")
                {
                    MyVariables.date = "zone2"
                }
                if(county=="Sumner")
                {
                    MyVariables.date="zone4"
                }
                if( county=="Marshall" || county=="Nemaha" || county=="Brown" || county=="Doniphan" || county=="Riley" || county=="Pottawatomie" || county=="Johnson" || county=="Atchison" || county=="Jefferson" || county=="Leavenworth" || county=="Wyandotte" )
                {MyVariables.district="NE";
                    MyVariables.rate = "eastern"
                }
                if( county=="Wallace" || county=="Logan" || county=="Gove" || county=="Trego" || county=="Greeley" || county=="Wichita" || county=="Scott" || county=="Lane" || county=="Ness" )
                {MyVariables.district="WC";}
                if( county=="Ellis" || county=="Russell" || county=="Saline" || county=="Lincoln" || county=="Dickinson" || county=="Rush" || county=="Barton" || county=="Ellsworth" || county=="Rice" || county=="McPherson" || county=="Marion" )
                {MyVariables.district="C";}
                if( county=="Geary" || county=="Morris" || county=="Chase" || county=="Wabaunsee" || county=="Lyon" || county=="Shawnee" || county=="Osage" || county=="Coffey" || county=="Douglas" || county=="Franklin" || county=="Anderson" || county=="Johnson" || county=="Miami" || county=="Linn" )
                {MyVariables.district="EC";
                    MyVariables.rate = "eastern"
                }
                if( county=="Hamilton" || county=="Stanton" || county=="Morton" || county=="Kearny" || county=="Grant" || county=="Stevens" || county=="Finney" || county=="Haskell" || county=="Seward" || county=="Gray" || county=="Meade" || county=="Hodgeman" || county=="Ford" || county=="Clark" )
                {MyVariables.district="SW";}
                if( county=="Pawnee" || county=="Edwards" || county=="Kiowa" || county=="Comanche" || county=="Stafford" || county=="Pratt" || county=="Barber" || county=="Reno" || county=="Kingman" || county=="Harper" || county=="Harvey" || county=="Sedgwick" || county=="Sumner" )
                {MyVariables.district="SC";}
                if( county=="Butler" || county=="Cowley" || county=="Chautauqua" || county=="Greenwood" || county=="Elk" || county=="Woodson" || county=="Montgomery" || county=="Allen" || county=="Wilson" || county=="Neosho" || county=="Labette" || county=="Bourbon" || county=="Crawford" || county=="Cherokee" )
                {MyVariables.district="SE";
                    MyVariables.rate = "eastern"
                    MyVariables.date="zone4"
                }
                if(MyVariables.date=="" && county != "")
                {
                    MyVariables.date="zone3"
                }
                if(MyVariables.rate=="" && county != "")
                    
                {MyVariables.rate = "central"}
                
                self.performSegueWithIdentifier("mainscreen", sender: nil)
                
            }))
            
            Alert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action: UIAlertAction!) in
                print(" Cancel ")
            }))
            
            presentViewController(Alert, animated: true, completion: nil)
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
