//
//  FrameView.swift
//  LivingStory-iOS
//
//  Created by 문창재 on 7/19/25.
//

import SwiftUI

struct HomeInfoFrameView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("Frame")
                Text("어느 방에 들어갈까요?")
                    .font(LSFont.iPhoneConnectFont)
            }.padding(.top, 172)
            Spacer()
        }
        
    }
}

#Preview {
    HomeInfoFrameView()
}
