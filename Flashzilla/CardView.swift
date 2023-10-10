//
//  CardView.swift
//  Flashzilla
//
//  Created by Lahiru Amarasooriya on 2023-10-09.
//

import SwiftUI

struct CardView: View {
    let card: Card
    
    @State private var isShowingAnswer = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            VStack {
                Text(card.prompt)
                    .font(.largeTitle)
                    .foregroundColor(.black)

                if isShowingAnswer {
                    Text(card.answer)
                        .font(.title)
                        .foregroundColor(.gray)
                }
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 450, height: 250)
        .onTapGesture {
            isShowingAnswer.toggle()
        }
    }
}

#Preview {
    CardView(card: Card.example)
}
