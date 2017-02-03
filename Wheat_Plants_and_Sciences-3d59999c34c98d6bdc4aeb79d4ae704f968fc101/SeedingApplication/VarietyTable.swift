//
//  VarietyTable.swift
//  SeedingApplication
//
//  Created by Shubh Chopra on 5/19/16.
//  Copyright © 2016 Shubh Chopra. All rights reserved.
//

import Foundation
import UIKit



class VarietyTable: UITableViewController {


    @IBOutlet var Tamil: UITableViewCell!
    
    @IBOutlet var Everest: UITableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "Tam111")
        {
                let img1 =  UIImage(named:"Tam111-1")
                let img2 = UIImage(named:"Tam111-2")
                let title = "Tam-111"
                let Dis = "Pedigree: TAM 107, Centurk, and Texas experimental lines.\nAdaptation: Western Kansas.\nStrengths: Drought tolerance, good yield potential if treated with a foliar fungicide, good shattering reputation, stem rust resistance, and good test weight.\nWeaknesses: Susceptible to acid soils, leaf rust, stripe rust, barley yellow dwarf, and wheat streak mosaic.\nComments: A successful variety in western Kansas because of its drought tolerance. In recent years, its disease susceptibility has resulted in lower yields relative to other, more resistant varieties. Still a good option in western Kansas, but plan to use a fungicide in years when stripe rust and leaf rust are a problem."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
            
        }
        if (segue.identifier == "1863")
        {
            let img1 =  UIImage(named:"1863-1")
            let img2 = UIImage(named:"1863-2")
            let title = "1863"
            let Dis = "Pedigree: Overley sibling, Karl 92, and Cutter.\nAdaptation: Central and north central Kansas.\nStrengths: Acid soil tolerance, good milling and baking characteris- tics.\nWeaknesses: Below-average straw strength, susceptible to leaf rust.\nComments: Probably best adapted for north central Kansas. A good option following soybeans in north central Kansas because it has a good tillering potential. Later planting after soybeans also may reduce the risk of lodging and resulting harvest complications."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
            
        }
        
        if (segue.identifier == "Armour" || segue.identifier == "Armour(irrigated)")
        {
            let img1 =  UIImage(named:"Armour-1")
            let img2 = UIImage(named:"Armour-2")
            let title = "Armour"
            let Dis = "Pedigree: Experimental lines and 2180.\nAdaptation: Central and eastern Kansas.\nStrengths: Good straw strength and acid soil tolerance.\nWeaknesses: Susceptible to stripe rust. Short stature may compli- cate harvest in dry years.\nComments: A medium-short variety. It is early to head but has a relatively long grain- lling period. Often used in blends for central Kansas."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
            
        }
        
        if (segue.identifier == "Byrd")
        {
            let img1 =  UIImage(named:"Byrd-1")
            let img2 = UIImage(named:"Byrd-2")
            let title = "Byrd"
            let Dis = "Pedigree: TAM 112, CSU experimental lines, Ike, and Halt. Adaptation: Western Kansas.\nStrengths: Good drought tolerance, good yield potential, good milling and baking characteristics, intermediate resistance to wheat curl mite and wheat streak mosaic.\nWeaknesses: Average test weight and straw strength. Susceptible to stripe rust, leaf rust, and stem rust.\nComments: Drought tolerance is key to the success of this variety. Highly susceptible to rust diseases. Foliar fungicides may be needed to maintain its yield potential when stripe rust is a problem. Smaller seed size than many varieties. May require adjustments in planting rate to avoid plant populations that are too high."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
            
        }
     
        if (segue.identifier == "Denali")
        {
            let img1 =  UIImage(named:"Denali-1")
            let img2 = UIImage(named:"Denali-2")
            let title = "Denali"
            let Dis = "Pedigree: TAM 111, Colorado experimental lines, and Yumar.\nAdaptation: Western Kansas.\nStrengths: Long coleoptile, good test weight, good yield potential, and moderately resistant to stem rust.\nWeaknesses: Susceptible to stripe rust, leaf rust, and wheat streak mosaic.\nComments: A medium-late, medium-tall variety with good yield record in northwest Kansas. Good drought tolerance. Stripe rust can increase rapidly on this variety. Growers should plan to be aggressive with foliar fungicides if stripe rust is active in the region."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
            
        }
        if (segue.identifier == "Doublestop")
        {
        let img1 =  UIImage(named:"Doublestop-1")
        let img2 = UIImage(named:"Doublestop-2")
        let title = "Doublestop"
        let Dis = "Pedigree: Mason SRW (CL donor), Jagger, 2174, TAM 110, and Intrada.\nAdaptation: Central and west central Kansas.\nStrengths: Two-gene Clear eld, good acid soil tolerance, good grazing potential, good test weight.\nWeaknesses: Intermediate reaction to stripe rust.\nComments: A good yield record in south central Kansas; however, its medium-late maturity increases the risk that it will be exposed to heat stress during the grain- lling stages in some years. A good Clear eld option where adapted. Often has an uneven canopy."
        if let destinationVC = segue.destination as? VarietyDiscription {
            destinationVC.img1 = img1
            destinationVC.img2 = img2
            destinationVC.Dis = Dis
            destinationVC.varitytitle = title
        }
    }
        
        if (segue.identifier == "Everest")
        {
            let img1 =  UIImage(named:"Everest-1")
            let img2 = UIImage(named:"Everest-2")
            let title = "Everest"
            let Dis = "Pedigree: Pioneer experimental lines with the white wheat Betty.\nAdaptation: Central and eastern Kansas.\nStrengths: Resistance to Hessian  y, moderate resistance to barley yellow dwarf and Fusarium head blight, acid soil tolerance.\nWeaknesses: Susceptible to stripe rust, poor milling and baking characteristics.\nComments: A medium to medium-short variety with early maturity. Fall tiller formation is important to ensure yield potential. Resistance to Fusarium head blight makes it the best option to follow corn in central and eastern Kansas."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        
        if (segue.identifier == "Gallagher")
        {
            let img1 =  UIImage(named:"Gallagher-1")
            let img2 = UIImage(named:"Gallagher-2")
            let title = "Gallagher"
            let Dis = "Pedigree: Duster and OSU experimental with Pioneer 2180.\nAdaptation: South central Kansas.\nStrengths: Yield potential, Hessian  y tolerance, acid soil tolerance, excellent grazing potential, good drought tolerance.\nWeaknesses: Possible physiological leaf spot in some environments, moderately susceptible to Fusarium head blight.\nComments: Probably best adapted to southern Kansas. A good option for grazing, but it reaches  rst hollow stem earlier than Duster, leaving less time for grazing in the spring. Moderate levels of stripe rust resistance have helped this variety maintain its yield potential."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "KanMarkirrigated" || segue.identifier == "KanMark" )
        {
            let img1 =  UIImage(named:"KanMark-1")
            let img2 = UIImage(named:"KanMark-2")
            let title = "KanMark"
            let Dis = "Pedigree: Karl 92, WestBred experimental lines, and a CIMMYT spring wheat.\nAdaptation: Central and west central Kansas, western Kansas under irrigation.\nStrengths: Yield stability, excellent straw strength.\nWeaknesses: Susceptible to acid soils and Fusarium head blight.Moderately susceptible to stripe rust.\nComments: Has an upright plant growth habit that makes it look thin, but generally yields better than it looks. Can be pushed for yields under irrigation due to good straw strength. Moderately susceptible to stripe rust and will often bene t from a foliar fungicide application."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Larry" )
        {
            let img1 =  UIImage(named:"Larry-1")
            let img2 = UIImage(named:"Larry-2")
            let title = "Larry"
            let Dis = "Pedigree: Overley sibling, Karl 92, and experimental lines.\nAdaptation: Central and west central Kansas.\nStrengths: Tolerance to moderate drought, high tillering capacity, resistance to stripe rust, good acid soil tolerance.\nWeaknesses: Moderately susceptible to leaf rust.\nComments: A new variety from the Kansas Wheat Alliance with a strong yield record in central Kansas. Currently has stripe rust resistance but is moderately susceptible to leaf rust. A better baking quality than Everest. Larry should be widely available in the fall of 2017."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Lcsmint" )
        {
            let img1 =  UIImage(named:"Lcsmint-1")
            let img2 = UIImage(named:"Lcsmint-2")
            let title = "LCS Mint"
            let Dis = "Pedigree: Colorado experimental lines.\nAdaptation: Broadly adapted for many areas of Kansas but probably best suited for northern portions of the state.\nStrengths: Good drought and acid soil tolerance, good test weight, high yield potential.\nWeaknesses: Susceptible to leaf rust, average straw strength.\nComments: A good yield record in many areas of the state. Maturity has been hard to determine because it is photoperiod sensitive, which may cause it to head late in central and eastern Kansas where heat stress during the grain  lling period is common."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Lcspistol" )
        {
            let img1 =  UIImage(named:"Lcspistol-1")
            let img2 = UIImage(named:"Lcspistol-2")
            let title = "LCS Pistol"
            let Dis = "Pedigree: T158 and T157.\nAdaptation: Wide adaptability across Kansas.\nStrengths: Good acid soil tolerance, good drought tolerance, resistance to soilborne mosaic virus.\nWeaknesses: Susceptible to stripe rust, stem rust, and Hessian  y.\nComments: Better acid soil tolerance than T158, which may make it more broadly adapted for central Kansas. Susceptibility to stripe, leaf, and stem rusts makes it a good candidate for foliar fungicide applica- tions. Straw strength is not as good as T158."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Oakleycl" )
        {
            let img1 =  UIImage(named:"Oakleycl-1")
            let img2 = UIImage(named:"Oakleycl-2")
            let title = "Oakley CL"
            let Dis = "Pedigree: Above, Danby, and K-State Experimental lines.\nAdaptation: Western Kansas.\nStrengths: Resistance to wheat streak mosaic virus and stripe rust, good drought tolerance.\nWeaknesses: Average straw strength, susceptible to acid soils.\nComments: An excellent yield record in western Kansas. It is a single gene Clear eld variety, which means it cannot tolerate the high rate of Beyond herbicide or methylated seed oils that improve the performance of this herbicide. Resistance to wheat streak mosaic is not e ective at high temperatures and does not provide protection against Triticum mosaic."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }

        if (segue.identifier == "Syflint" )
        {
            let img1 =  UIImage(named:"Syflint-1")
            let img2 = UIImage(named:"Syflint-2")
            let title = "SY Flint"
            let Dis = "Pedigree: WGRC experimental line, Jagalene, and Duster.\nAdaptation: Central Kansas.\nStrengths: Stripe rust resistance, Hessian  y resistance, good straw strength, and good grazing potential.\nWeaknesses: Average drought tolerance, susceptible to leaf rust and wheat streak mosaic.\nComments: A relatively new variety from AgriPro. It appears to be best adapted for south central Kansas, where its grazing potential may be attractive to some growers. Its stripe rust resistance has been a plus in recent years."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Symonumnet" )
        {
            let img1 =  UIImage(named:"Symonumnet-1")
            let img2 = UIImage(named:"Symonumnet-2")
            let title = "SY Monumnet"
            let Dis = "Pedigree: AgriPro experimental lines.\nAdaptation: Central and western Kansas.\nStrengths: Good disease package, good test weight, high tillering potential.\nWeaknesses: Average straw strength.\nComments: Has done well in yield trials in recent years. Its medi- um-late maturity suggests it is best adapted for northern Kansas.It currently has good resistance to stripe rust and leaf rust. A good option following soybeans in north central Kansas, because the later planting may reduce the risk of lodging."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Sywolf" )
        {
            let img1 =  UIImage(named:"Sywolf-1")
            let img2 = UIImage(named:"Sywolf-2")
            let title = "Sywolf"
            let Dis = "Pedigree: AgriPro experimental lines.\nAdaptation: North central and northwest Kansas.\nStrengths: Moderate resistance to tan spot and Septoria tritici blotch.\nWeaknesses: Susceptible to acid soils and Hessian  y.\nComments: A medium-late maturity suggests it is best adapted to northern Kansas. A good option for planting after wheat in no-till production systems because it has good resistance to tan spot and other residue-borne fungal diseases."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "T158" )
        {
            let img1 =  UIImage(named:"T158-1")
            let img2 = UIImage(named:"T158-2")
            let title = "T158"
            let Dis = "Pedigree: Kansas experimental lines and T81.\nAdaptation: Central and western Kansas.\nStrengths: Good drought tolerance, yield stability, adult plant resis- tance to stripe rust, intermediate resistance to wheat streak mosaic.\nWeaknesses: Susceptible to acid soils, leaf rust, and stem rust.\nComments: A good yield record in southwest Kansas and has done well in parts of central Kansas in recent years. Stripe rust resistance is most e ective after the jointing and heading stages of growth. Generally considered to have good drought tolerance; however, recent observations suggest that it may not be as tolerant as Winter- hawk or LCS Mint."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Tam111" )
        {
            let img1 =  UIImage(named:"Tam111-1")
            let img2 = UIImage(named:"Tam111-2")
            let title = "TAM-111"
            let Dis = "Pedigree: TAM 107, Centurk, and Texas experimental lines.\nAdaptation: Western Kansas.\nStrengths: Drought tolerance, good yield potential if treated with a foliar fungicide, good shattering reputation, stem rust resistance, and good test weight.\nWeaknesses: Susceptible to acid soils, leaf rust, stripe rust, barley yellow dwarf, and wheat streak mosaic.\nComments: A successful variety in western Kansas because of its drought tolerance. In recent years, its disease susceptibility has resulted in lower yields relative to other, more resistant varieties. Still a good option in western Kansas, but plan to use a fungicide in years when stripe rust and leaf rust are a problem."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Tam112" )
        {
            let img1 =  UIImage(named:"Tam112-1")
            let img2 = UIImage(named:"Tam112-2")
            let title = "TAM-112"
            let Dis = "Pedigree: TAM 110 sibling, TAM 200, and WGRC experimental lines.\nAdaptation: Western Kansas.\nStrengths: Good drought tolerance, good grazing potential, good yield potential if treated with a foliar fungicide, intermediate reaction to wheat streak mosaic.\nWeaknesses: Susceptible to stripe rust and leaf rust, below-average straw strength.\nComments: A reliable wheat variety for western Kansas. Susceptible to stripe rust and leaf rust. Bene ts from a foliar fungicide when these diseases are active. Weak straw strength may predispose it to lodging and complications at harvest."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Tam114" )
        {
            let img1 =  UIImage(named:"Tam114-1")
            let img2 = UIImage(named:"Tam114-2")
            let title = "TAM-114"
            let Dis = "Pedigree: TAM 111, Texas experimental lines, and TAM 200.\nAdaptation: Western Kansas.\nStrengths: Good drought tolerance, moderately resistant to leaf rust and stripe rust, good milling and baking characteristics.\nWeaknesses: Moderately susceptible to wheat streak mosaic and stem rust.\nComments: A good yield record in western Kansas. Drought toler- ance similar to TAM 111 but better resistance to stripe rust and leaf rust. Has shown good grazing potential with forage yield potentials comparable to Duster."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Tatanka" )
        {
            let img1 =  UIImage(named:"Tatanka-1")
            let img2 = UIImage(named:"Tatanka-2")
            let title = "Tatanka"
            let Dis = "Pedigree: T151 with K-State experimental lines.\nAdaptation: Western and central Kansas.\nStrengths: Moderate resistance to stripe rust, intermediate resis- tance to barley yellow dwarf, good tolerance to acid soils.\nWeaknesses: Below-average straw strength, susceptible to Hessian  y.\nComments: A strong yield record in western Kansas and has done better than TAM 111 in many trials. Good drought tolerance and is currently resistant to stripe rust. Below-average straw strength, which could become an issue in some high-yielding environments."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Wb4458" )
        {
            let img1 =  UIImage(named:"Wb4458-1")
            let img2 = UIImage(named:"Wb4458-2")
            let title = "WB 4458"
            let Dis = "Pedigree: Overley and WestBred experimental lines.\nAdaptation: Central and west central Kansas.\nStrengths: Good yield potential, good straw strength, tolerance to acid soils.\nWeaknesses: Susceptible to Fusarium head blight and powdery mildew, below-average tillering potential.\nComments: Excellent yield record in central Kansas. May not be a good choice following corn because it is highly susceptible to Fusarium head blight. Above-average seed size. May require adjust- ments in seeding rate to avoid suboptimal stands."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Wbcedar" || segue.identifier == "Wbcedar(irrigated)")
        {
            let img1 =  UIImage(named:"Wbcedar-1")
            let img2 = UIImage(named:"Wbcedar-2")
            let title = "WB Cedar"
            let Dis = "Pedigree: TAM 203 and Pioneer experimental lines with 2180.\nAdaptation: Central and eastern Kansas, western Kansas under irrigation.\nStrengths: Good yield potential, good straw strength, moderate resistance to stripe rust, good acid soil tolerance.\nWeaknesses: Short stature may complicate harvest in dry years. Moderately susceptible to wheat streak mosaic.\nComments: A short variety with early maturity. Good yield record in central Kansas, but its early maturity makes it vulnerable to spring freeze injury. Often used in blends for central Kansas."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Wbgrainfield" )
        {
            let img1 =  UIImage(named:"Wbgrainfield-1")
            let img2 = UIImage(named:"Wbgrainfield-2")
            let title = "WB Grainfield"
            let Dis = "Pedigree: WestBred and K-State experimental lines.\nAdaptation: Central and western Kansas.\nStrengths: Good drought tolerance, resistance to leaf rust, moderate resistance to stripe rust, good shattering reputation.\nWeaknesses: Moderately susceptible to barley yellow dwarf and wheat streak mosaic.\nComments: A good yield potential, but its medium-late maturity suggests it is best adapted for north central and northwest Kansas. Good drought tolerance. Stripe rust resistance has given it an advan- tage over many other varieties in recent years."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Wbredhawk" )
        {
            let img1 =  UIImage(named:"Wbredhawk-1")
            let img2 = UIImage(named:"Wbredhawk-2")
            let title = "WB Redhawk"
            let Dis = "Pedigree: CIMMYT spring wheat, K-State experimental lines with Jagger backgrounds.\nAdaptation: Central and eastern Kansas.\nStrengths: Good yield potential if treated with a foliar fungicide. Tolerance to acid soils, moderate resistance to leaf rust, good test weight.\nWeaknesses: Very susceptible to stripe rust and Fusarium head blight.\nComments: A medium-height variety with an early maturity. It has an inconsistent yield record in variety performance tests because of its vulnerabilities to stripe rust and Fusarium head blight."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Winterhawk" )
        {
            let img1 =  UIImage(named:"Winterhawk-1")
            let img2 = UIImage(named:"Winterhawk-2")
            let title = "Winterhawk"
            let Dis = "Pedigree: WestBred experimental lines.\nAdaptation: Central and western Kansas.\nStrengths: Above average drought tolerance, good yield potential, good test weight, good straw strength.\nWeaknesses: Intermediate tolerance to acid soils. Susceptible to leaf rust, stripe rust and stem rust.\nComments: Excellent yield record under dry conditions in western Kansas and the best available drought tolerance.  is variety is best adapted to northwest Kansas because of its medium-late maturity and intermediate tolerance to acid soils."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Zenda" )
        {
            let img1 =  UIImage(named:"Zenda-1")
            let img2 = UIImage(named:"Zenda-2")
            let title = "Zenda"
            let Dis = "Pedigree: Overley sibling, W04-417, and Everest. Adaptation: Central and eastern Kansas.\nStrengths: Moderate resistance to Fusarium head blight and stripe rust, tolerance to acid soils.\nWeaknesses: Moderately susceptible to leaf rust.\nComments: A new variety from the Kansas Wheat Alliance that should be widely available in the fall of 2017. A strong yield record in central Kansas. A step up in baking quality from Everest and has similar resistance to Fusarium head blight. It is more susceptible to barley yellow dwarf than Everest."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Antero" )
        {
            let img1 =  UIImage(named:"Antero-1")
            let img2 = UIImage(named:"Antero-2")
            let title = "Antero"
            let Dis = "Pedigree: TAM 111, K-State experimental lines, Trego, and Betty sibling.\nAdaptation: Western Kansas.\nStrengths: Good yield potential, moderate resistance to stripe rust, resistance to stem rust, good straw strength.\nWeaknesses: Moderately susceptible to leaf rust, susceptible to wheat streak mosaic.\nComments: An excellent yield record in western Kansas under irrigated and dryland. Currently considered moderately resistant to stripe rust but is moderately susceptible to leaf rust and wheat streak mosaic."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Danby" )
        {
            let img1 =  UIImage(named:"Danby-1")
            let img2 = UIImage(named:"Danby-2")
            let title = "Danby"
            let Dis = "Pedigree: Trego and Jagger sibling.\nAdaptation: Western Kansas.\nStrengths: Tolerance to pre-harvest sprouting, resistance to wheat streak mosaic virus, good test weight and milling characteristics, good drought tolerance.\nWeaknesses: Susceptible to leaf rust. Below-average straw strength.\nComments: A good yield record in western Kansas and the number one white wheat in the state. Good drought tolerance. Moderately susceptible to the races of stripe rust that can overcome the Jagger type of resistance but has performed better than expected in recent years."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        if (segue.identifier == "Joe" )
        {
            let img1 =  UIImage(named:"Joe-1")
            let img2 = UIImage(named:"Joe-2")
            let title = "Joe"
            let Dis = "Pedigree: Jagger, Arlin, Trego, and Colorado experimental lines.\nAdaptation: Western Kansas.\nStrengths: Excellent yield potential, resistance to wheat streak mosaic, stripe rust, leaf rust, good straw strength.\nWeaknesses: Moderately susceptible to pre-harvest sprouting, susceptible to soilborne mosaic virus and Hessian  y.\nComments: A new white wheat with an excellent yield record in western Kansas. Its resistance to stripe rust and wheat streak mosaic have been an asset in recent years. Resistance to wheat streak mosaic is less e ective at high temperatures. Early observations suggest that it is susceptible to Triticum mosaic. More susceptible to pre-harvest sprouting than Danby."
            if let destinationVC = segue.destination as? VarietyDiscription {
                destinationVC.img1 = img1
                destinationVC.img2 = img2
                destinationVC.Dis = Dis
                destinationVC.varitytitle = title
            }
        }
        else{
          
            if let destinationVC = segue.destination as? VarietyAppendix {
               
                destinationVC.varitytitle = segue.identifier!
            }

        }















        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if (indexPath.section == 0)
        {
            //Armour
            if indexPath.row == 0 {
                if( (applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "EC" && applicationVars.district != "NE") || applicationVars.fungicide == 2 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
            }

            //Armour (irrigated)
            if indexPath.row == 1 {
                if(applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" || applicationVars.fungicide == 2 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //Aspen
            if indexPath.row == 2 {
                if((applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "SC") ||  applicationVars.fungicide == 2 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
        //Everest
        if indexPath.row == 3  {
            if( (applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "EC" && applicationVars.district != "NE" ) || applicationVars.grazed == 1  || applicationVars.fungicide == 2 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
            {
                return 0.0
            }
        }
            // T-153
            if indexPath.row == 4  {
                if((applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "SW" && applicationVars.district != "NE"  ) || applicationVars.ph == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 3 || applicationVars.maturity == 2 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            // t-154
            if indexPath.row == 5  {
                if((applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "SW" && applicationVars.district != "NE"  ) || applicationVars.fungicide == 2 || applicationVars.lodging == 1 || applicationVars.maturity == 3 || applicationVars.maturity == 2 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            
            //TAM 112
            if indexPath.row == 6 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC") ||  applicationVars.fungicide == 2 || applicationVars.lodging == 1 || applicationVars.maturity == 3 || applicationVars.maturity == 2  || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }
            // WB Cedar
            if indexPath.row == 7  {
                if( (applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "EC" && applicationVars.district != "NE" ) || applicationVars.grazed == 1 || applicationVars.maturity == 3 || applicationVars.maturity == 2 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
            }
            //WB Cedar (Irrigated)
            if indexPath.row == 8 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" ) || applicationVars.grazed == 1 || applicationVars.maturity == 3 || applicationVars.maturity == 2 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }
            //WB Redhawk
            if indexPath.row == 9  {
                if( (applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "EC" && applicationVars.district != "NE" ) || applicationVars.fungicide == 2 ||  applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //Bentley
            if indexPath.row == 10  {
                if( (applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SW") || applicationVars.lodging == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
            }
            //Billings
            if indexPath.row == 11  {
                if( (applicationVars.district != "SW" && applicationVars.district != "SC" && applicationVars.district != "SE") || applicationVars.lodging == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 || applicationVars.fungicide == 2)
                {
                    return 0.0
                }
            }
            
            
            //Brawl CL
            if indexPath.row == 12 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district == "NC" && applicationVars.district == "SC") || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide   == 2 || applicationVars.maturity == 2 || applicationVars.maturity == 3  )
                {
                    return 0.0
                }
                
            }
            
            //LCS Pistol
            if indexPath.row == 13  {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC"  && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "NC") || applicationVars.fungicide == 2 || applicationVars.lodging == 1 ||  applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
            }
            //Ruby Lee
            if indexPath.row == 14  {
                if((  applicationVars.district != "SC" && applicationVars.district != "SE" ) || applicationVars.fungicide == 2 || applicationVars.lodging == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            
            //SY Flint
            if indexPath.row == 15  {
                if( (applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "EC") || applicationVars.fungicide == 2 || applicationVars.lodging == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
            }
            
            //T158
            if indexPath.row == 16  {
                if( (applicationVars.district != "SW" && applicationVars.district != "NW" && applicationVars.district != "WC"  && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "NC" ) || applicationVars.ph == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            


        // WB 4458
        if indexPath.row == 17  {
            if((applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "SW" && applicationVars.district != "EC" && applicationVars.district != "NE" ) || applicationVars.grazed == 1 || applicationVars.maturity == 3 || applicationVars.maturity == 2 || applicationVars.clearfield == 1)
            {
                return 0.0
            }
        }
            //SY Llano
            if indexPath.row == 18 {
                if ((applicationVars.district != "SC" && applicationVars.district != "SE"  ) || applicationVars.fungicide == 2 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }
            // Hot Rod
            if indexPath.row == 19 {
                if ((applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "EC" && applicationVars.district != "NE") || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 2 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }

        
        //PostRock
        if indexPath.row == 20 {
            if(applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" )
            {
                return 0.0
            }
            
        }
        //Roubidoux
        if indexPath.row == 21 {
            if(applicationVars.district != "NW" && applicationVars.district != "NC" )
            {
                return 0.0
            }
            
        }
            
            
               }
        if(indexPath.section == 1)
        {
            //1863
            if indexPath.row == 0 {
                if( (applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" ) || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
                
            }
            //Antero
            if indexPath.row == 1 {
                if( ( applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC") || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }
            //AP503 CL2
            if indexPath.row == 2  {
                if( (applicationVars.district != "NW" &&  applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SW" && applicationVars.district != "SC" ) || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 1 || applicationVars.maturity == 3 )
                {
                    return 0.0
                }
            }
            //Byrd
            if indexPath.row == 3 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district == "NC" && applicationVars.district == "SC") || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }
            //Duster
            if indexPath.row == 4  {
                if( (applicationVars.district != "SW" && applicationVars.district != "SC" && applicationVars.district != "SE" ) || applicationVars.fungicide == 2 || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //Gallagher
            if indexPath.row == 5  {
                if((
                    applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" ) || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //Iba
            if indexPath.row == 6  {
                if((applicationVars.district != "SW" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "EC" ) || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //KanMark
            if indexPath.row == 7  {
                if( (applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE") || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 3 || applicationVars.maturity == 1  || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }

            //KanMark(Irrigated)
            if indexPath.row == 8 {
                if((applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" ) || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 3 || applicationVars.maturity == 1  || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
                
            }
            //LCS Mint
            if indexPath.row == 9  {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC") || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            // LCS Wizard
            if indexPath.row == 10  {
                if( ( applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "EC" ) || applicationVars.fungicide == 2 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
            }
            //Larry
            if indexPath.row == 11  {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC") || applicationVars.grazed == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //Zenda
            if indexPath.row == 12 {
                if( (applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SE" && applicationVars.district != "EC" && applicationVars.district != "NE" ) || applicationVars.grazed == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 3 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
                
            }
            //TAM 114
            if indexPath.row == 13 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC") || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 3  || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }
            //Avery
            if indexPath.row == 14 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "SC") ||  applicationVars.ph == 1 || applicationVars.grazed == 1  || applicationVars.fungicide==2 || applicationVars.maturity == 1 || applicationVars.maturity == 3  || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }

        }
        if(indexPath.section == 2)
        {
            // WB Grainfield
            
            if indexPath.row == 0  {
                if((applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" ) || applicationVars.grazed == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 2 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //Clara CL
            if indexPath.row == 1 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC") || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 2  )
                {
                    return 0.0
                }
                
            }
            //Danby
            if indexPath.row == 2 {
                if((applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC"  && applicationVars.district != "SC") || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 2  || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
                
            }
            
            //Denali
            if indexPath.row == 3 {
                if((applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC"  && applicationVars.district != "SC") || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 1 || applicationVars.maturity == 2  || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
                
            }
            //DoubleStop CL Plus
            if indexPath.row == 4  {
                if( (applicationVars.district != "SE" && applicationVars.district != "SW" && applicationVars.district != "C" && applicationVars.district != "SC" ) || applicationVars.maturity == 2 || applicationVars.maturity == 1 )
                {
                    return 0.0
                }
            }
            //Endurence
            if indexPath.row == 5  {
                if( (applicationVars.district != "SE" && applicationVars.district != "SW" && applicationVars.district != "SC"  ) || applicationVars.fungicide == 2 || applicationVars.maturity == 1 || applicationVars.maturity == 2  &&  applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //Oakley CL
            if indexPath.row == 6 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC"  ) || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 2 )
                {
                    return 0.0
                }
                
            }
            //SY Monumnet
            if indexPath.row == 7  {
                if( (applicationVars.district != "NW" &&  applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" && applicationVars.district != "SW" ) || applicationVars.grazed == 1 || applicationVars.lodging == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 1 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            
            // SY Sunrise
            if indexPath.row == 8  {
                if( ( applicationVars.district != "NW" &&  applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "SW" ) || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 1 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }
            //TAM 111
            if indexPath.row == 9{
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC") || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.lodging == 1 || applicationVars.maturity == 1 || applicationVars.maturity == 2  || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
                
            }
            //Joe
            if indexPath.row == 10 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC") || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 2 || applicationVars.maturity == 1 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
                
            }
            // LCS Chrome
            if indexPath.row == 11  {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" ) ||  applicationVars.maturity == 2 || applicationVars.maturity == 1 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
            }
            // WinterHawk
            if indexPath.row == 12  {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C" && applicationVars.district != "SC" ) || applicationVars.ph == 1 || applicationVars.fungicide == 2 || applicationVars.maturity == 1 || applicationVars.maturity == 2 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
            }

            
            //SY Wolf
            if indexPath.row == 13  {
                if( (applicationVars.district != "NW" &&  applicationVars.district != "WC" && applicationVars.district != "NC" && applicationVars.district != "C") || applicationVars.grazed == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 1 || applicationVars.clearfield == 1 )
                {
                    return 0.0
                }
            }
            //Tatanka
            if indexPath.row == 14 {
                if( (applicationVars.district != "NW" && applicationVars.district != "SW" && applicationVars.district != "WC") || applicationVars.ph == 1 || applicationVars.grazed == 1 || applicationVars.lodging == 1 || applicationVars.maturity == 2 || applicationVars.maturity == 1 || applicationVars.clearfield == 1)
                {
                    return 0.0
                }
                
            }



        }
        return 44.0
    }
    
   }
