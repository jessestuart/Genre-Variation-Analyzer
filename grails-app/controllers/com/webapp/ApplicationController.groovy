package com.webapp

class ApplicationController {

    def dataLoaderService
    def initialized = false

    def index = {
        dataLoaderService.loadData()
        [
                graph1:dataLoaderService.graph1,
                graph2:dataLoaderService.graph2,
                genres:dataLoaderService.genreList,
                rows:dataLoaderService.googleRow
        ]
//        if (!initialized)
//        {
//            dataLoaderService.loadData()
//            initialized = true
//        } else { println "Already initialized"}
//
//        [
//                graph1:dataLoaderService.graph1,
//                graph2:dataLoaderService.graph2,
//                genres:dataLoaderService.genreList
//        ]
    }
}
