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

//  var flight: Flight? {
//    didSet {
//      guard let flight = flight else { return }
//
//      originLabel.setText(flight.origin)
//      destinationLabel.setText(flight.destination)
//      flightNumberLabel.setText(flight.number)
//
//      if flight.onSchedule {
//        statusLabel.setText("On Time")
//      } else {
//        statusLabel.setText("Delayed")
//        statusLabel.setTextColor(.red)
//      }
//    }
//  }
}
