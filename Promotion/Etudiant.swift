import Foundation

class Etudiant: Personne {
    var bourse: Bool
    var annee: Int

    //Constructeur
    init(nom: String, prenom: String, age: Int, bourse: Bool, annee: Int) {
        self.bourse = bourse
        self.annee = annee
        super.init(nom: nom, prenom: prenom, age: age) //Appel du constructeur de la MC
    }

    //Override de la methode affiche()
    override func affiche() {
        super.affiche() //Appel du affiche déjà présent
        if bourse {
            print("L'étudiant a une bourse")
        } else {
            print("L'étudiant n'a pas de bourse")
        }
        print("Année : \(self.annee)")
        print("") //Retour à la ligne
    }

}