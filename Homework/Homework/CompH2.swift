//
//  MathH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct CompView: View {
    
    
    @ObservedObject var fetcher = CompFetcher()
    
    var body: some View {
        
                VStack {
                    List(fetcher.comps) { comp in
                        VStack (alignment: .leading) {
                            Text(comp.title)
                            Text(comp.info)
                                .font(.system(size: 14))
                            Text(comp.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }.navigationBarTitle(Text("Announcements"))
        
    }
}

struct CompView_Previews: PreviewProvider {
    static var previews: some View {
        CompView()
    }
}
