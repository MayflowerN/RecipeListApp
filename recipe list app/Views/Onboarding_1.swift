//
//  Onboarding_1.swift
//  recipe list app
//
//  Created by Ellie on 7/6/23.
//

import SwiftUI

struct Onboarding_1: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image("foodbank")
                    .frame(width: 107, height: 107)
                
                Text("Ellie’s Kitchen")
                    .font(
                        Font.custom("Poppins-Black", size: 36)
                            .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 308, height: 53, alignment: .center)
                
                Image("Circularloading")
                    .frame(width: 48, height: 48)
                
            }
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                }
            }
            .fullScreenCover(isPresented: $isActive) {
                Onboarding_2()
            }
        }
        .frame(width: 400, height: 912)
        .background(Color(red: 1, green: 0.4, blue: 0))
        .cornerRadius(32)
    }
}

struct Onboarding_1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_1()
    }
}

