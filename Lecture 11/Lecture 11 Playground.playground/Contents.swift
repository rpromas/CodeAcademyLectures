import UIKit

var palyginimai = 0

func compareTwoStrings(_ isThisOneFirst: String, _ secondString: String) -> Bool {
    print("iskvieciau \(palyginimai)")
    palyginimai += 1
    return isThisOneFirst < secondString
}

func compareTwoStringsByLength(_ isThisOneFirst: String, _ secondString: String) -> Bool {
    return isThisOneFirst.count < secondString.count
}


var compareClosure: (String, String) -> (Bool) = compareTwoStrings

print(compareTwoStrings("abcd", "defg"))
print(compareClosure("abcd", "defg"))


var vardai: [String] = ["Antanas", "Jonas", "Petras", "Algis"]

/*---------------Pirmas View Controller su table view----------------*/
func prideti(_ vardas: String, _ telefonas: String) {
    vardai.append(vardas)
    
    //reload tableview
}

// Performinant segue
// antrasViewController.pridejimoClosure = prideti
/*-------------------------------*/

/*---------------Antras View Controller su ivedimu----------------*/
var pridejimoClosure: (String, String) -> () = prideti

func didTapAdd() {
    pridejimoClosure("vardas", "telefonas")
}
/*-------------------------------*/


vardai.manoSort(by: {
    return $0.count < $1.count
})

print(vardai)

extension Array where Element == String {
    mutating func manoSort(by compareClosure: (String, String) -> (Bool)) {
        for _ in 0..<self.count - 1 {
            for j in 0..<self.count - 1 {
                if compareClosure(self[j], self[j + 1]) {
                    let temp = self[j]
                    self[j] = self[j + 1]
                    self[j + 1] = temp
                }
            }
        }
    }
}





//func manoSort() {
//    for _ in 0..<vardai.count - 1 {
//        for j in 0..<vardai.count - 1 {
//            if compareTwoStrings(vardai[j], vardai[j + 1]) {
//                let temp = vardai[j]
//                vardai[j] = vardai[j + 1]
//                vardai[j + 1] = temp
//            }
//        }
//    }
//}

//
//
//vardai.sort(by: compareTwoStrings)
//
//
//print(vardai)

//vardai.sort(by: compareTwoStrings)

//vardai.manoSort { isThisStringFirst, thanThisString in
//    return isThisStringFirst.count < thanThisString.count
//}
