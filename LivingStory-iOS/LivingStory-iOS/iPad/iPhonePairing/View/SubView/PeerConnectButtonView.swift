//
//  ConnectButtonView.swift
//  LivingStory-iOS
//
//  Created by 문창재 on 7/21/25.
//

import SwiftUI

struct PeerConnectButtonView: View {
    let isConnected: Bool
    let action: () -> Void
    
    private var buttonText: String {
        isConnected ? "연결끊기" : "연결하기"
    }
    
    private var buttonColor: Color {
        isConnected ? .gray : Color(red: 0.17, green: 0.4, blue: 0.96)
    }
    
    var body: some View {
        Button{
            action()
        }label: {
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 65, height: 30)
                    .background(buttonColor)
                    .cornerRadius(5)
                Text(buttonText)
                    .font(.system(size: 11))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }.padding(10)
        }
    }
}
