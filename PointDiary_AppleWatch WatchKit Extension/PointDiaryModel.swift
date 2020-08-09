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

final class PointDiaryModel {
    static let shared = PointDiaryModel()
    private init() {}
    
    let dataUrl: URL = {
        let url = FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask).first!
        let dataUrl = url.appendingPathComponent("diary.json")
        return dataUrl
    }()
    
    func donePointDairy(point: String) -> Bool{
        // 現状のDiaryを読み込む
        var currentPointDairy:[PointDiary] = getPointDairy()
        
        // PointDiary配列に新しい値を追記する
        let newPointDiary = PointDiary(point:point,date:Date())
        currentPointDairy.append(newPointDiary)
        
        // PointDiary配列をJSON化する
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        do {
            let data = try encoder.encode(currentPointDairy)
            let jsonStr:String = String(data: data, encoding: .utf8)!
            print(jsonStr)
            
            // JSONを保存する
            save(jsonStr: jsonStr, dataUrl: dataUrl)
            return true
        } catch {
            print(error.localizedDescription)
            return false
        }
    }
    
    func save(jsonStr:String,dataUrl:URL){
        do {
            try jsonStr.write(to: dataUrl, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func getPointDairy() -> [PointDiary]{
        guard let jsonstr = try? String(contentsOf: dataUrl) else {
            print("ファイル読み込みエラー")
            return []
        }
        let decoder: JSONDecoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        do {
            let decoded: [PointDiary] = try decoder.decode([PointDiary].self, from: jsonstr.data(using: .utf8)!)
            print(decoded)
            return decoded
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
