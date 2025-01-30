//
//  SetupExample.swift
//  SwiftTestExampleYeniKutuphaneIOSTests
//
//  Created by Eren Elçi on 30.01.2025.
//

import Testing

struct SetupExample {
    // Bu senaryoda mockup testler icin ornek bir degisken kullanicaksak ve bu degeri cok fazla yerde kullaniyorsak x taniplayip init edebiliriz
    
    var x: Int?
    
    init () {
        x = 1
    }

    @Test
    func mockTest() {
        
        #expect(x == 1)
    }

}
