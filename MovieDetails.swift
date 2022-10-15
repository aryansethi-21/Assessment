//
//  MovieDetails.swift
//  PhonePe Assessment
//
//  Created by Aryan Sethi on 15/10/22.
//

import SwiftUI
import URLImage

let BASE_IMAGE_URL = "https://image.tmdb.org/t/p/w500"

struct MovieDetails: View {
    var movie: Movie
    var body: some View {
        ScrollView {
        VStack {
            HStack {
                VStack {
                    URLImage(URL(string:  "\(BASE_IMAGE_URL)\(movie.poster_path)")!, delay: 0.25) {proxy in
                        proxy.image.resizable()
                            .frame(width: 150, height: 220)
                            .cornerRadius(10)
                            
                    }
                }.padding()
                
                VStack {
                    HStack {
                        Text("Release Date:").foregroundColor(.gray).font(.caption)
                        Spacer()
                        Text(movie.release_date).fontWeight(.light).font(.caption)
                        Spacer()
                    }
                    HStack {
                        Text("Rating:").foregroundColor(.gray).font(.caption)
                        Spacer()
                        Text(String(movie.vote_average)).fontWeight(.light).font(.caption)
                        Spacer()
                    }
                    HStack {
                        Text("Popularity:").foregroundColor(.gray).font(.caption)
                        Spacer()
                        Text(String(movie.popularity)).fontWeight(.light).font(.caption)
                        Spacer()
                    }
                }
            }
            HStack {
                Text("Overview").foregroundColor(.gray)
                Spacer()
            }
            Text(movie.overview).lineLimit(nil)
            Spacer()
        }.navigationBarTitle(Text(movie.title), displayMode: .inline)
            .padding()
        }
    }
}
