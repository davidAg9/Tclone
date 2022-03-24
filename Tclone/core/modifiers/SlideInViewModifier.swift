//
//  SlideInViewModifier.swift
//  Tclone
//
//  Created by Dave Agyakwa on 24/03/2022.
//

import Foundation
import SwiftUI

// public protocol ViewModifier {
//
//    /// The type of view representing the body.
//    associatedtype Body : View
//
//    /// Gets the current body of the caller.
//    ///
//    /// `content` is a proxy for the view that will have the modifier
//    /// represented by `Self` applied to it.
//    @ViewBuilder func body(content: Self.Content) -> Self.Body
//
//    /// The content view type passed to `body()`.
//    typealias Content
// }
struct SlideInView<S: View>: ViewModifier {
    @Binding var isActive: Bool
    @ViewBuilder var contents: () -> S
    
    func body(content: Content) -> some View {
         ZStack(alignment: .topLeading) {
            content
                .navigationBarHidden(isActive)
            if isActive {
                ZStack {
                    Color(.black)
                        .opacity(isActive ? 0.25 : 0.0)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        isActive.toggle()
                    }
                }.ignoresSafeArea()
            }
    
            contents()
                .frame(width: 280)
                .background(isActive ? Color(.systemBackground) : Color.clear)
                .offset(x: isActive ? 0 : -280, y: 0)
        }
    }
}

extension View {
    func slidInView<S: View>(isActive: Binding<Bool>, @ViewBuilder contents: @escaping () -> S) -> some View {
        modifier(SlideInView(isActive: isActive, contents: contents))
    }
}
