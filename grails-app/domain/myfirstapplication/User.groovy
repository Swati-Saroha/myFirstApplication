package myfirstapplication

class User {

    String firstName
    String lastName
    String email
    Date dateCreated
    Date lastUpdated

    static mapping = {
        table name: "app_user"
    }

    static constraints = {
        firstName nullable: true, blank: true
        lastName nullable: true, blank: true
        email unique: true
    }
}
