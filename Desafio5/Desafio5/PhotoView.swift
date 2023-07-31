//
//  PhotoView.swift
//  Desafio5
//
//  Created by Student15 on 31/07/23.
//

import SwiftUI

struct PhotoView: View {
    var body: some View {
        VStack{
            List(1...10, id: \.self){ i in
                Image(systemName: "hare")
                    .resizable()
                    .scaledToFit()
                Image(systemName: "hare.fill")
                    .resizable()
                    .scaledToFit()
                }
            .ignoresSafeArea()
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
