//
//  ContentView.swift
//  Solar System
//
//  Created by Vincent Spitale on 10/19/20.
//

import SwiftUI

struct ContentView: View {
    @State var celestialBodies = CelestialBody.loadSolarSystem()
    
    
    var body: some View {
        NavigationView{
            ScrollView{
            VStack{
            VStack{
        ForEach(celestialBodies, id: \.id) {
            body in
            
            
            NavigationLink(
                destination: DetailView(celestialBody: body)) {
                Preview(celestialBody: body)
            }
                .buttonStyle(RoundedButton(textColor: .primary, cornerRadius: 20))
            .padding(5)
            .accessibility(label: Text(body.name))
        }
        }
            .padding()
        }
            .navigationTitle("Solar System")
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.colorScheme, .dark)
            ContentView()
        }
    }
}
