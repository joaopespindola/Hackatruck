//
//  areWeStillFriends?.swift
//  Desafio7
//
//  Created by Student15 on 01/08/23.
//

import SwiftUI

struct areWeStillFriends_: View {
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: "https://i.discogs.com/kNELo5tNWsK9mjX9WfYGpaUhaAyr32CYNKBdly5RMcA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjM5/NjMyLTE2NDc4MjA4/MjUtNDM2MC5qcGVn.jpeg")!) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo.fill")
            }.frame(width: 250, height: 250)
        }
    }
}

struct areWeStillFriends__Previews: PreviewProvider {
    static var previews: some View {
        areWeStillFriends_()
    }
}
