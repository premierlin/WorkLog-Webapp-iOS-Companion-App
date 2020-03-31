//
//  5C35.swift
//  Homework
//
//  Created by Don Chia on 5/3/20.
//  Copyright © 2020 Don Chia. All rights reserved.
//

import SwiftUI

struct Box {
    var id: Int
    let title, image, description: String
}

struct _C35: View {
    
    @ObservedObject var fetcher = MathFetcher()
    
    let boxes:[Box] = [
        Box(id: 0, title: "Timetable", image: "timetable", description: "Class Timetable"),
        Box(id: 1, title: "Math Formulaes", image: "math", description: "Math")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(Axis.Set.vertical, showsIndicators: false) {
                VStack {
                NavigationLink(destination: MathView()) {
                    VStack (alignment: .leading){
                    Text("Homework")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        //.padding(.trailing, 180.0)
                        .frame(width: 375.0, height: 300.0)
                        .background(Image("homework").renderingMode(.original)
                            .resizable()
                            .opacity(0.7))
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                }
                .shadow(color: Color.black, radius: 3)
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Information")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Check out class info here")
                                .font(.footnote)
                                .foregroundColor(Color.gray)
                        }.padding(.horizontal)
                        Spacer()
                        NavigationLink(destination: MathView()) {
                            Text("View All")
                        }.padding(.horizontal)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach(boxes, id: \.id) { box in
                                BoxView(box: box)
                            }
                        }
                    }
                    
                }
                .padding(.vertical)
                    
                    NavigationLink(destination: CompView()) {
                        VStack (alignment: .leading){
                        Text("Announcements")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            //.padding(.trailing, 180.0)
                            .frame(width: 375.0, height: 300.0)
                            .background(Image("other").renderingMode(.original)
                                .resizable()
                                .opacity(0.7))
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .shadow(color: Color.black, radius: 3)
                }
            }.navigationBarTitle(Text("5C35"))
        }
    }
}

struct BoxView: View {
    
    let box: Box
    
    var body: some View {
        VStack {
            NavigationLink(destination: BoxViewPress(box: box)) {
                Image(box.image)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 250, height: 150)
                    .cornerRadius(20)
                    
            }
            .shadow(color: Color.black, radius: 3)
            Text(box.title)
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .padding(.leading, 10)
        .padding(/*@START_MENU_TOKEN@*/.top, 5.0/*@END_MENU_TOKEN@*/)
        
    }
}

struct BoxViewPress: View {
    
    let box: Box
    
    var body: some View {
        ZStack {
            Image(box.image)
                //.resizable()
                //.frame(width: 750, height: 1000)
                .blur(radius: 10)
            Image(box.image)
            .resizable()
            .rotationEffect(.degrees(-90))
            .frame(width: 1000, height: 425)
                    Image("BottomGradient")
                        .padding(.top, 525.0)
                        .edgesIgnoringSafeArea(.all)
                    Image("TopGradient")
                        .padding(.bottom, 625.0)
                        .edgesIgnoringSafeArea(.all)
            VStack {
                HStack(alignment: .bottom) {
                    Text(box.description)
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .frame(width: 200.0, height: 500.0)
                        //.padding(.horizontal, 175.0)
                        .padding(.top, 650.0)
                //Spacer()
                }
            }
            .padding()
        }
    }
}


struct _C35_Previews: PreviewProvider {
    static var previews: some View {
        _C35()
    }
}
