import UIKit


//
//var manoVardasOptionalPaprastas: String?
//
//
//var manoVardasImplicit: String!
//var manoVardas: String = "Romas Tikrai"

//atspausdinkVarda(vardas: manoVardasImplicit)
//atspausdinkVarda(vardas: manoVardas)
//atspausdinkVarda(vardas: manoVardasOptionalPaprastas) // <--- neveikia


//manoVardasOptionalPaprastas = "Romas"
//manoVardasImplicit = "Romas2"
//print(manoVardasOptionalPaprastas?.isEmpty)
//atspausdinkVarda(vardas: manoVardasOptionalPaprastas!)

//if let manoVardas = manoVardasOptionalPaprastas {
//    atspausdinkVarda(vardas: manoVardas)
//} else {
//    atspausdinkVarda(vardas: "Nezinau")
//}
//

//func sukonstruok(varda vardas: String, _ pavarde: String) -> String {
//    return vardas + " " + pavarde
//}
//
//let pilnasVardas = sukonstruok(varda: "Romas", "Petkus")
//
//print(pilnasVardas)

func parinkKalba(_ kalba: String = "English") {
    print("Uzsetinta: \(kalba) kalba")
    // Settings.setLanguage(kalba)
}

parinkKalba()


var galYraAmzius: Int? = nil
galYraAmzius = 10
// galYraAmzius ?? 20 ----> galYraAmzius arba 0
atspaudintAmziu(amzius: galYraAmzius ?? 0)
func atspaudintAmziu(amzius: Int) {
    print("Amzius: \(amzius)")
}

