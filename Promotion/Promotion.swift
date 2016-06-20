import Foundation

class Promotion {
    var listeEtudiants: [Etudiant] //tableau d'étudiants

    //Constructeur
    init() {
        self.listeEtudiants = []
    }

    //On ajoute un étudiant dans la liste
    func ajouterEtudiant(etudiant: Etudiant) {
        self.listeEtudiants += [etudiant]
    }

    //On recherche un étudiant dans la liste d'étudiant par son nom et son prénom
    func rechercherEtudiant(nom: String, prenom: String) -> Bool {
        var result: Bool = false
        for etudiant in self.listeEtudiants {
            result = (etudiant.nom == nom && etudiant.prenom == prenom) ? true : false

            //Si l'étudiant a été trouvé, pas besoin de continuer, on return le result
            if (result == true) {
                return result
            }
        }
        return result
    }

    //On affiche les étudiants de la liste, les étudiants avait déjà une methode d'affichage
    func affichePromotion() {
        for etudiant in self.listeEtudiants {
            etudiant.affiche()
        }
    }
}