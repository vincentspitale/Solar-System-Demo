//
//  Preview.swift
//  Solar System
//
//  Created by Vincent Spitale on 10/20/20.
//

import SwiftUI

struct Preview: View {
    var celestialBody: CelestialBody
    
    var body: some View {
        HStack{
            VStack{
            ModelView(filePath: Bundle.main.url(forResource: celestialBody.name, withExtension: "usdz"), isRotating: true)
                .aspectRatio(contentMode: .fit)
                .disabled(true)
            }
                .frame(minWidth:50, maxWidth: 50, minHeight: 50, maxHeight: 50)
            Text(celestialBody.name)
            Spacer()
        }
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview(celestialBody: CelestialBody.loadSolarSystem()[1]).previewLayout(.sizeThatFits)
    }
}
