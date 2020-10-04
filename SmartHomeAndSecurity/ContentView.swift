//
//  ContentView.swift
//  SmartHomeAndSecurity
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                ZStack(alignment: .bottom) {
                    TopShape()
                        .foregroundColor(Color(#colorLiteral(red: 0.6318211555, green: 0.6928464174, blue: 0.6477723718, alpha: 1)))
                        .ignoresSafeArea(.all, edges: .top)
                        .padding(.bottom, 55)
                        
                    Image(systemName: "house")
                        .font(.system(size: 32))
                        .foregroundColor(.white)
                        .frame(width: 120, height: 120)
                        .background(Color(#colorLiteral(red: 0.9105502367, green: 0.3053531945, blue: 0.3290810287, alpha: 1)))
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color(#colorLiteral(red: 0.960719645, green: 0.8875678182, blue: 0.8975298405, alpha: 1)), lineWidth: 14))
                }
                .frame(height: 300)
                
                Text("Armed Stay")
                    .font(.system(size: 29, weight: .bold))
                    .padding(.top)
                
                Spacer()
                
                HStack {
                    Button(action: {}, label: {
                        SceneView(image: "command.circle", color: Color(#colorLiteral(red: 0.388192445, green: 0.6702141762, blue: 0.8353272676, alpha: 1)), title: "Scenes")
                    })
                    
                    Button(action: {}, label: {
                        SceneView(image: "shield", color: Color(#colorLiteral(red: 0.4392077923, green: 0.8115427494, blue: 0.6258046627, alpha: 1)), title: "Arm Zones")
                    })
                }
                
                EmergencyCallsView()
                
                MenuView()
                    .padding(.top, 8)
            }
            .background(Color(#colorLiteral(red: 0.9130843282, green: 0.9176144004, blue: 0.9305375814, alpha: 1)))
            
            VStack {
                SecurityNavigationView()
                
                SearchView()
                    .padding(.top)
                
                Spacer()
                
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
