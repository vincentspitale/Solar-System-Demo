//
//  DetailView.swift
//  Solar System
//
//  Created by Vincent Spitale on 10/20/20.
//

import SwiftUI

struct DetailView: View {
    var celestialBody: CelestialBody
    
    var body: some View {
        ScrollView{
        VStack{
                ModelView(filePath: Bundle.main.url(forResource: celestialBody.name, withExtension: "usdz"), isRotating: true)
                    .aspectRatio(contentMode: .fit)
            
            HStack{
                Text("Radius")
                    .bold()
                Spacer()
                Text(String(celestialBody.radius) + " km")
            }
            .padding(.vertical, 5)
            
            HStack{
                Text("Mass")
                    .bold()
                Spacer()
                Text(String(celestialBody.mass) + " kg")
            }
            .padding(.vertical, 5)
            
            HStack{
                Text("Distance From Sun")
                    .bold()
                Spacer()
                Text(String(celestialBody.distanceFromSun) + " km")
            }
            .padding(.vertical, 5)
            
            if let moons = celestialBody.numMoons {
                HStack{
                    Text("Moons")
                        .bold()
                    Spacer()
                    Text(String(moons))
                }
                .padding(.vertical, 5)
            }
                    
            if let orbitalPeriod = celestialBody.yearInEarthDays {
            HStack{
                Text("Orbital Period")
                    .bold()
                Spacer()
                Text(String(Int(orbitalPeriod)) + " Earth Days")
            }
            .padding(.vertical, 5)
            }
            
            
                
            
            Spacer()
        }
        .padding()
        .navigationTitle(celestialBody.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        DetailView(celestialBody: CelestialBody.loadSolarSystem()[4])
    }
}
