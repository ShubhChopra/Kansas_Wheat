//
//  FeekesData.swift
//  TableViewDemo
//
//  Created by Shubh Chopra on 06/11/16.
//  Modified by Austin Fuller
//  Copyright (c) 2016 Shubh Chopra. All rights reserved.
//
//  Here we have several Stages of Feekes Growth:
//  (1) Leaf and Tiller Development: Germination0,Feekes1, Feekes2, Feekes3a,Feekes3b, FeekesWinter, Feekes4, Feekes5
//  (2) Stem Elongation: Feekes6,Feekes7,Feekes8,Feekes9,Feekes10
//  (3) Head Emergence and Flowering: Feekes10.1,Feekes10.5
//  (4) Grain Filling: Feekes10.5.4, Feekes11.1, Feekes11.2, Feekes11.3
//  (5) Ripening: Feekes11.4

import Foundation

class FeekesData
{
    var name: String
    var feekes: [Feekes]
    
    init(named: String, includeFeekes: [Feekes])
    {
        name = named
        feekes = includeFeekes
    }
    
    class func feekesdata() -> [FeekesData]
    {
        return [self.LeafTiller(), self.StemElongation(), self.HeadEmergence(), self.GrainFilling(), self.Ripening()]
    }
    
    fileprivate class func LeafTiller() -> FeekesData {
                var feekes = [Feekes]()
        
        feekes.append(Feekes(titled: "Germination", description: "Seeds absorb water and oxygen. The radicle, seminal roots, and the coleoptile (leaflike structure enclosing the first true leaf ) emerge from the seed. Temperatures between 54 and 77 degrees Fahrenheit are optimal for germination.", imageName: "germinationx.jpg", value: "0" ))
        
        feekes.append(Feekes(titled: "Emergence (Feekes 1)", description: "Light above the soil stops coleoptile growth. The first true leaf emerges through the tip of the coleoptile. Three leaves fully develop before tillering initiation. The seminal rooting system develops. The crown forms between the seed and soil surface.", imageName: "emergencex.jpg", value: "1"))
        
        feekes.append(Feekes(titled: "Tillering initiation (Feekes 2)", description: "Tillers are initially encased in a protective structure called the prophyll. If there are three leaves visible, a tiller will be at the base of the first leaf. Fall-formed tillers contribute more to grain yield than spring-formed tillers. The secondary rooting system starts to develop.", imageName: "f2ax.jpg" , value: "2"))
        
        feekes.append(Feekes(titled: "Continued tillering (Feekes 3)", description: "Primary tillers develop in the axils of the first four or more true leaves of the main stem. Secondary tillers may develop from the base of primary tillers. Tiller development is prioritized based on their sequential formation. The development of the secondary rooting system increases extensively.", imageName: "f3x.jpg", value: "3"))
        feekes.append(Feekes(titled: "Winter dormancy (vernalization)", description: "Gradually lowering temperatures induce winter hardiness in winter wheat. Vernalization requirements range from three to six weeks of temperatures below 50 degrees Fahrenheit.", imageName: "fwinterx.jpg",value: "3"))
        
        feekes.append(Feekes(titled: "Completion of tillering (Feekes 3)", description: "Once requirements are met, the growing point differentiates and the embryonic head reaches the double ridge stage. Depending on the season and planting date, some tillering occurs in the spring. Genetic potential and environmental conditions determine the number of tillers on a plant. Tillers with three or more leaves are nutritionally independent from the main stem.", imageName: "f3x.jpg",value: "3"))
        
        feekes.append(Feekes(titled: "Leaf sheaths lengthen spring greenup (Feekes 4)", description: "Leaf sheaths begin to lengthen. The pseudo-stem, a succession of leaves wrapped around each other, starts to become erect.", imageName: "f4x.jpg",value: "4"))
        
        feekes.append(Feekes(titled: "Leaf sheaths strongly erect (Feekes 5)", description: "The pseudo-stem is strongly erect and leaf sheaths are elongated. The developing head reaches the terminal spikelet stage and is pushed up into the pseudo-stem. The potential number of spikelets per head is determined at Feekes 5. The first hollow stem stage occurs when there is approximately 0.6 inch of hollow stem below the developing head. Crop water use is about 0.1 inch per day.", imageName: "f5ax.jpg",value: "5"))
        return FeekesData(named: "LeafTiller", includeFeekes: feekes)
    }
    
    fileprivate class func StemElongation() -> FeekesData
    {
        var feekes = [Feekes]()
        
        feekes.append(Feekes(titled: "First node of stem visible jointing (Feekes 6)", description: "The first node of the stem becomes visible as a result of internode elongation. Nodes are stacked and move up as the internodes elongate much like a telescope. Sensitivity to low temperatures increases as the developing head moves up the stem. Crop water demand increases to about 0.25 inch per day.", imageName: "f6x.jpg" , value: "6"))
        
        feekes.append(Feekes(titled: "Second node of stem visible (Feekes 7)", description: "As the second node of the stem is formed, the next-to-last leaf is just visible. Demand for water and nutrients increases. Temperatures lower than 24 degrees Fahrenheit can damage the developing head.", imageName: "f7x.jpg" , value: "7"))
        
        feekes.append(Feekes(titled: "Last leaf just visible (Feekes 8)", description: "The flag leaf starts to emerge from the whorl above the third or fourth node. Strong partitioning of photosynthates to the developing head. Crop water demand increases to about 0.3 inch per day.", imageName: "f8x.png", value: "8"))
        
        feekes.append(Feekes(titled: "Ligule of flag leaf visible (Feekes 9)", description: "The flag leaf is completely emerged from the whorl. Flag leaf and the next- to-last leaf combined account for 70 to 90% of the photosynthates used for grain fill and must be protected for the plant to develop its full potential.", imageName: "f9x.png" , value: "9"))
        
        feekes.append(Feekes(titled: "Boot (Feekes 10)", description: "The head is inside the leaf sheath giving it a swollen appearance. The flag leaf sheath and peduncle elongate and the developing head is pushed through the flag leaf sheath. Temperatures below 28 degrees Fahrenheit may cause damage to the developing head.", imageName: "f10x.png", value: "10"))
       
        
        return FeekesData(named: "StemElongation", includeFeekes: feekes)
    }
    
    fileprivate class func HeadEmergence() -> FeekesData
    {
        var feekes = [Feekes]()
        feekes.append(Feekes(titled: "Heading (Feekes 10.1-10.5)", description: "The first spikes escape through a split in the sheath at Feekes 10.1. All heads are out of the sheath at Feekes 10.5. It usually takes 3 to 5 days for the head to fully extend above the flag leaf. Temperatures below 30 degrees Fahrenheit may damage the developing head. Crop water demand can exceed 0.3 inch per day during heading through grain development.", imageName: "f101x.jpg" , value: "10"))
        
        feekes.append(Feekes(titled: "Flowering (anthesis) (Feekes10.5.1 - 10.5.3)", description: "Flowering begins shortly after the head has fully emerged and lasts 3 to 5 days, starting slightly above the middle portion of the head. Feekes 10.5.2 occurs when flowering is complete at the top of the head and Feekes 10.5.3 occurs when flowering is complete at the base. The number of flowers pollinated determines the number of kernels per spike. At this stage, wheat is extremely susceptible to freeze injury at temperatures below 32 degrees Fahrenheit.", imageName: "f105x.jpg" , value: "10"))
        
        return FeekesData(named: "HeadEmergence", includeFeekes: feekes)
    }
    
   
    fileprivate class func GrainFilling() -> FeekesData
    {
        var feekes = [Feekes]()

        
        feekes.append(Feekes(titled: "Watery ripe (Feekes 10.5.4)", description: "Establishment of kernel length about 10 days after flowering. Rapid increase in grain size, but little dry matter accumulation. A clear fluid can be squeezed from the developing kernel.", imageName: "watery ripex.jpg" , value: "10"))
        
        feekes.append(Feekes(titled: "Milky ripe milk stage (Feekes 11.1)", description: "During the dough stage, the kernel rapidly accumulates starch and nutrients and most of its dry weight. Material squeezed out of the kernel has a doughy consistency. Green color begins to fade and kernels are soft but dry.", imageName: "milk stagex.jpg" , value: "11"))
        
        feekes.append(Feekes(titled: "Mealy ripe (soft dough) (Feekes 11.2)", description: "The flag leaf starts to emerge from the whorl above the third or fourth node. Strong partitioning of photosynthates to the developing head. Crop water demand increases to about 0.3 inch per day.", imageName: "soft doughx.jpg", value: "11"))
        
        feekes.append(Feekes(titled: "Kernel hard (hard dough) (Feekes 11.3)", description: "Kernel moisture decreases from 40 to 30% during ripening, kernels achieve maximum dry weight and are physiologically mature. Kernels are hard and difficult to divide by thumbnail.", imageName: "hard doughx.jpg" , value: "11"))
        
        return FeekesData(named: "GrainFilling", includeFeekes: feekes)
    }
    
    fileprivate class func Ripening() -> FeekesData
    {
        var feekes = [Feekes]()
        feekes.append(Feekes(titled: "Kernel ripe (Feekes 11.4)", description: "Kernel moisture decreases from 30 to 15% during ripening, and green plant tissue becomes straw.", imageName: "harvestx.jpg" , value: "11"))
        
                return FeekesData(named: "Ripening", includeFeekes: feekes)
    }
}













