//
//  TMTProductionCompany.swift
//  The Movies Tracker
//
//  Created by Leandro Lopes on 28/07/17.
//  Copyright © 2017 Tinfoil Hat Studios. All rights reserved.
//
//  -- auto-generated by JSON2Swift --
//

import Foundation


class TMTProductionCompany: TMTJSONCompatible {
    var id: Int
    var name: String


    required init?(json: [String: Any]?) {
        guard let json = json else {return nil}
        id = json["id"] as? Int ?? 0
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



    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }



    func jsonDictionary() -> [String: Any] {
        var dict: [String: Any] = [:]
        dict["id"] = id
        dict["name"] = name
        return dict
    }



}



