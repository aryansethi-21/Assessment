//
//  MovieRow.swift
//  PhonePe Assessment
//
//  Created by Aryan Sethi on 15/10/22.
//

import SwiftUI
import URLImage

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            URLImage(URL(string:  "\(BASE_IMAGE_URL)\(movie.poster_path)")!, delay: 0.25) { proxy in
                proxy.image.resizable()
                    .frame(width: 90, height: 120)
                    .cornerRadius(10)
                
            }
            
            VStack {
                Spacer()
                HStack {
                    Text(movie.title)
                        .foregroundColor(.blue)
                        .lineLimit(nil)
                    Spacer()
                }
                Spacer()
                HStack {
                    Text(movie.overview).foregroundColor(.gray)
                    Spacer()
                }
            }.frame(height: 130)
        }
    }
}


