//
//  TMTSpokenLanguage.swift
//  The Movies Tracker
//
//  Created by Leandro Lopes on 28/07/17.
//  Copyright © 2017 Tinfoil Hat Studios. All rights reserved.
//
//  -- auto-generated by JSON2Swift --
//

import Foundation


class TMTSpokenLanguage: TMTJSONCompatible {
    var iso_639_1: String
    var name: String


    required init?(json: [String: Any]?) {
        guard let json = json else {return nil}
        iso_639_1 = json["iso_639_1"] as? String ?? ""
        name = json["name"] as? String ?? ""
    }



    required convenience init() {
        self.init(json: [:])!
    }



    required convenience init?(data: Data?) {
        guard let data = data else {return nil}
        guard let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [String: Any] else {return nil}
        self.init(json: json)
    }



    init(iso_639_1: String, name: String) {
        self.iso_639_1 = iso_639_1
        self.name = name
    }



    func jsonDictionary() -> [String: Any] {
        var dict: [String: Any] = [:]
        dict["iso_639_1"] = iso_639_1
        dict["name"] = name
        return dict
    }



}



