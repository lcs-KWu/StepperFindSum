//
//  ContentView.swift
//  StepperFindSum
//
//  Created by Yixuan Wu on 2025-01-13.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var firstNumber : Int = 1
    @State var secondNumber : Int = 1
    // MARK: Computed properties
    var Sum : Int {
        return firstNumber + secondNumber
    }
    var body: some View {
        VStack {
            
            
            HStack{
                Spacer()
                Text("\(firstNumber)")
                    .font(.system(size: 96))
            }
            HStack{
                Stepper(value: $firstNumber, label: {
                    Text("select First Number")})
                Spacer()
                
            }
            
            HStack{
                Text("+")
                        .font(.system(size: 96))
                Spacer()
                Text("\(secondNumber)")
                    .font(.system(size: 96))
                
            }
            
            HStack{
                Stepper(value: $secondNumber, label: {
                    Text("select Second Number")
                })}
            HStack{
                Spacer()
                Text("\(Sum)")
                    .font(.system(size: 96))
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            
            
            .padding()
        }
    }
}
#Preview {
    ContentView()
}

