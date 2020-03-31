//
//  MathH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct EconsView: View {
    
    
    @ObservedObject var fetcher = EconFetcher()
    
    var body: some View {
        
                VStack {
                    List(fetcher.econs) { econ in
                        VStack (alignment: .leading) {
                            Text(econ.title)
                            Text(econ.info)
                                .font(.system(size: 14))
                            Text(econ.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }.navigationBarTitle(Text("H2 Economics"))
        
    }
}

struct EconsView_Previews: PreviewProvider {
    static var previews: some View {
        EconsView()
    }
}
