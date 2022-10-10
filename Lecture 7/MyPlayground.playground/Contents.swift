import UIKit

// Kaip apsiraso Stringu Masyvas?
var miestai: [String] = ["Vilnius", "Alytus", "Kaunas","Jurbarkas"]

//var y = 5
//var x = 10
//
//for i in 0..<y {
//    for j in 0..<x {
//        print("x: \(j), y: \(i)")
//    }
//}
//
//for miestas in miestai {
//    print("Miesto pavadinimas: \(miestas)")
//    if miestas == "Kaunas" {
//        print("Jis yra kulturos sostine")
//        break
//    }
//}
//print("----------------------")
//for miestas in miestai {
//    if miestas == "Kaunas" {
//        print("\(miestas) yra kulturos sostine")
//        continue
//    }
//
//    print("\(miestas) yra miestas")
//}

//enum Spalvos {
//    case zalia
//    case raudona
//    case geltona
//    case melyna
//    case violetine
//    case ruda
//    case juoda
//    case balta
//    case oranzine
//}
//
//
//var spalva: Spalvos = .raudona
//var galutineSpalva: UIColor = .green

//print(testuojamaSpalva.accessibilityName)
//print("\(spalva)")

//galutineSpalva = .yellow

//print(galutineSpalva.accessibilityName)

//let myAge = 26
//
//var
//for age in 20..<30 {
//    print("Tikrinu ar \(age) yra mano metai")
//    if age == myAge {
//        print("Radau!")
//        break
//    }
//}

//func ipylkAlaus(zmogausVardas: String, zmogausAmzius: Int) {
//    guard zmogausAmzius >= 20 else {
//        print("Per jaunas")
//        return
//    }
//
//    print("Pilu alaus zmogui vardu: \(zmogausVardas)")
//}
//
//ipylkAlaus(zmogausVardas: "Antanas", zmogausAmzius: 15)

var kintamasis: Double = 10.0222
var sveikasisKintamasis: Int = 10
//let du: Int = 2

var manoBoolas = false

//if manoBoolas {
//    manoBoolas = false
//} else {
//    manoBoolas = true
//}

manoBoolas = !manoBoolas

var pirmasStringas = "Code"
var antrasString = "Academy"

// cia reik ifo ->
if pirmasStringas.count + antrasString.count > 10 {
    let kasGuliPriesPaketimaPirmo = pirmasStringas
    pirmasStringas = antrasString
    antrasString = kasGuliPriesPaketimaPirmo
}

//print(pirmasStringas)
//print(antrasString)


//var a = false
//var b = true
//
//if !(a || b) {
//    print("veiksmas")
//}
//
//var physics = 95.0
//var chem = 75.0
//
//let avg = (physics + chem) / 2
//
//switch avg {
//case 90...100:
//    print("grade A")
//case 80..<90:
//    print("Grade B")
//case 70..<80:
//    print("")
//default:
//    print("Grade F")
//}


// nuo -2^31 iki 2^31 nuo -2 milijardu iki +2 milijardu
// nuo 0 iki 2^32 iki 4 milijardu
// 2038
//let tikTeigimas: UInt = 50

let pirkimoKaina: Double = 50.3
let pardavimoKaina: Double = 40.5

var marza = pardavimoKaina - pirkimoKaina

if marza > 0 {
    print("Musu pelnas: \(marza)")
} else if marza < 0 {
    print("Musu nuostolis: \(marza)")
} else {
    print("Isejom ant nulio")
}

//Write a functionality to accept the height of a person in centimetres and categorise the person according to their height: a) If height is below 150 - person is short b) If height is below 175 - person is average height c) If height is below 195 - person is tall d) If height is more than 195 - person is very tall
//You need to write your if statements starting from the highest height - it means that the first condition that you check is for very tall person, then for tall and so on.
//Try to not use any else statements and without else if statements
//Example Input Height: 180  Output Person is tall

func ugioApibudinimas(ugis: Int) -> String {
    if ugis > 0 {
        return "zmogus egizstuoja"
    }
    
    return "zmogus neegzistuoja"
}

ugioApibudinimas(ugis: 150)
