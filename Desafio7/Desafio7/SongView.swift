//
//  SongView.swift
//  Desafio7
//
//  Created by Student15 on 01/08/23.
//

import SwiftUI

struct SongView: View {
    var currentSong: Song
    var body: some View {
        ZStack{
            LinearGradient(colors: [.pink, .black],
                           startPoint: .top,
                           endPoint: .center)
            .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string:currentSong.capa)!) { image in
                    image
                        .resizable()
                        .aspectRatio(1.0, contentMode: .fit)
                        //.aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300, alignment: .center)
                        .clipped()
                } placeholder: {
                    Image(systemName: "photo.fill")
                }
                    //.multilineTextAlignment(.leading)
                    //.padding(.bottom, 80.0).frame(width: 70, alignment: .center)
                VStack{
                    Text(currentSong.name)
                        .foregroundColor(.white)
                    Text(currentSong.artist)
                        .foregroundColor(.white)
                }
                .padding()
                Spacer()
                HStack{
                    Image(systemName: "shuffle")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                    Spacer()
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                    Spacer()
                    Image(systemName: "repeat")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                    Spacer()
                }
            }
        }
    }
}

//    struct SongView_Previews: PreviewProvider {
//        static var previews: some View {
//            SongView(currentSong: Song(id: 12, name: "Joao Pedro", artist: "JP DA GAITA ", capa: ""))
//        }
//    }

