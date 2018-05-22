//
//  hpTimer.swift
//  share-time
//
//  Created by Godwin Pang on 5/19/18.
//  Copyright © 2018 share-time. All rights reserved.
//

import Foundation
import UIKit

class HPTimer{
    
    static var hp = 800
    static let maxHP = 800
    static let minHP = 0
    static let updateBlobToSadHp = 790
    static var studyHours: Float = 6
    
    static var isIncrease = false
    static var hpChangeTimeInterval:Double = 1{
        didSet{
            stopHPTimer()
            startHPTimer()
        }
    }
    
    static var hpTimer = Timer()
    
    class func startHPTimer(){
        hpTimer = Timer.scheduledTimer(timeInterval: hpChangeTimeInterval, target: self, selector: #selector(HPTimer.updateHP), userInfo: nil, repeats: true)
    }

    class func stopHPTimer(){
        hpTimer.invalidate()
    }
    
    @objc static func updateHP(){
        if (HPTimer.isIncrease){
            increaseHP()
        } else {
            decreaseHP()
        }
    }
    
    @objc static func increaseHP()->(){
        if (hp < maxHP){
            hp = hp + 1
        }
        BlobViewController.updateHPBar(hp: hp)
        if (hp > updateBlobToSadHp) {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "updateBlobToDefault"), object: nil)
        }
    }
    
    @objc static func decreaseHP()->(){
        if (hp > minHP){
            hp = hp - 1
        }
        BlobViewController.updateHPBar(hp: hp)
        if (hp < updateBlobToSadHp) {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "updateBlobToSad"), object: nil)
        }
    }
    
    static func updateStudyHours(hours: Float)->(){
        studyHours = hours
        let updateFactor:Double = 1.0/Double(hours)
        hpChangeTimeInterval = 3.0 * updateFactor
    }
}
