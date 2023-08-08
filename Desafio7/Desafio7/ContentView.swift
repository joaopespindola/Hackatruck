//
//  ContentView.swift
//  Desafio7
//
//  Created by Student15 on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    var songs = [
        Song(id: 1, name: "IGOR'S THEME", artist: "Tyler, The Creator", capa:"https://i.discogs.com/kNELo5tNWsK9mjX9WfYGpaUhaAyr32CYNKBdly5RMcA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjM5/NjMyLTE2NDc4MjA4/MjUtNDM2MC5qcGVn.jpeg"),
        Song(id: 2, name: "EARFQUAKE",
             artist: "Tyler, The Creator",
             capa:"https://i.discogs.com/kNELo5tNWsK9mjX9WfYGpaUhaAyr32CYNKBdly5RMcA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjM5/NjMyLTE2NDc4MjA4/MjUtNDM2MC5qcGVn.jpeg"),
        Song(id: 3, name: "I THINK",
             artist: "Tyler, The Creator",
             capa:"https://i.discogs.com/kNELo5tNWsK9mjX9WfYGpaUhaAyr32CYNKBdly5RMcA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjM5/NjMyLTE2NDc4MjA4/MjUtNDM2MC5qcGVn.jpeg"),
        Song(id: 5, name: "RUNNING OUT OF TIME",
             artist: "Tyler, The Creator",
             capa:"https://i.discogs.com/kNELo5tNWsK9mjX9WfYGpaUhaAyr32CYNKBdly5RMcA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjM5/NjMyLTE2NDc4MjA4/MjUtNDM2MC5qcGVn.jpeg"),
        Song(id: 6, name: "NEW MAGIC WAND",
             artist: "Tyler, The Creator",
             capa:"https://i.discogs.com/kNELo5tNWsK9mjX9WfYGpaUhaAyr32CYNKBdly5RMcA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjM5/NjMyLTE2NDc4MjA4/MjUtNDM2MC5qcGVn.jpeg"),
        Song(id: 7, name: "A BOY IS A GUN",
             artist: "Tyler, The Creator",
             capa:"https://i.discogs.com/kNELo5tNWsK9mjX9WfYGpaUhaAyr32CYNKBdly5RMcA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjM5/NjMyLTE2NDc4MjA4/MjUtNDM2MC5qcGVn.jpeg")
    ]
    var suggestions = [
        Suggestions(id: 1, albumCover: "https://i.discogs.com/Dwev4NUffvgRrNQqJNpenVGshyo-5JFR_MXDHgLIV3E/rs:fit/g:sm/q:90/h:600/w:594/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU2MDQw/MDktMTM5Nzc2MDIz/My0yMjI4LmpwZWc.jpeg", albumName: "Sobrevivendo No Inferno"),
        Suggestions(id: 2, albumCover: "https://i.discogs.com/pdXL89GlVflm6fnnqxtl5fZVRPFV5A7zDvjBjC1I1zo/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI3NzA3/NzAwLTE2ODk2ODUz/MjItNDk0Mi5qcGVn.jpeg", albumName: "Todo Mundo Ama o Sol"),
        Suggestions(id: 3, albumCover: "https://i.discogs.com/udt90ojzBOy90t6x_oBTWolGjBi0aGVXuTeA_g0hniY/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTE3Nzg5/NzctMTY2MTg0ODU3/Mi00NjE0LmpwZWc.jpeg", albumName: "Damn"),
        Suggestions(id: 4, albumCover: "https://i.discogs.com/hywp7Zxb-tOP9ievyyBpeV_5NHIGRhwgnKRzU7HCyyg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI3ODA4/MzE3LTE2OTA1NjM4/NTUtMTI2OC5qcGVn.jpeg", albumName: "UTOPIA")
    ]
    @State var field = ""
    
    
    var body: some View {
        
        
        
        NavigationStack{
            ZStack{
                LinearGradient(colors: [Color("Pinklight"), .black],
                               startPoint: .top,
                               endPoint: .center)
                .ignoresSafeArea()
                VStack{
                    ScrollView{
                        
                        AsyncImage(url: URL(string:"https://i.discogs.com/kNELo5tNWsK9mjX9WfYGpaUhaAyr32CYNKBdly5RMcA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNjM5/NjMyLTE2NDc4MjA4/MjUtNDM2MC5qcGVn.jpeg")!) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            Image(systemName: "photo.fill")
                        }.frame(width: 200, height: 250)
                            .padding(.bottom, 10)
                            .frame(width: 70, alignment: .center)
                        
                        Text("IGOR")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.trailing)
                        HStack{
                            Image("spotify")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("João")
                                .foregroundColor(.white)
                        }
                        //ScrollView{
                        VStack(alignment: .leading){
                            ForEach(searchResults){
                                song in
                                NavigationLink(destination: SongView(currentSong: song)){
                                    HStack{
                                        AsyncImage(url: URL(string:song.capa)!) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                        } placeholder: {
                                            Image(systemName: "photo.fill")
                                        }.frame(width: 50, height: 50)
                                            .multilineTextAlignment(.leading)
                                        VStack{
                                            Text(song.name)
                                                .font(.body)
                                            Text(song.artist)
                                                .font(.body)
                                                .fontWeight(.ultraLight)
                                            
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                    }
                                }
                                .foregroundColor(.white)
                            }
                        }
                        .padding()
                        Text("Sugeridos")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, -180)
                        ScrollView(.horizontal){
                            VStack{
                                HStack{
                                    ForEach(suggestions){
                                        sugerido in
                                        HStack{
                                            VStack{
                                                AsyncImage(url: URL(string:sugerido.albumCover)!) { image in
                                                    image
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                } placeholder: {
                                                    Image(systemName: "photo.fill")
                                                }.frame(width: 100, height: 100)
                                                    .multilineTextAlignment(.leading)
                                                Text(sugerido.albumName)
                                                    .font(.system(size: 10))
                                            }
                                        }
                                        .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
        }
        .searchable(text: $field)
        
        
    }
    
    var searchResults: [Song] {
        if field.isEmpty {
            return songs
        } else {
            return songs.filter { $0.name.localizedCaseInsensitiveContains(field) }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
