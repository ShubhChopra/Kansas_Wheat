//
//  Nitrogen.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/23/16.
//  Modified by Austin Fuller
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit


let DocFolder = NSSearchPathForDirectoriesInDomains( .documentDirectory , .userDomainMask, true) [0] as String
let FileName = "/Samples.csv"
var counter = 0;
let Path = DocFolder + FileName
class Nitrogen: UIViewController {
    
    @IBOutlet weak var FeetsGrowth: UITextField!
    @IBOutlet weak var YieldHistory: UITextField!
    
    @IBOutlet weak var NUE: UITextField!
    
    @IBOutlet weak var YEF: UILabel!
    @IBOutlet weak var NDVI: UITextField!
    
    
    @IBOutlet weak var count: UILabel!
    
    var growthvalue = ""
    var YPf = 0.0


    @IBAction func ExportData(_ sender: AnyObject) {
        let firstActivityItem = URL(fileURLWithPath: Path)
        let activityViewController : UIActivityViewController = UIActivityViewController(
            activityItems: [firstActivityItem], applicationActivities: nil)
        
        activityViewController.excludedActivityTypes = [
            UIActivityType.assignToContact,
            UIActivityType.saveToCameraRoll,
            UIActivityType.postToFlickr,
            UIActivityType.postToVimeo,
            UIActivityType.postToTencentWeibo
        ]
        
        self.present(activityViewController, animated: true, completion: nil)

        let alert = UIAlertController(title: "do you want empty the storage?", message: " ", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
                        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        

    }
    var NRecommended = 0.0
    
    @IBOutlet weak var Export: UIButton!
    
    
    
    @IBAction func DeleteData(_ sender: AnyObject) {
        _ = FileManager.default
    
            let temp = "";
            do{
                try temp.write(toFile: Path, atomically: true, encoding: String.Encoding.utf8)
            }
            catch{
                print("Error")
            }
            
        
        counter = 0
        current.text = "Current Data = " + String(counter)
        
    }
    @IBOutlet weak var current: UILabel!
    
    @IBAction func Add(_ sender: AnyObject) {
       if(NRecommended != 0.0 && YieldHistory.text != "" && NUE.text != "" && NDVI.text != "")
        {
        //var FeetsG  : String! = FeetsGrowth.text
        let Yield : String! = YieldHistory.text
        let nue : String! = NUE.text
        let ndvi : String! = NDVI.text
        let date  = Date()
        
            
        //row was changed to "nul" because it wouldn't compile for whatever reason. I think something was change in an xCode update that caused this to be a trouble early. 
        var row =  "\(String(counter + 1))"
            row = row + ",\(date),\(Yield!),Feekes 4,\(nue!),\(ndvi!),\(applicationVars.lat),\(applicationVars.lon),\(String(YPf)),\(String(NRecommended))\n";
       
       let Header = "Sample Number,Date,Yield History,Feets Growth Stage,NRE,NDVI,Latitude,Longitude,Yield Estimate,N-Recommendation\n";
        _ = FileManager.default
        
       if(counter == 0)
        {
           // var Error:NSError?
            do{
               
            try Header.write(toFile: Path, atomically: true, encoding: String.Encoding.utf8)
                print("Done, save: \(Header)");
            }
            catch{
                print("Error");
            }
        }
        
            let outputStream = OutputStream (toFileAtPath: Path, append: true)
            outputStream?.open()
        let data: Data = row.data(using: String.Encoding.utf8)!
            outputStream?.write((data as NSData).bytes.bindMemory(to: UInt8.self, capacity: data.count), maxLength: data.count)
            counter += 1;
            
            current.text = "Current Data = " + String(counter);
            
       
        YieldHistory.text = "" ;
        YieldHistory.resignFirstResponder()
        NUE.text = "" ;
        NUE.resignFirstResponder()
        NDVI.text = "" ;
        NDVI.resignFirstResponder()
        print("Done, save: \(row)");
        }
    }
    
    @IBOutlet weak var Nrecommend: UILabel!
    @IBAction func Calculate(_ sender: AnyObject) {
        
        if(FeetsGrowth.text != "" && YieldHistory.text != "" && NUE.text != "" && NDVI.text != "" && Double(NDVI.text!)! < 1.0 )
        {
        
            let YPu = (110.94 * Double(NDVI.text!)!) - 12.188
            var BRI = 0.0
            if(Double(NDVI.text!)! > 0.82)
            {
                //let BRI4 = pow(Double(NDVI.text!)!,4)
                //let BRI3 = pow(Double(NDVI.text!)!,3)
                //let BRI2 = pow(Double(NDVI.text!)!,2)
                BRI = 1.02
            }
            else
            {
                let BRI2 = pow(Double(NDVI.text!)!,2)
                if(Double(NDVI.text!)! > 0.29)
                {
                    BRI = (4.9043 * BRI2) - (8.305 * Double(NDVI.text!)!) + 4.5395
                }
                else
                {
                BRI = (-105.39 * BRI2) + (63.463 * Double(NDVI.text!)!) - 7.079
                }
            }
            let pfks = Double(NDVI.text!)! * BRI
            
            if(Double(NDVI.text!)! > 0.6)
            {
            YPf = -96.535 + (585.55 * (Double(NDVI.text!)!)) - (474 * (pow(Double(NDVI.text!)!,2)))
            }
            else{
            YPf = 140.01 * pfks - 29.576
            }
            var  PE = 0.0
            
            if((YPu-121.11)/(-42.037)>2.4)
            {
                PE = 2.4
            }
            else
            {
                if((YPu-121.11)/(-42.037)<1)
                {
                    PE = 1.0
                }
                else
                {
                    PE = (YPu-121.11)/(-42.037)
                }
            }
            
            let NREadj = (PE * 0.5)/(Double(NUE.text!)!) * 100
            var yieldcap = 0.0
            if(YPf > Double(YieldHistory.text!)!)
            {
                yieldcap = Double(YieldHistory.text!)!
            }
            else
            {
                yieldcap = YPf
            }
            let yielddiff = yieldcap - YPu
            YEF.text = "Yield Estimate = " + String(Float(Int(Float(YPf) * 10))/10) + " bu/AC";
             NRecommended = yielddiff * NREadj
            
            Nrecommend.text = "Nitrogen Recommended = " + String(Float(Int(Float(NRecommended) * 10))/10) + " lbs N/AC"
            NUE.resignFirstResponder()
            NDVI.resignFirstResponder()
            YieldHistory.resignFirstResponder()
        }
        if(Double(NDVI.text!)! > 1.0 )
        {
            let alert = UIAlertController(title: "Warning", message: " NDVI is a float value less than 1.", preferredStyle: .alert)
            
            
            
            //3. Grab the value from the text field, and print it when the user clicks OK.
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                
                //  let textField = alert.textFields![0] as UITextField;
                // self.scrotalCircumference.text=textField.text;
            }))
            
            // 4. Present the alert.
            self.present(alert, animated: true, completion: nil)
            
            

        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let theFileManger = FileManager.default
        
        do{
           let data = try String(contentsOfFile:Path, encoding:String.Encoding.utf8)
            
            let arr = data.characters.split{$0 == "\n"}.map(String.init)
            counter = arr.count
            if (counter > 1)
            {
                counter = counter - 1
            }
            current.text = "Current Data = " + String(counter);
        }
        catch
        {
            print("Error")
        }
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        if (growthvalue != "")
        {
            FeetsGrowth.text = growthvalue;
        }
    }
    
    @IBAction func YieldInfo(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Field Yield Productivity", message: " A good guide for estimating field yield productivity is to take the yield from your last 5 crops, throw out the high and low values and add 5%-10%", preferredStyle: .alert)
        
       
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        

    }
    
    @IBAction func FeetGrowthInfo(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Feekes Growth Stages", message: " Stages of wheat development as described by the feekes scale. Click and hold for more information.", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)

    }
    
    @IBAction func NUEInfo(_ sender: AnyObject) {
        

    }
    
    @IBAction func NDVI(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Red NDVI", message: " Vegetation index for assessing crop biomass and photosynthetic capacity", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)

    }
    
    
    @IBAction func YieldEstimate(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Yield Estimate discription", message: "", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)

        
    }
    
  
    @IBAction func Addsample(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Add Sample", message: " Save this imformation in a .CSV file in your phone, which later can be exported.", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
   
    @IBAction func Exportsample(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Export", message: " Export the saved information in CSV file via email.", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
   
    @IBAction func Deletesample(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Delete Sample", message: "Delete all the collected information from your phone.", preferredStyle: .alert)
        
        
        
        //3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            
            //  let textField = alert.textFields![0] as UITextField;
            // self.scrotalCircumference.text=textField.text;
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func value(_ sender: AnyObject) {
         performSegue(withIdentifier: "FeekesValue", sender: self)
    }
    
    
    @IBOutlet var YieldEstimate: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
