package com.genre_variation

import com.webapp.Coordinate
import grails.transaction.Transactional

@Transactional
class DataLoaderService {

    List<Coordinate> graph1 = []
    List<Coordinate> graph2 = []

    def loadData()
    {
        println 'Loading data'
        int lineNumber = 0

        List genreList = []
        File genres = new File('src/resources/genre.txt')
        genres.text.eachLine { line ->
            genreList << line
        }
        println genreList

        File values = new File('src/resources/cscores.txt')
//        println "Values : ${values.text}"
        values.text.eachLine { String line ->

            List vals = line.split(' ')
            
            graph1 << new Coordinate(Double.parseDouble(vals[0]), Double.parseDouble(vals[1]), genreList[lineNumber])
            graph2 << new Coordinate(Double.parseDouble(vals[2]), Double.parseDouble(vals[3]), genreList[lineNumber])
            lineNumber++
        }

        println graph1
    }

    def serviceMethod() {

    }
}
