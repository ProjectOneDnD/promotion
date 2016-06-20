import Foundation

class Promotion {
    var listeEtudiants: [Etudiant]

    init() {
        self.listeEtudiants = []
    }

    func ajouterEtudiant(etudiant: Etudiant) {
        self.listeEtudiants += [etudiant]
    }

    func rechercheEtudiant(nom: String, prenom: String) -> Bool {
        var result: Bool = false
        for etudiant in self.listeEtudiants {
            result = (etudiant.nom == nom && etudiant.prenom == prenom) ? true : false
        }
        return result
    }

    func affichePromotion() {
        for etudiant in self.listeEtudiants {
            print("Nom : " + etudiant.nom)
            print("Prenom : " + etudiant.prenom)
            print("Age : + \(etudiant.age)")
            if etudiant.bourse {
                print("L'étudiant a une bourse")
            } else {
                print("L'étudiant n'a pas de bourse")
            }
            print("Année : + \(etudiant.anneeEtude)")
            print("")
        }
    }
}