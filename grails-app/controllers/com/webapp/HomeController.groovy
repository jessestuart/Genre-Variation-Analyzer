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
		}
	}
}
