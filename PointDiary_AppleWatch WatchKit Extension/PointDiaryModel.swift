//
//  PointDiaryModel.swift
//  PointDiary_AppleWatch WatchKit Extension
//
//  Created by Shu Nakamura on 2020/07/28.
//  Copyright © 2020 ShuNakamura. All rights reserved.
//

import Foundation
import WatchKit

class PointDiary {
    
    let point: String
    let date: Date
    
    //  class func allPointDiarys() -> [PointDiary] {
    //    var pointDiarys: [PointDiary] = []
    //    let formatter = DateFormatter()
    //    formatter.dateFormat = "HH:mm"
    //
    ////    guard let path = Bundle.main.path(forResource: "Flights", ofType: "json"),
    ////      let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
    ////        return flights
    ////    }
    //
    ////    do {
    ////      let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String: String]]
    ////      json.forEach({ (dict: [String: String]) in
    ////        flights.append(Flight(dictionary: dict, formatter: formatter))
    ////      })
    ////    } catch let error as NSError {
    ////      print(error)
    ////    }
    ////
    ////    return flights
    //  }
    
    init(point: String, date: Date) {
        self.point = point
        self.date = date
    }
    
    //  convenience init(dictionary: [String: String], formatter: DateFormatter) {
    //    let origin = dictionary["origin"]!
    //    let destination = dictionary["destination"]!
    //    let number = dictionary["number"]!
    //    let boardsAt = formatter.string(from: Date().addingTimeInterval(Double(arc4random_uniform(21600) + 1800)))
    //    let delayed = dictionary["delayed"]!
    //    let gate = dictionary["gate"]!
    //    let row = ["A", "B", "C", "D", "E", "F", "G"]
    //    let seat = "\(arc4random_uniform(40) + 1)\(row[Int(arc4random_uniform(UInt32(row.count)))])"
    //    self.init(origin: origin, destination: destination, number: number, boardsAt: boardsAt, delayed: delayed, gate: gate, seat: seat)
    //  }
}
