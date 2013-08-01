package com.jekuri.trade

class Person {

	String firstName
	String lastName	
	String middleName
	String gender
	Date birthDate
	String emailAddress
	
    static constraints = {
		firstName(nullable: false, blank: false)
		lastName(nullable: false, blank: false)
		middleName(nullable: true, blank: true)
		gender(nullable: true, blank: true)
		birthDate(nullable: true, blank: true)
		emailAddress(email: true, nullable: false, blank: false)
    }
}
