//
//  EventModel.swift
//  StopWatch 2
//
//  Created by clark on 2022/07/19.
//

import Foundation
import RealmSwift

class EventModel: Object {
    @objc dynamic var title = ""
    @objc dynamic var memo = ""
    @objc dynamic var date = "" //yyyy.MM.dd
    @objc dynamic var start_time = "" //00:00
    @objc dynamic var end_time = "" //00:00
}

func createEvent(success: @escaping () -> Void) {
    do {
        let realm = try Realm()
        let eventModel = EventModel()
        eventModel.title = titleTextField.text ?? ""
        eventModel.memo = memoTextView.text
        eventModel.date = stringFromDate(date: date as Date, format: "yyyy.MM.dd")
        eventModel.start_time = startTextField.text ?? ""
        eventModel.end_time = endTextField.text ?? ""
        
        try realm.write {
            realm.add(eventModel)
            success()
        }
    } catch {
        print("create todo error.")
    }
}

func getModel() {
    let results = realm.objects(EventModel.self)
    var eventModels: [[String:String]] = []
    for result in results {
        eventModels.append(["title": result.title,
                            "memo": result.memo,
                            "date": result.date,
                            "start_time": result.start_time,
                            "end_time": result.end_time])
    }
}

func filterModel() {
    var filterdEvents: [[String:String]] = []
    for eventModel in eventModels {
        if eventModel["date"] == stringFromDate(date: selectedDate as Date, format: "yyyy.MM.dd") {
            filterdEvents.append(eventModel)
        }
    }
    filterdModels = filterdEvents
}

func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
    filterModel()
    tableView.reloadData()
}
 
func deleteModel(selectedDate: String, indexPath: IndexPath) {
    let results = realm.objects(EventModel.self).filter("date == '\(selectedDate)'")
    do {
        try realm.write {
            realm.delete(results[indexPath.row])
            getModel()
        }
    } catch {
        print("delete data error.")
    }
}

func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
    let date = stringFromDate(date: date, format: "yyyy.MM.dd")
    var hasEvent: Bool = false
    for eventModel in eventModels {
        if eventModel["date"] == date {
            hasEvent = true
        }
    }
    if hasEvent {
        return 1
    } else {
        return 0
    }
}
