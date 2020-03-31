//
//  MathH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct ChemView: View {
    
    
    @ObservedObject var fetcher = ChemFetcher()
    
    var body: some View {
        
                VStack {
                    List(fetcher.chems) { chem in
                        VStack (alignment: .leading) {
                            Text(chem.title)
                            Text(chem.info)
                                .font(.system(size: 14))
                            Text(chem.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }.navigationBarTitle(Text("H2 Chemistry"))
        
    }
}

struct ChemView_Previews: PreviewProvider {
    static var previews: some View {
        ChemView()
    }
}
