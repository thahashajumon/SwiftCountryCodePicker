//
//  CountriesFetcher.swift
//  KYA
//
//  Created by THAHA SHAJU MON on 10/07/24.
//
import Foundation

class CountriesFetcher {
    
    func fetch() -> [Country] {
        guard let path = Bundle.main.path(forResource: "countries", ofType: "json") else {
            fatalError("countries.json file not found")
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe) //ios 13
//            let data = try Data(contentsOf: URL(filePath: path), options: .mappedIfSafe) //ios 14
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let countries = try decoder.decode([Country].self, from: data)
            return countries
        } catch {
            fatalError("Error decoding countries.json: \(error)")
        }
    }
}
