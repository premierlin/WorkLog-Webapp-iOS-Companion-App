//
//  MathH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct EllView: View {
    
    
    @ObservedObject var fetcher = EllFetcher()
    
    var body: some View {
        
                VStack {
                    List(fetcher.ells) { ell in
                        VStack (alignment: .leading) {
                            Text(ell.title)
                            Text(ell.info)
                                .font(.system(size: 14))
                            Text(ell.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }.navigationBarTitle(Text("H2 ELL and Elit"))
        
    }
}

struct EllView_Previews: PreviewProvider {
    static var previews: some View {
        EllView()
    }
}
