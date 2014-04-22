package com.genre_variation

import grails.transaction.Transactional

@Transactional
class DataLoaderService {
    def graph1 = []
    def graph2 = []
    List<String> genreList = []
    List<Integer> genreNums = []

    Map<Integer, Integer> genreClusterMap = [:]

    List googleRow = []

    def generateMap()
    {
        (1..20).each { int i ->
            genreClusterMap[i] = intToCluster(i)
        }
        println "Genre cluster map: $genreClusterMap"
    }

    def intToCluster(int genreId)
    {
        if ([4, 15, 16, 17].contains(genreId)) return 0
        else if ([1, 3, 6, 7, 9, 10].contains(genreId)) return 1
        else if ([2, 8, 18, 20].contains(genreId)) return 2
        else if ([19].contains(genreId)) return 3
        else if (11 == genreId) return 4
        else if (12 == genreId) return 5
        else return -1
    }

    def loadData()
    {
        int lineNumber = 0

        File genres = new File('src/resources/genre.txt')
        genres.text.eachLine { line -> genreList << line }

        File genreInts = new File('src/resources/genre_nums.txt')
        genreInts.text.split(' ').each { String num -> genreNums << Integer.parseInt(num) }
//        println genreNums


        File values = new File('src/resources/cscores.txt')
//        println "Values : ${values.text}"
        values.text.eachLine { String line ->

            List vals = line.split(' ')
            
//            graph1 << new Coordinate(Double.parseDouble(vals[0]), Double.parseDouble(vals[1]), genreList[lineNumber])
//            graph2 << new Coordinate(Double.parseDouble(vals[2]), Double.parseDouble(vals[3]), genreList[lineNumber])
            graph1 << [Double.parseDouble(vals[0]), Double.parseDouble(vals[1])]
            graph2 << [Double.parseDouble(vals[2]), Double.parseDouble(vals[3])]

            googleRow << [genreNums[lineNumber], [Double.parseDouble(vals[0]), Double.parseDouble(vals[1])]]

            lineNumber++
        }

//        println googleRow

        generateMap()
    }

    def serviceMethod() {

    }
}
