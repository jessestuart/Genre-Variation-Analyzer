package com.webapp

import grails.transaction.Transactional

@Transactional(readOnly = true)
class HomeController {

    def dataLoaderService

	def index() {
		if (isLoggedIn()) {
			redirect controller:"project"
		} else {
            dataLoaderService.loadData()

            render view:"index"

            [
                graph1:dataLoaderService.graph1,
                graph2:dataLoaderService.graph2,
                genres:dataLoaderService.genreList,
                date:new Date()
            ]
        }
	}



    def submitData()
    {
//        println "Submit data"
//        println params.formData
//
//        render view:"index"
    }
}
