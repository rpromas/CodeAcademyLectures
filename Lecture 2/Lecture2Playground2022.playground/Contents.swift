//var manoKintamasis: Int = 7
//let maxLoginAttemps: Int = 5
//
//manoKintamasis = 4
//manoKintamasis = maxLoginAttemps
//
//print(manoKintamasis * 4)
//
////manoKintamasis = maxLoginAttemps + 5
//
////print(manoKintamasis - 4)
//print(manoKintamasis + 4)
//
////print(manoKintamasis / maxLoginAttemps)
//
//
//// kvieciu say hello funkcija fesiokerfkserfioesrf
///* */
//
//sayHello("200")
//
///// Sita funckija isprinta parama
///// - Parameter param: parametras kuri isspaudina i konsole
///// - Returns: vieneta
//func sayHello(_ param: String) -> Int {
//    print(param)
//    return 1
//}
//

//var skaiciuRinkinys: [Int] = [1, 5, 8]
//
////print(skaiciuRinkinys.count)
////
//
//skaiciuRinkinys.append(36)
//
//var a = 4

//var manoVaikuAmzius: [String : Int] = [String: Int]()
//
//var darbuotojoPareigosPagalKoda: [Int: String] = [105: "Apsauginis"]
//
//
//darbuotojoPareigosPagalKoda[105] = "Apsauginis"
//darbuotojoPareigosPagalKoda[1003] = "Progamuotojas"
//
//print(darbuotojoPareigosPagalKoda[105])

//func pasisveikinti() {
//    print("sveiki")
//}
//
//
//pasisveikinti()
//pasisveikinti()
//pasisveikinti()
//
//func pasisveikintiAsmeniskai(_ vardas: String, _ vardas2: String, pavarde: String) {
//    print("Sveikas \(vardas), \(vardas2) - \(pavarde)")
//}
//var manoVardas = "Mantas"
//
//func suma(a: Int, b: Int) -> String
//{
//    return "Mano gauta suma: \(a + b)"
//}
//
//pasisveikintiAsmeniskai(manoVardas, "Petras", pavarde: "Petraitis")
//
//let skaiciuSuma: String = suma(a: 5, b: 11)
//
//print(skaiciuSuma)

//let manoAmzius = "6"
//
//if manoAmzius == "Jonas" {
//    print("Tu vyresnis nei 10 metu")
//}

//if manoAmzius < 7 {
//    print("Tau maziau nei 7 metai")
//} else {
//    print("Tau yra maziau arba desimt metu")
//}

//if 30 % 5 == 0 {
//    print("25 dalinasi is 5")
//}
//else {
//    print("nesidalina")
//}

// Namu Darbas: Skaidrese assigment 3
// func1(a, b) -> Bool
// func2(a, b) ----------- kviecia func1 ir tikrina ar dalinasi a ir b ir atprintina atitinkama zinute
// kad dokumentuot funkcija spaudziam option + command + /
//var arTiesa: Bool = false
//
//if arTiesa {
//    print("Taip tikrai tiesa ")
//}
//else {
//    print("Netiesa")
//}

// Namu darbo sprendimas:

func arDalinasi(a: Int, b: Int) -> Bool {
    if a % b == 0 { // naudojam modulo operatoriu patikrinti ar skaiciai dalinasi
        return true
    } else {
        return false
    }
    
//    return a % b == 0 // antras budas siai funkcijai realizuoti
}

func pasakytiArDalinasiSkaiciai(dalmuo: Int, daliklis: Int) {
    let funkcijosRezultatas: Bool = arDalinasi(a: dalmuo, b: daliklis)
    
    if funkcijosRezultatas {
        print("\(dalmuo) dalinasi is \(daliklis)")
    } else {
        print("\(dalmuo) nesidalina is \(daliklis)")
    }
}

pasakytiArDalinasiSkaiciai(dalmuo: 30, daliklis: 6)

