//
//  ButtonStyles.swift
//  Solar System
//
//  Created by Vincent Spitale on 10/20/20.
//

import Foundation
import SwiftUI


public struct RoundedButton: ButtonStyle {
    @State var textColor: Color = .secondary
    @State var cornerRadius: CGFloat = 0
    @State var highContrast: Bool = false
    
    public func makeBody(configuration: Self.Configuration) -> some View {
        ZStack{
        configuration.label
            .font(Font.system(.subheadline).bold())
            .padding(10)
            .foregroundColor(highContrast ? Color(.systemBackground) : textColor)
            
            
            .background(configuration.isPressed ? Color(.systemGray4) : Color(.systemGray6))
            .contentShape(RoundedRectangle(cornerRadius: (cornerRadius != 0) ? cornerRadius: .greatestFiniteMagnitude))
            .clipShape(RoundedRectangle(cornerRadius: (cornerRadius != 0) ? cornerRadius: .greatestFiniteMagnitude))
            .compositingGroup()
        }
    }
}
