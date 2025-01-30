//
//  SwiftTestExampleYeniKutuphaneIOSTests.swift
//  SwiftTestExampleYeniKutuphaneIOSTests
//
//  Created by Eren Elçi on 30.01.2025.
//

import Testing
@testable import SwiftTestExampleYeniKutuphaneIOS

struct SwiftTestExampleYeniKutuphaneIOSTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

    
    @Test("Initial Test")
    func exampleTest() {
        #expect(3 == 3)
    }
    
    @Test func dataTest() {
        var student = Student(name: "Eren", age: 22, isGraduate: true)
        student.name = "Eren"
        #expect(student.name == "Eren")
    }
    
    
    
    //Traites -> bir testimiz olsun ve sadece belli kosullarda calismasini istiyorsak
    //bu ornekte singelton degerine gore kosul koydum kodda herhangi bir yerde true olursa bu test calisicak yoksa skipped
    @Test(.enabled(if: Grading.shared.isAvailable))
    func gradingTest() {
        #expect(1 == 2)
    }
    
    @Test(.disabled("BU testi suan kapatiyorum ornegin kodda bir bug duzeltene kadar"))
    func disabledTest() {
        #expect(1 == 2)
    }
    
    //Bu teste zaman veriyoruz eger sureyi asarsa testi calistitmicak
    @Test(.timeLimit(.minutes(1)))
    func UzunSurenTest() {
        #expect(true)
    }
    
    //Ornegin Projede bir issues acilsin bunu link olarak verip testi diger yazilimcilarin gormesi saglayablirsiniz ve uzerinde calistigini gorebilirler test calismaz
    @Test(.bug("https://github.com/Elcieren", "Critical  Bug"))
    func bugTest() {
        #expect(true)
    }
    
    //Bu surume gore testin calisma durumunu kontrol edebilirsiniz
    @Test
    @available(macOS 10.15, iOS 13.0, *)
    func usesNewAPI() {
        
    }
    
    
    
    
    
}
