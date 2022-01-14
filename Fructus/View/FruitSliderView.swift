//
//  FruitSliderView.swift
//  Fructus


import SwiftUI

struct FruitSliderView: View {
    
    var fruit:Fruit
    @State var isAnimating:Bool = false

    var body: some View {
        ZStack{
            VStack(spacing:20){
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text(fruit.title)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:480)
                    .padding(.horizontal,16)
                StartButtonView()
            }
            
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .edgesIgnoringSafeArea(.all)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight:0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
        
        
    }
}

struct FruitSliderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitSliderView(fruit: fruitsData[0])
           
    }
}
