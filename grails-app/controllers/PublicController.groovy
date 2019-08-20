import co.RegistrationCO
import myfirstapplication.User

class PublicController {

    def index() {

    }

    def login() {


    }

    def register() {


    }

    def registration(RegistrationCO registrationCO) {
        println("== params : "+params.firstName)
        User user = new User(firstName: registrationCO.firstName, lastName: registrationCO.lastName, email: registrationCO.email)
        user.save(flush: true, failOnError: true)


        if (!registrationCO.validate()) {
            render(view: 'register', model: [registrationCO: registrationCO])
        } else {
            render(view: 'register', model: [success: true])
        }
    }
}
