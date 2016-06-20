import Foundation

class Etudiant: Personne {
    var bourse: Bool
    var anneeEtude: Int

    init(nom: String, prenom: String, age: Int, bourse: Bool, anneeEtude: Int) {
        self.bourse = bourse
        self.anneeEtude = anneeEtude
        super.init(nom: nom, prenom: prenom, age: age)
    }

    override func affiche() {
        super.affiche()
        if bourse {
            print("L'étudiant a une bourse")
        } else {
            print("L'étudiant n'a pas de bourse")
        }
        print("Année : + \(self.anneeEtude)")
    }

}