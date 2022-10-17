//import UIKit
//
//// Kaip apsiraso Stringu Masyvas?
//var miestai: [String] = ["Vilnius", "Alytus", "Kaunas","Jurbarkas"]
//
////var y = 5
////var x = 10
////
////for i in 0..<y {
////    for j in 0..<x {
////        print("x: \(j), y: \(i)")
////    }
////}
////
////for miestas in miestai {
////    print("Miesto pavadinimas: \(miestas)")
////    if miestas == "Kaunas" {
////        print("Jis yra kulturos sostine")
////        break
////    }
////}
////print("----------------------")
////for miestas in miestai {
////    if miestas == "Kaunas" {
////        print("\(miestas) yra kulturos sostine")
////        continue
////    }
////
////    print("\(miestas) yra miestas")
////}
//
////enum Spalvos {
////    case zalia
////    case raudona
////    case geltona
////    case melyna
////    case violetine
////    case ruda
////    case juoda
////    case balta
////    case oranzine
////}
////
////
////var spalva: Spalvos = .raudona
////var galutineSpalva: UIColor = .green
//
////print(testuojamaSpalva.accessibilityName)
////print("\(spalva)")
//
////galutineSpalva = .yellow
//
////print(galutineSpalva.accessibilityName)
//
////let myAge = 26
////
////var
////for age in 20..<30 {
////    print("Tikrinu ar \(age) yra mano metai")
////    if age == myAge {
////        print("Radau!")
////        break
////    }
////}
//
////func ipylkAlaus(zmogausVardas: String, zmogausAmzius: Int) {
////    guard zmogausAmzius >= 20 else {
////        print("Per jaunas")
////        return
////    }
////
////    print("Pilu alaus zmogui vardu: \(zmogausVardas)")
////}
////
////ipylkAlaus(zmogausVardas: "Antanas", zmogausAmzius: 15)
//
//var kintamasis: Double = 10.0222
//var sveikasisKintamasis: Int = 10
////let du: Int = 2
//
//var manoBoolas = false
//
////if manoBoolas {
////    manoBoolas = false
////} else {
////    manoBoolas = true
////}
//
//manoBoolas = !manoBoolas
//
//var pirmasStringas = "Code"
//var antrasString = "Academy"
//
//// cia reik ifo ->
//if pirmasStringas.count + antrasString.count > 10 {
//    let kasGuliPriesPaketimaPirmo = pirmasStringas
//    pirmasStringas = antrasString
//    antrasString = kasGuliPriesPaketimaPirmo
//}
//
////print(pirmasStringas)
////print(antrasString)
//
//
////var a = false
////var b = true
////
////if !(a || b) {
////    print("veiksmas")
////}
////
////var physics = 95.0
////var chem = 75.0
////
////let avg = (physics + chem) / 2
////
////switch avg {
////case 90...100:
////    print("grade A")
////case 80..<90:
////    print("Grade B")
////case 70..<80:
////    print("")
////default:
////    print("Grade F")
////}
//
//
//// nuo -2^31 iki 2^31 nuo -2 milijardu iki +2 milijardu
//// nuo 0 iki 2^32 iki 4 milijardu
//// 2038
////let tikTeigimas: UInt = 50
//
//let pirkimoKaina: Double = 50.3
//let pardavimoKaina: Double = 40.5
//
//var marza = pardavimoKaina - pirkimoKaina
//
//if marza > 0 {
//    print("Musu pelnas: \(marza)")
//} else if marza < 0 {
//    print("Musu nuostolis: \(marza)")
//} else {
//    print("Isejom ant nulio")
//}
//
//func ugioApibudinimas(ugis: Int) -> String {
//
//    if ugis > 195 {
//        return "Zmogus labai aukstas"
//    }
//
//    // cia ugis jau mazesnis negu 195 (arba lygus)
//    if ugis > 175 {
//        return "Zmogus aukstas"
//    }
//
//    // cia ugis jau mazesnis negu 175 (arba lygus)
//
//    if ugis > 150 {
//        return "Zmogus vidutinio ugio"
//    }
//
//    // cia ugis jau mazesnis negu 150 (arba lygus)
//
//    return "zmogus zemas"
//}

//var apibudinimas: String = ugioApibudinimas(ugis: 200)
//
//print(apibudinimas, terminator: " - ")
//print(apibudinimas, terminator: "")
 
func sumNumbers(reiksme: Int) -> Int {
    if reiksme < 10 {
        return sumNumbers(reiksme: reiksme + 1)
    }
    
    return reiksme
}

func calculateTax(
    isMember: Bool,
    memberTax: Double,
    nonMemberTax: Double,
    memberRate: Double,
    nonMemberRate: Double,
    hours: Double) {
        if isMember {
            print("Member tax: \(memberRate * hours * memberTax)")
            return
        }
        
        print("Non member tax: \(nonMemberTax * hours * nonMemberRate)")
}


//calculateTax(
//    isMember: false,
//    memberTax: 0.3,
//    nonMemberTax: 0.4,
//    memberRate: 12,
//    nonMemberRate: 18,
//    hours: 5)

//func arStringasIlgas(vardas: String) -> Bool {
//    return vardas.count > 10
//}

var unikalusVardai: [String] = ["Jonas", "Antanauskas", "Petras"]
var skaiciai: [Int] = [3, 2, 25 , 20]
//unikalusVardai.sort()
//unikalusVardai = unikalusVardai.sorted { $0.count > $1.count }
//if unikalusVardai.contains(where: { $0.count > 10 }) {
//    print("Turim")
//} else {
//    print("Neturim")
//}
//unikalusVardai.insert("Jonas")
//unikalusVardai.insert("Petras")
//unikalusVardai.insert("Antanas")
//unikalusVardai.insert("Jonas")
//
//for vardas in unikalusVardai {
//    print(vardas)
//}

print("asdasdasd")
