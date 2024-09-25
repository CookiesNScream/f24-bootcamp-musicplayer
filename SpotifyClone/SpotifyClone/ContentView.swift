//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Arya Venkatesan on 9/19/24.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue: Double = .zero
    //var totalSongTime: Double = 97
    //var songTimeMinutes: Int
    //var songTimeSecond: Int
    var body: some View {
        let startColor = Color(red: 28.0/255, green: 39.0/255, blue: 46.0/255);
        let endColor = Color(red: 22.0/255, green: 26.0/255, blue: 29.0/255);
        ZStack {
            LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
                        
            VStack {
                HStack (alignment: .top){
                    Image(systemName: "chevron.down")
                        .imageScale(.large)
                        .padding(.horizontal, 20)
                    Spacer()
                    Text("Go off again")
                        .font(.caption)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .imageScale(.large)
                        .padding(.horizontal, 20)
                }
                
                VStack {
                    Spacer()
                    
                    HStack (alignment: .top){
                        //put the picture here
                        Image("SagunHeight")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 20)
                    }
                    Spacer()
                    HStack {
                        VStack (alignment: .leading){
                            Text("Go off again")
                                .font(.title3)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("sagun")
                                .font(.caption)
                        }
                        .padding(.horizontal, 20)
                        Spacer()
                        Image(systemName: "heart")
                            .padding(.horizontal, 20)
                        
                    }
                    .padding(.vertical, 20)
                    
                    VStack {
                        //slider
                        HStack {
                            Slider(
                                value: $sliderValue,
                                in: 0 ... 97,
                                step: 1
                            )
                            .padding(.horizontal, 20)
                            
                        }
                        //timestamps
                        HStack {
                            //songTimeMinutes = Int(totalSongTime / 60)
                            //songTimeSecond = Int(totalSongTime % 60)
                            //Text("\(songTimeMinutes):\(songTimeSecond)")
                            //    .padding(.horizontal, 20)
                            //Spacer()
                            //Text("\(songTimeMinutes):\(songTimeSecond)")
                            //    .padding(.horizontal, 20)
                            
                        }
                    }
                    
                    HStack {
                        
                        Image(systemName: "shuffle")
                            .font(.title2)
                            .padding(.horizontal, 16)
                        HStack {
                            Image(systemName: "backward.end.fill")
                                .font(.title2)
                                .padding(.horizontal, 16)
                        }
                        Image(systemName: "pause.circle.fill")
                            .font(.largeTitle)
                            .padding(.horizontal, 16)
                        Image(systemName: "forward.end.fill")
                            .font(.title2)
                            .padding(.horizontal, 16)
                        Image(systemName: "arrow.trianglehead.rectanglepath")
                            .renderingMode(.original)
                            .font(.title2)
                            .rotationEffect(.degrees(180))
                            .padding(.horizontal, 20)
                    }
                    Spacer()
                    HStack {
                        VStack {
                            Image(systemName: "hifispeaker.2")
                                .padding(.horizontal, 20)
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "square.and.arrow.up")
                                .padding(.horizontal, 20)
                            Image(systemName: "distribute.horizontal")
                                .renderingMode(.original)
                                .padding(.horizontal, 20)
                        }
                    }
                    .padding(.vertical, 16)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
