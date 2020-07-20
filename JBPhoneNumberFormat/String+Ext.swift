//
//  String+Ext.swift
//  JBPhoneNumberFormat
//
//  Created by Jeongbae Kong on 2020/07/20.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import Foundation

extension String {
  public func toPhoneNumber() -> String {
    return self.replacingOccurrences(of: "(\\d{3})(\\d{4})(\\d+)", with: "$1-$2-$3", options: .regularExpression, range: nil)
  }
}
