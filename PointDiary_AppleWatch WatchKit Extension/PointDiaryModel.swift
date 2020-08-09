//
//  PointDiaryModel.swift
//  PointDiary_AppleWatch WatchKit Extension
//
//  Created by Shu Nakamura on 2020/07/28.
//  Copyright © 2020 ShuNakamura. All rights reserved.
//

import Foundation
import WatchKit

struct PointDiary:Codable {
    let point: String
    let date: Date
}

class PointDiaryModel {
    
    class func donePointDairy(point: String){
        let pointDiary = PointDiary(point:point,date:Date())
        
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        do {
            let data = try encoder.encode(pointDiary)
            let jsonstr:String = String(data: data, encoding: .utf8)!
            print(jsonstr)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    class func getPointDairy() -> [PointDiary]{
        
        let jsonstr = """
        {
        "point" : "43",
        "date" : "2018-01-08T03:24:12Z"
        }
        """
        let decoder: JSONDecoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        do {
            let decoded: PointDiary = try decoder.decode(PointDiary.self, from: jsonstr.data(using: .utf8)!)
            print(decoded)
            return [decoded]
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
