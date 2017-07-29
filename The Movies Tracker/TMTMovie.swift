//
//  TMTMovie.swift
//  The Movies Tracker
//
//  Created by Leandro Lopes on 28/07/17.
//  Copyright © 2017 Tinfoil Hat Studios. All rights reserved.
//
//  -- auto-generated by JSON2Swift --
//

import Foundation


class TMTMovie: TMTJSONCompatible {
    var budget: Int
    var backdrop_path: String
    var revenue: Int
    var vote_count: Int
    var overview: String
    var vote_average: Double
    var video: Bool
    var imdb_id: String
    var id: Int
    var title: String
    var homepage: String
    var production_companies: [TMTProductionCompany]
    var adult: Bool
    var poster_path: String
    var belongs_to_collection: Any?
    var genres: [TMTGenre]
    var spoken_languages: [TMTSpokenLanguage]
    var status: String
    var runtime: Int
    var original_title: String
    var release_date: String
    var original_language: String
    var popularity: Double
    var tagline: String
    var production_countries: [TMTProductionCountry]


    required init?(json: [String: Any]?) {
        guard let json = json else {return nil}
        budget = json["budget"] as? Int ?? 0
        backdrop_path = json["backdrop_path"] as? String ?? ""
        revenue = json["revenue"] as? Int ?? 0
        vote_count = json["vote_count"] as? Int ?? 0
        overview = json["overview"] as? String ?? ""
        vote_average = json["vote_average"] as? Double ?? 0.0
        video = json["video"] as? Bool ?? false
        imdb_id = json["imdb_id"] as? String ?? ""
        id = json["id"] as? Int ?? 0
        title = json["title"] as? String ?? ""
        homepage = json["homepage"] as? String ?? ""
        production_companies = (json["production_companies"] as? [[String: Any]] ?? []).flatMap{TMTProductionCompany(json: $0)}
        adult = json["adult"] as? Bool ?? false
        poster_path = json["poster_path"] as? String ?? ""
        belongs_to_collection = json["belongs_to_collection"]
        genres = (json["genres"] as? [[String: Any]] ?? []).flatMap{TMTGenre(json: $0)}
        spoken_languages = (json["spoken_languages"] as? [[String: Any]] ?? []).flatMap{TMTSpokenLanguage(json: $0)}
        status = json["status"] as? String ?? ""
        runtime = json["runtime"] as? Int ?? 0
        original_title = json["original_title"] as? String ?? ""
        release_date = json["release_date"] as? String ?? ""
        original_language = json["original_language"] as? String ?? ""
        popularity = json["popularity"] as? Double ?? 0.0
        tagline = json["tagline"] as? String ?? ""
        production_countries = (json["production_countries"] as? [[String: Any]] ?? []).flatMap{TMTProductionCountry(json: $0)}
    }



    required convenience init() {
        self.init(json: [:])!
    }



    required convenience init?(data: Data?) {
        guard let data = data else {return nil}
        guard let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [String: Any] else {return nil}
        self.init(json: json)
    }



    init(budget: Int, backdrop_path: String, revenue: Int, vote_count: Int, overview: String, vote_average: Double, video: Bool, imdb_id: String, id: Int, title: String, homepage: String, production_companies: [TMTProductionCompany], adult: Bool, poster_path: String, belongs_to_collection: Any?, genres: [TMTGenre], spoken_languages: [TMTSpokenLanguage], status: String, runtime: Int, original_title: String, release_date: String, original_language: String, popularity: Double, tagline: String, production_countries: [TMTProductionCountry]) {
        self.budget = budget
        self.backdrop_path = backdrop_path
        self.revenue = revenue
        self.vote_count = vote_count
        self.overview = overview
        self.vote_average = vote_average
        self.video = video
        self.imdb_id = imdb_id
        self.id = id
        self.title = title
        self.homepage = homepage
        self.production_companies = production_companies
        self.adult = adult
        self.poster_path = poster_path
        self.belongs_to_collection = belongs_to_collection
        self.genres = genres
        self.spoken_languages = spoken_languages
        self.status = status
        self.runtime = runtime
        self.original_title = original_title
        self.release_date = release_date
        self.original_language = original_language
        self.popularity = popularity
        self.tagline = tagline
        self.production_countries = production_countries
    }



    func jsonDictionary() -> [String: Any] {
        var dict: [String: Any] = [:]
        dict["budget"] = budget
        dict["backdrop_path"] = backdrop_path
        dict["revenue"] = revenue
        dict["vote_count"] = vote_count
        dict["overview"] = overview
        dict["vote_average"] = vote_average
        dict["video"] = video
        dict["imdb_id"] = imdb_id
        dict["id"] = id
        dict["title"] = title
        dict["homepage"] = homepage
        dict["production_companies"] = production_companies.map{$0.jsonDictionary()}
        dict["adult"] = adult
        dict["poster_path"] = poster_path
        dict["belongs_to_collection"] = belongs_to_collection
        dict["genres"] = genres.map{$0.jsonDictionary()}
        dict["spoken_languages"] = spoken_languages.map{$0.jsonDictionary()}
        dict["status"] = status
        dict["runtime"] = runtime
        dict["original_title"] = original_title
        dict["release_date"] = release_date
        dict["original_language"] = original_language
        dict["popularity"] = popularity
        dict["tagline"] = tagline
        dict["production_countries"] = production_countries.map{$0.jsonDictionary()}
        return dict
    }



}



