//
//  ContentView.swift
//  Desafio8
//
//  Created by Student15 on 03/08/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    //mkannotation
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var locations = [
    Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -9.6343267, longitude: -64.1911736), flag: "bandeiraDoBrasil", description: "Futebol, Praia e Carnaval"),
    Location(name: "Mexico", coordinate: CLLocationCoordinate2D(latitude: 23.2122415, longitude: -113.2656963), flag: "bandeiraDoMexico", description: "Taco e Pimenta"),
    Location(name: "Estados Unidos Da America", coordinate: CLLocationCoordinate2D(latitude: 35.9997114, longitude: -108.2587891), flag: "bandeiraDosEua", description: "Fast Food"),
    Location(name: "Japao", coordinate: CLLocationCoordinate2D(latitude: 36.2312067, longitude: 134.4736234), flag: "bandeiraDoJapao", description: "JDM")

    ]
    @State var locationNow = Location(name: "Japao", coordinate: CLLocationCoordinate2D(latitude: 36.2312067, longitude: 134.4736234), flag: "bandeiraDoJapao", description: "JDM")
    @State var localName = ""
    
    @State private var mostrarSheet = false
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Text("WorldMap")
                    .foregroundColor(.white)
                    .font(.title)
                Text(localName)
                    .foregroundColor(.white)
                Map(coordinateRegion: $region, annotationItems: locations){ locaA in //iterando no Array para ter uma instancia de cada Location
                    MapAnnotation(coordinate: locaA.coordinate){
                        Circle()
                            .onTapGesture() {
                                mostrarSheet = true
                                locationNow = locaA
                            }.sheet(isPresented: $mostrarSheet){
                                VStack{
                                    Image(locationNow.flag)
                                        .resizable()
                                        .frame(width: 100, height: 60)
                                    Text(locationNow.name)
                                        .font(.headline)
                                        .foregroundColor(       .black)
                                    
                                    Text(locationNow.description)
                                    .foregroundColor(.black)
                                }
                            }
                    }
                        
                }
                    .ignoresSafeArea()
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(locations){ location in
                            Button(location.name) {
                                localName = location.name
                                region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30))
                            }
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .buttonStyle(.borderedProminent)
                        }
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
