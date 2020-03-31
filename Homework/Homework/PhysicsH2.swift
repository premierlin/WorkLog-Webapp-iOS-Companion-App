//
//  PhysicsH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct PhyView: View {
    
    
    @ObservedObject var fetcher = PhyFetcher()
    
    var body: some View {
        
                VStack {
                    List(fetcher.phys) { phy in
                        VStack (alignment: .leading) {
                            Text(phy.title)
                            Text(phy.info)
                                .font(.system(size: 14))
                            Text(phy.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }.navigationBarTitle(Text("H2 Physics"))
        
    }
}

struct PhyView_Previews: PreviewProvider {
    static var previews: some View {
        PhyView()
    }
}

