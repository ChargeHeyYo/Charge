//
//  ConfirmButton.swift
//  Charge
//
//  Created by 문재윤 on 3/5/25.
//

import SwiftUI

struct ConfirmButton: View {
    @Binding var nickname: String
    
    
    var body: some View {
        HStack {
            Spacer()
            Text("다음")
                .font(.pretendard(.semibold, size: 18))
                .foregroundColor(nickname.isEmpty ? Color("text_buttondisabled_color") : Color("text_buttonabled_color"))
                .padding(.vertical, 16)
            Spacer()
        }
        .background(nickname.isEmpty ? Color("textfield_background1") : Color("main_green"))
        .cornerRadius(32)
        
    }
}

#Preview {
    NicknameView()
}
