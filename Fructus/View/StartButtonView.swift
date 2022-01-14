//
//  StartButtonView.swift
//  Fructus


import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }){
            HStack{
                    Text("Start")
                    Image(systemName:"arrow.right.circle")
                    
                }
                .padding(.horizontal,16)
                .padding(.vertical,10)
                .background(
                    Capsule()
                        .strokeBorder(Color.white,lineWidth: 1.25)
            )
        }
        .accentColor(.white)
            
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
