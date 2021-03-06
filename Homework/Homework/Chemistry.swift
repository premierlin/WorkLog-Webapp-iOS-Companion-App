//
//  Comp.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

public class ChemFetcher: ObservableObject {
    
    @Published var chems = [Chem]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://raw.githubusercontent.com/dhs17y2adonchia/homework5c35/master/chem.json")!
        
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Chem].self, from: d)
                    DispatchQueue.main.async {
                        self.chems = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
        
    }
}

struct Chem: Codable, Identifiable {
    public var id: Int
    public var title: String
    public var duedate: String
    public var info: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case duedate = "duedate"
        case info = "info"
    }
}
