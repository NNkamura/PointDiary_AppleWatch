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
    @IBOutlet var dateLabel: WKInterfaceDate!
    @IBOutlet var timeLabel: WKInterfaceDate!
    
    
    func setInit(point: String){//, date1: Calendar, date2: Calendar) {
        pointLabel.setText(point)
        dateLabel.setCalendar(Calendar.current)
        timeLabel.setCalendar(Calendar.current)
    }
}
