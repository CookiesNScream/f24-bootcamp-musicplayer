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
    var lightMode: Bool = true;
    //var textColor;
    @State var likeCount: Int = 0;
    @State var likeClicked: Bool = false;
    @State var bookmarkClicked: Bool = false;
    var body: some View {
//        if lightMode {
//            textColor = Color(.white);
//        } else {
//            textColor = Color(.black);
//        }
        let startColor = Color(red: 28.0/255, green: 39.0/255, blue: 46.0/255);
        let endColor = Color(red: 22.0/255, green: 26.0/255, blue: 29.0/255);
        ZStack {
            LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
                        
            VStack {
                HStack (alignment: .top){
                    Image(systemName: "chevron.down")
                        .imageScale(.large)
                        .padding(.horizontal, 20)
                        .foregroundColor(.white)
                    Spacer()
                    Text("go off again")
                        .font(.caption)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .imageScale(.large)
                        .padding(.horizontal, 20)
                        .foregroundColor(.white)
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
                            Text("go off again")
                                .font(.title3)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                            Text("sagun")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                        Spacer()
                        Button { // Bookmark
                            bookmarkClicked = !bookmarkClicked;
                        } label: {
                            if(bookmarkClicked){
                                Image(systemName: "bookmark.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                            } else {
                                Image(systemName: "bookmark")
                                    .font(.title)
                                    .foregroundColor(.white)
                            }
                                
                        }
                        Button { // Heart
                            likeCount+=1;
                            likeClicked = !likeClicked;
                            if(likeClicked){
                                likeCount += 1;
                            } else {
                                likeCount -= 1;
                            }
                        } label: {
                            if(likeClicked){
                                Image(systemName: "heart.fill")
                                    .font(.title)
                                    .padding(.horizontal, 20)
                                    .foregroundColor(.white)
                            } else {
                                Image(systemName: "heart")
                                    .font(.title)
                                    .padding(.horizontal, 20)
                                    .foregroundColor(.white)
                            }
                                
                        }
                        
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
                            .foregroundColor(.white)
                        HStack {
                            Image(systemName: "backward.end.fill")
                                .font(.title2)
                                .padding(.horizontal, 16)
                                .foregroundColor(.white)
                        }
                        Image(systemName: "pause.circle.fill")
                            .font(.system(size: 50))
                            .padding(.horizontal, 16)
                            .foregroundColor(.white)
                        Image(systemName: "forward.end.fill")
                            .font(.title2)
                            .padding(.horizontal, 16)
                            .foregroundColor(.white)
                        Image(systemName: "arrow.trianglehead.rectanglepath")
                            .renderingMode(.original)
                            .font(.title2)
                            .rotationEffect(.degrees(180))
                            .padding(.horizontal, 20)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    HStack {
                        VStack {
                            Image(systemName: "hifispeaker.2")
                                .padding(.horizontal, 20)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "square.and.arrow.up")
                                .padding(.horizontal, 20)
                                .foregroundColor(.white)
                            Image(systemName: "distribute.horizontal")
                                .renderingMode(.original)
                                .padding(.horizontal, 20)
                                .foregroundColor(.white)
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
