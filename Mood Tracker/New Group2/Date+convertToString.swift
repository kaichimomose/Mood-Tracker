//
//  Date+convertToString.swift
//  Mood Tracker
//
//  Created by Kaichi Momose on 2017/09/28.
//  Copyright © 2017 Kaichi Momose. All rights reserved.
//

import Foundation

extension Date {
    func convertToString() -> String {
        return DateFormatter.localizedString(from: self, dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.medium)
    }
}
