//
//  NicknameTextField.swift
//  Charge
//
//  Created by 문재윤 on 3/5/25.
//

import SwiftUI

public struct NicknameTextField: View {
    @FocusState var NicknameFocusState: Bool
    @Binding var nickname: String
    
    
    public var body: some View {
        TextField("닉네임", text: $nickname)
            .font(.pretendard(.semibold, size: 16))
            .padding(.horizontal ,20)
            .padding(.vertical, 16)
            .background(NicknameFocusState || !nickname.isEmpty ? Color("textfield_background2") : Color("textfield_background1"))
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(NicknameFocusState || !nickname.isEmpty  ? Color("main_green"): Color("textfield_background1"), lineWidth: 2)
                )
            .foregroundStyle(NicknameFocusState || !nickname.isEmpty  ? Color("text_title_color") : Color("textfield_text1"))
            .cornerRadius(30)
            .focused($NicknameFocusState)
            
    }
}
