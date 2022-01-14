//
//  FruitModel.swift
//  Fructus



import SwiftUI


struct Fruit: Identifiable{
    
    //Unique identity
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
    
}
