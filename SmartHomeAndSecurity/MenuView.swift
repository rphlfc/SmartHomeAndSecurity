//
//  MenuView.swift
//  SmartHomeAndSecurity
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct MenuView: View {
    let items = [
        Item(image: "checkmark.shield.fill", title: "Security"),
        Item(image: "wifi", title: "Automations"),
        Item(image: "video", title: "Cameras"),
        Item(image: "location.fill", title: "Tracking"),
        Item(image: "gearshape.fill", title: "Settings")
    ]
    
    @State var selectedItem = 0
    
    var body: some View {
        HStack {
            ForEach(0 ..< items.count) { i in
                VStack {
                    Image(systemName: items[i].image)
                        .font(.system(size: 24))
                    
                    Text(items[i].title)
                        .font(.system(size: 12))
                        .padding(.top, 4)
                }
                .foregroundColor(selectedItem == i ? Color(#colorLiteral(red: 0.3691394031, green: 0.6498966813, blue: 0.8408381343, alpha: 1)) : Color.gray)
                .onTapGesture {
                    selectedItem = i
                }
                
                if i < items.count - 1 {
                    Spacer()
                }
            }
        }
        .padding()
        .background(
            Rectangle()
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: -10)
        )
    }
}

struct Item: Identifiable {
    let id = UUID()
    var image: String
    var title: String
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
