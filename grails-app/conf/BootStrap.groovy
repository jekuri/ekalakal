import com.jekuri.trade.User
import com.jekuri.trade.Role
import com.jekuri.trade.UserRole
import com.jekuri.trade.Person

class BootStrap {

    def init = { servletContext ->
		def employee = new Person(firstName: 'Juan', lastName: 'Dela Cruz', emailAddress: 'juan@irondata.com').save(flush: true)
	
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

		def testUser = new User(username: 'me', enabled: true, password: 'password', person: employee)
		testUser.save(flush: true)

		UserRole.create testUser, adminRole, true

		assert User.count() == 1
		assert Role.count() == 2
		assert UserRole.count() == 1
    }
    def destroy = {
    }
}
