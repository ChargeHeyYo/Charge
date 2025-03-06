//
//  NicknameView.swift
//  Charge
//
//  Created by 문재윤 on 3/5/25.
//

import SwiftUI

struct NicknameView: View {
    @AppStorage("nickname_key") var nickname: String = ""
    @AppStorage("nickname_true") var nicknameTrue: Bool = true
    @State var type_nickname: Bool = false
    
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
                    VStack{
                        NicknameTextField(nickname: $nickname)
                        HStack {
                            Text("닉네임을 입력해주세요.")
                                .font(.pretendard(.light, size: 15))
                                .foregroundStyle(type_nickname ? Color.secondary : Color.red)
                                .padding(.leading, 10)
                            Spacer()
                        }
                    }
                    
                }

                Spacer()
                
                ConfirmButton(nickname: $nickname)
                    .onTapGesture {
                        withAnimation {
                            if nickname.isEmpty {
                                nicknameTrue = false
                                type_nickname = false
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                        type_nickname = true
                                    }
                            } else {
                                nicknameTrue = true
                                
                            }
                        }
                    }
            }
            .padding(20)
            
        
        
        
    }
}


#Preview {
    NicknameView()
}
