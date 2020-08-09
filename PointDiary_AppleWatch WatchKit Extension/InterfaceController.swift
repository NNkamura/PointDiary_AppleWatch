//
//  InterfaceController.swift
//  PointDiary_AppleWatch WatchKit Extension
//
//  Created by Shu Nakamura on 2020/07/27.
//  Copyright © 2020 ShuNakamura. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var pointPicker: WKInterfacePicker!
    @IBOutlet weak var pointTable: WKInterfaceTable!
    var selectedPickerIndex = 0
    
    var viewPointDiaryModels = [PointDiary](){
        didSet{
            pointTableViewReload()
        }
    }
    
    @IBAction func pickerAction(_ value: Int) {
        selectedPickerIndex = value
    }
    
    @IBAction func doneButtonAction() {
        PointDiaryModel.donePointDairy(point: String(selectedPickerIndex))
        viewPointDiaryModels = PointDiaryModel.getPointDairy()
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        initViewLoad()
    }
    
    private func initViewLoad(){
        var pointList:[String] = [String]()
        for i in 0 ..< 101 {
            pointList.append(String(i))
        }
        
        let pickerItems: [WKPickerItem] = pointList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pointPicker.setItems(pickerItems)
        
        viewPointDiaryModels = PointDiaryModel.getPointDairy()
    }
    
    private func pointTableViewReload(){
        pointTable.setNumberOfRows(viewPointDiaryModels.count, withRowType: "PointRowController")
        
        for index in 0..<pointTable.numberOfRows {
            guard let controller = pointTable.rowController(at: index) as? PointRowController else { continue }
            controller.setInit(point: viewPointDiaryModels[index].point, date: viewPointDiaryModels[index].date)
        }
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
}
