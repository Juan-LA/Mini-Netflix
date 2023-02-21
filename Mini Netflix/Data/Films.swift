//
//  Films.swift
//  Mini Netflix
//
//  Created by Juan Liut on 11/02/23.
//

import Foundation

var films : [String : Film] = [
    "Endgame": Film(nome: "Endgame", anno: 2019, durata: 181, categorie: ["Azione", "Fantascienza", "Avventura"] , produttore: "Marvel Studios"),
    "Captain marvel": Film(nome: "Captain Marvel", anno: 2019, durata: 124, categorie: ["Azione", "Fantascienza", "Avventura"], produttore: "Marvel Studios"),
    "Infinity war": Film(nome: "Avengers: Infinity War", anno: 2018, durata: 149, categorie: ["Azione", "Fantascienza", "Avventura"], produttore: "Marvel Studios"),
    "Cattivissimo2": Film(nome: "Cattivissimo Me 2", anno: 2013, durata: 98, categorie: ["Animazione", "Comico", "Azione", "Commedia"], produttore: "Illumination Entertainment"),
    "Garfield": Film(nome: "Garfield - Il Film", anno: 2004, durata: 80, categorie: ["Commedia"], produttore: "David Entertainment"),
    "Winnie": Film(nome: "Winnie The Pooh - Nuove avventure nel Bosco dei 100 Acri", anno: 2011, durata: 61, categorie: ["Animazione", "Commedia"], produttore: "Walt Disney Animation Studios")
    
]
