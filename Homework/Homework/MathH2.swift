//
//  MathH2.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI



struct MathView: View {
    
    @State private var isReminder = false
    
    @ObservedObject var fetcher = MathFetcher()
    
    
    var physics = "H2 Physics"
    var body: some View {
        
                VStack {
                    List(fetcher.maths) { math in
                        
                                  
                        HStack {
                        VStack (alignment: .leading) {
                            
                            Text(math.title)
                            Text(math.info)
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            Text(math.duedate)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text(math.subject)
                                Text(math.teacher)
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            }.padding()
                            Button(action: {
                                self.isReminder.toggle()
                            }) {
                                if self.isReminder {
                                    Image(systemName: "circle.fill")
                                }
                                else {
                                    Image(systemName: "circle")
                                }
                            }
                    }
                    }
                    
                }.navigationBarTitle(Text("Homework"))
        
    }
}

struct MathView_Previews: PreviewProvider {
    static var previews: some View {
        MathView()
    }
}
