//
//  NicknameView.swift
//  Charge
//
//  Created by 문재윤 on 3/5/25.
//

import SwiftUI

struct NicknameView: View {
    @AppStorage("nickname_key") var nickname: String = ""
    @AppStorage("nickname_true") var nicknameTrue: Bool = false
    
    var body: some View {
            VStack(spacing: 26) {
                Text("닉네임 등록")
                    .font(.pretendard(.light, size: 20))
                    .foregroundStyle(.secondary)
                
                VStack(spacing: 26) {
                    HStack {
                        Text("닉네임을 입력해주세요")
                            .font(.pretendard(.bold, size: 22))
                        Spacer()
                    }

                    NicknameTextField(nickname: $nickname)
                    
                }

                Spacer()
                
                ConfirmButton(nickname: $nickname)
                    .onTapGesture {
                        withAnimation {
                            nicknameTrue = true
                        }
                    }
            }
            .padding(20)
            
        
        
        
    }
}


#Preview {
    NicknameView()
}
