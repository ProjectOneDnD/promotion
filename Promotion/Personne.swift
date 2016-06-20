import Foundation

class Personne {
    var nom: String
    var prenom: String
    var age: Int

    //Constructeur
    init(nom: String, prenom: String, age: Int) {
        self.nom = nom
        self.prenom = prenom
        self.age = age
    }

    //Affiche console
    func affiche() {
        print("Nom : " + self.nom)
        print("Prenom : " + self.prenom)
        print("Age : \(self.age)")
    }
}