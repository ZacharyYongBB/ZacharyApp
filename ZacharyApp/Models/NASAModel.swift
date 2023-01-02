//
//  NASAModel.swift
//  ZacharyApp
//
//  Created by Zachary on 2/1/23.
//

import Foundation


// NASA API info
/*
 
 URL:https://api.nasa.gov/planetary/apod?api_key=t14iHVtd0lwAUoIuoUs0vQBe9kcAyJhmduYGWuFY
 
 JSON RESPONSE
 {
     "copyright": "Tunc Tezel",
     "date": "2023-01-02",
     "explanation": "Look up tonight and see a whole bunch of planets. Just after sunset, looking west, planets Venus, Saturn, Jupiter and Mars will all be simultaneously visible. Listed west to east, this planetary lineup will have Venus nearest the horizon, but setting shortly after the Sun.  It doesn't matter where on Earth you live because this early evening planet parade will be visible through clear skies all around the globe.  Taken late last month, the featured image captured all of these planets and more: the Moon and planet Mercury were also simultaneously visible.  Below visibility were the planets Neptune and Uranus, making this a nearly all-planet panorama. In the foreground are hills around the small village of Gökçeören, Kaş, Turkey, near the Mediterranean coast.  Bright stars Altair, Fomalhaut, and Aldebaran are also prominent, as well as the Pleiades star cluster. Venus will rise higher in the sky at sunset as January continues, but Saturn will descend.",
     "hdurl": "https://apod.nasa.gov/apod/image/2301/AllPlanets_Tezel_1680_annotated.jpg",
     "media_type": "image",
     "service_version": "v1",
     "title": "After Sunset Planet Parade",
     "url": "https://apod.nasa.gov/apod/image/2301/AllPlanets_Tezel_1080_annotated.jpg"
 }
 
 */


struct NASAModel: Codable {
    let copyright, date, explanation: String?
    let hdurl: String?
    let mediaType, serviceVersion, title: String?
    let url: String?
    
    enum CodingKeys: String, CodingKey {
        case copyright, date, explanation
        case hdurl
        case mediaType = "media_type"
        case serviceVersion = "service_version"
        case title
        case url
    }
}

