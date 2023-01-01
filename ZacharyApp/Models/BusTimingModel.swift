//
//  BusTimingModel.swift
//  ZacharyApp
//
//  Created by Zachary on 31/12/22.
//

import Foundation
    
    // LTA API
    /*
     http://datamall2.mytransport.sg/ltaodataservice/BusArrivalv2?BusStopCode=22249
     
     
     JSON RESPONSE:
     {
         "odata.metadata": "http://datamall2.mytransport.sg/ltaodataservice/$metadata#BusArrivalv2/@Element",
         "BusStopCode": "22249",
         "Services": [
             {
                 "ServiceNo": "192",
                 "Operator": "SBST",
                 "NextBus": {
                     "OriginCode": "25009",
                     "DestinationCode": "22009",
                     "EstimatedArrival": "2022-12-31T16:28:05+08:00",
                     "Latitude": "1.3274196666666667",
                     "Longitude": "103.679217",
                     "VisitNumber": "1",
                     "Load": "SEA",
                     "Feature": "WAB",
                     "Type": "DD"
                 },
                 "NextBus2": {
                     "OriginCode": "25009",
                     "DestinationCode": "22009",
                     "EstimatedArrival": "2022-12-31T16:35:17+08:00",
                     "Latitude": "1.3193146666666666",
                     "Longitude": "103.658787",
                     "VisitNumber": "1",
                     "Load": "SEA",
                     "Feature": "WAB",
                     "Type": "DD"
                 },
                 "NextBus3": {
                     "OriginCode": "25009",
                     "DestinationCode": "22009",
                     "EstimatedArrival": "2022-12-31T16:43:26+08:00",
                     "Latitude": "1.3323583333333333",
                     "Longitude": "103.64332816666666",
                     "VisitNumber": "1",
                     "Load": "SEA",
                     "Feature": "WAB",
                     "Type": "DD"
                 }
             },
             {
                 "ServiceNo": "243G",
                 "Operator": "SBST",
                 "NextBus": {
                     "OriginCode": "22009",
                     "DestinationCode": "22009",
                     "EstimatedArrival": "2022-12-31T16:25:16+08:00",
                     "Latitude": "1.347216",
                     "Longitude": "103.69398366666667",
                     "VisitNumber": "1",
                     "Load": "SEA",
                     "Feature": "WAB",
                     "Type": "SD"
                 },
                 "NextBus2": {
                     "OriginCode": "22009",
                     "DestinationCode": "22009",
                     "EstimatedArrival": "2022-12-31T16:33:07+08:00",
                     "Latitude": "1.3437371666666666",
                     "Longitude": "103.70365833333334",
                     "VisitNumber": "1",
                     "Load": "SEA",
                     "Feature": "WAB",
                     "Type": "DD"
                 },
                 "NextBus3": {
                     "OriginCode": "22009",
                     "DestinationCode": "22009",
                     "EstimatedArrival": "2022-12-31T16:37:19+08:00",
                     "Latitude": "0",
                     "Longitude": "0",
                     "VisitNumber": "1",
                     "Load": "SEA",
                     "Feature": "WAB",
                     "Type": "DD"
                 }
             }
         ]
     }
     */




struct BusModel: Identifiable, Codable {
    var id = UUID().uuidString
    let odataMetadata: String?
    let busStopCode: String
    let services: [Service?]
}

struct Service: Codable {
    let serviceNo, serviceOperator: String?
    let nextBus, nextBus2, nextBus3: NextBus?
}

struct NextBus: Codable {
    let originCode, destinationCode: String?
    let estimatedArrival: String?
    let latitude, longitude, visitNumber, load: String?
    let feature, type: String?
}
