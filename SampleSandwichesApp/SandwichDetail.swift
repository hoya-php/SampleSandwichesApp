//
//  SandwichDetail.swift
//  SampleSandwichesApp
//
//  Created by 伊藤和也 on 2020/06/30.
//

import SwiftUI

struct SandwichDetail: View {
    let sandwich: Sandwich
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            Image(sandwich.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .onTapGesture {
                withAnimation {
                    zoomed.toggle()
                }
            }
            Spacer(minLength: 0)
            
            if sandwich.isSpaicy && !zoomed {
                HStack {
                    Spacer()
                    HStack {
                        Label("", systemImage: "flame.fill")
                            .padding(.trailing, -8.0)
                        Text("Spicy")
                    }
                    
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(.headline)
                .background(Color.red)
                .foregroundColor(Color.yellow)
                .transition(.move(edge: .bottom))
            }
            
        }
        
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}
 
struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SandwichDetail(sandwich: testData[1])
            }
        }
    }
}
