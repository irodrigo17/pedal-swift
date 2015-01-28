//
//  DictionaryRepresentable.swift
//  Pedal
//
//  Created by Ignacio Rodrigo on 1/27/15.
//  Copyright (c) 2015 Ignacio Rodrigo. All rights reserved.
//

import Foundation

protocol DictionaryRepresentable {

    func toDictionary() -> [String: AnyObject]

    init(dictionary: [String: AnyObject])

}
