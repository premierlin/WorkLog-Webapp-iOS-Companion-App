//
//  MathH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct PwView: View {
    
    
    @ObservedObject var fetcher = PwFetcher()
    
    var body: some View {
        
                VStack {
                    List(fetcher.pws) { pw in
                        VStack (alignment: .leading) {
                            Text(pw.title)
                            Text(pw.info)
                                .font(.system(size: 14))
                            Text(pw.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }.navigationBarTitle(Text("H1 PW"))
        
    }
}

struct PwView_Previews: PreviewProvider {
    static var previews: some View {
        PwView()
    }
}
