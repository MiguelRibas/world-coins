//
//  RatesApi.swift
//  world-coins
//
//  Created by UserTQI on 28/09/24.
//

import Foundation

enum HttpMethod: String {
    case get = "GET"
}

struct RatesApi {
    static let baseUrl = "https://api.apilayer.com/exchangerates_data"
    static let apiKey = "gtAxWxB6WzdmwZFljJ45k0GQDPKGkzWg"
    
    static let fluctuation = "/fluctuation"
    static let symbols = "/symbols"
    static let timeseries = "/timeseries"
}
