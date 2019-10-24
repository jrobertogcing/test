//
//  ContentView.swift
//  NavigationLink in NavigationBarItems
//
//  Created by O'Donnell, Troy(AWF) on 10/21/19.
//  Copyright © 2019 O'Donnell, Troy(AWF). All rights reserved.
//

import SwiftUI


//struct ContentView2: View {
//    
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                HStack {
//                    Spacer()
//                    headerGearImage(som:true)
//                        .padding(.trailing)
//                }
//                ScrollView {
//                    Text("This is a list!")
//                    NavigationLink(destination: NewView()) {
//                        Text("This is a navigationLink to the same View as the gear icon!")
//                            .foregroundColor(Color.gray)
//                    }
//                    
//                }
//            }.navigationBarHidden(true)
//            .navigationBarTitle(Text(""))
//        }
//    }
//}

struct ContentView: View {
    
    @State var som: Bool


    var body: some View {
        NavigationView {
            ScrollView {
                Text("This is a list!")
//                NavigationLink(destination: NewView()) {
                    Text("This is a navigationLink to the same View as the gear icon!")
                        .foregroundColor(Color.gray)
                   
//                }
                NavigationLink(destination:NewView(), isActive: $som) { EmptyView() }

                
            }.navigationBarItems(trailing:
            
                Button(action: {
                    self.som.toggle()
                    print("Something")
                }) {
                    Image(systemName: "gear")

                }
            )

        }
    }
}

//struct headerGearImage: View {
//
//
//    var body: some View {
////        NavigationLink(destination: NewView()) {
////                .foregroundColor(Color.gray)
////
////        }
//        VStack {
//            Button(action: {
//                self.som.toggle()
//            }) {
//                Image(systemName: "gear")
//
//            }
//
//
//        }
//
//
//    }
//}

func act() {

}

struct NewView: View {
    
    var body: some View {
            Text("This is the details view!")
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
