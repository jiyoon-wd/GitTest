//
//  ContentView.swift
//  GitTest
//
//  Created by Jiyoon on 2/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var items:[String] = []
    @State var currentText = " "
    var body: some View {
        VStack {//vertically, HStack - horizontally ZStack- on top of stuffs
            Text("Grocery  List")
                .font(.system(.title, design: .rounded, weight: .bold))
                .padding(50)
                .background(Color.blue)
            List (items, id: \.self){
                item in
                Text(item)
            }
            HStack {
                TextField("Add item here", text: $currentText)
                Button(
                    action:{addItem(item: currentText)}, label: { Image(systemName: "square.fill")})
            }
            .padding(25)
            .background(.cyan)
            .cornerRadius(15)
            .padding(15)
            }
        }
    func addItem(item:String) {
        items.append(item)
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
