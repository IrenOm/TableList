//
//  Song.swift
//  TableList
//
//  Created by irena.omelana on 24/04/2023.
//

import Foundation

struct Song {
    
    let track: String
    let album: String
    let cover: String
    
    static func creatSong() -> [Song] {
        
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        
        for i in 0..<tracks.count {
        let song = Song(track: tracks[i], album: albums[i], cover: covers[i])
            songs.append(song)
        }
        
        return songs
    }
}


struct Movie {
    
    let movie: String
    let realesed: String
    let director: String
    
    static func creatMovie() -> [Movie] {
        
        var moviesArray: [Movie] = []
        
        let movies = DataManager.shared.movie
        let realeseds = DataManager.shared.realesed
        let directors = DataManager.shared.director
        
       for i in 0..<movies.count {
           let movie = Movie(movie: movies[i], realesed: realeseds[i], director: directors[i])
           moviesArray.append(movie)
           
//        let song = Song(track: tracks[i], album: albums[i], cover: covers[i])
//            songs.append(song)
        }
        
        return moviesArray
    }
}
