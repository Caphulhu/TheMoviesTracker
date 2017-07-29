//
//  TMTImageTypes.swift
//  The Movies Tracker
//
//  Created by Leandro Lopes on 29/07/17.
//  Copyright © 2017 Tinfoil Hat Studios. All rights reserved.
//
//  -- auto-generated by JSON2Swift --
//

import Foundation


class TMTImageTypes: TMTJSONCompatible {
    var change_keys: [String]
    var images: TMTImageConfiguration


    required init?(json: [String: Any]?) {
        guard let json = json else {return nil}
        change_keys = json["change_keys"] as? [String] ?? []
        images = TMTImageConfiguration(json: json["images"] as? [String: Any]) ?? TMTImageConfiguration()
    }



    required convenience init() {
        self.init(json: [:])!
    }



    required convenience init?(data: Data?) {
        guard let data = data else {return nil}
        guard let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [String: Any] else {return nil}
        self.init(json: json)
    }



    init(change_keys: [String], images: TMTImageConfiguration) {
        self.change_keys = change_keys
        self.images = images
    }



    func jsonDictionary() -> [String: Any] {
        var dict: [String: Any] = [:]
        dict["change_keys"] = change_keys
        dict["images"] = images.jsonDictionary()
        return dict
    }



}



