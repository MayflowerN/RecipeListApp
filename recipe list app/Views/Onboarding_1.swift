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
        GeometryReader { geometry in
            ZStack {
                Color(red: 1, green: 0.4, blue: 0).edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Spacer().frame(height: geometry.size.height * 0.3)
                    
                    Image("foodbank")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.25)
                    
                    Text("YumFinder: Recipe Expedition")
                        .font(.custom("Poppins-Black", size: min(geometry.size.width * 0.1, 40)))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .scaledToFit()
                        .minimumScaleFactor(0.5) // Adjust the scale factor accordingly
                        .lineLimit(3) // Optional, you can adjust or remove
                        .padding(.horizontal, 30)
                    
                    Spacer().frame(height: geometry.size.height * 0.3)
                    
                    Image("Circularloading")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.1)
                    
                    Spacer().frame(height: geometry.size.height * 0.1)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                }
            }
            .fullScreenCover(isPresented: $isActive) {
                Onboarding_2()
            }
        }
    }
}

struct Onboarding_1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_1()
    }
}
