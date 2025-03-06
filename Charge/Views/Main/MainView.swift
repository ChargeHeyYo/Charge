//
//  MainView.swift
//  Charge
//
//  Created by 문재윤 on 3/5/25.
//

import SwiftUI

struct MainView: View {
    @AppStorage("nickname_key") var nickname: String = ""
    @AppStorage("nickname_true") var nicknameTrue: Bool = false

    var body: some View {
        if nicknameTrue {
            Text("내 닉넴 \(nickname)")
        } else {
            NicknameView()
        }
    }
}
