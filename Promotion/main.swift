import Foundation

let promotion = Promotion()

let etudiant1 = Etudiant(nom: "Durand", prenom: "Jacques", age: 18, bourse: true, annee: 2015)
let etudiant2 = Etudiant(nom: "Dupont", prenom: "Jean", age: 19, bourse: false, annee: 2015)
let etudiant3 = Etudiant(nom: "Duval", prenom: "Robert", age: 18, bourse: true, annee: 2015)

promotion.ajouterEtudiant(etudiant1)
promotion.ajouterEtudiant(etudiant2)
promotion.ajouterEtudiant(etudiant3)

if promotion.rechercherEtudiant("Dupont", prenom: "Jean") {
    print("Dupont Jean est bien présent dans cette promotion !")
}

promotion.affichePromotion()