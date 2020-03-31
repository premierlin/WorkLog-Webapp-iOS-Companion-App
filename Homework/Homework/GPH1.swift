//
//  MathH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct GpView: View {
    
    
    @ObservedObject var fetcher = GpFetcher()
    
    var body: some View {
        
                VStack {
                    List(fetcher.gps) { gp in
                        VStack (alignment: .leading) {
                            Text(gp.title)
                            Text(gp.info)
                                .font(.system(size: 14))
                            Text(gp.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }.navigationBarTitle(Text("H1 GP"))
        
    }
}

struct GpView_Previews: PreviewProvider {
    static var previews: some View {
        GpView()
    }
}
