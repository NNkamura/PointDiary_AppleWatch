//
//  PointRowController.swift
//  PointDiary_AppleWatch WatchKit Extension
//
//  Created by Shu Nakamura on 2020/07/28.
//  Copyright © 2020 ShuNakamura. All rights reserved.
//

import WatchKit

class PointRowController: NSObject {
    @IBOutlet var pointLabel: WKInterfaceLabel!
    @IBOutlet var dayLabel: WKInterfaceLabel!
    @IBOutlet var timeLabel: WKInterfaceLabel!
    
    
    func setInit(point: String, date: Date) {
        let formatterDay = DateFormatter()
        formatterDay.timeStyle = .none
        formatterDay.dateStyle = .long
        formatterDay.locale = Locale(identifier: "ja_JP")
        
        let formatterTime = DateFormatter()
        formatterTime.timeStyle = .long
        formatterTime.dateStyle = .none
        formatterTime.locale = Locale(identifier: "ja_JP")
        
        pointLabel.setText(point)
        dayLabel.setText(formatterDay.string(from: date))
        timeLabel.setText(formatterTime.string(from: date))
    }
}
