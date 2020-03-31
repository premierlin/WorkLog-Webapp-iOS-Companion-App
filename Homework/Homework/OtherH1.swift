//
//  MathH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct OtherView: View {
    
    
    @ObservedObject var fetcher = OtherFetcher()
    
    var body: some View {
        
                VStack {
                    List(fetcher.others) { other in
                        VStack (alignment: .leading) {
                            Text(other.title)
                            Text(other.info)
                                .font(.system(size: 14))
                            Text(other.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }.navigationBarTitle(Text("Announcements"))
        
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
