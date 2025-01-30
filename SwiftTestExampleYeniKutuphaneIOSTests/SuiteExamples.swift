//
//  SuiteExamples.swift
//  SwiftTestExampleYeniKutuphaneIOSTests
//
//  Created by Eren Elçi on 30.01.2025.
//

import Testing

struct SuiteExamples {

  

}


@Suite("Student ViewModel Tests")
struct StudentViewModelTests {
    
    // Senaryo -> Ornegin bir viewmodelimiz olsun API den veya database den vs veri cekelim sunu demek isteyebiliriz burada eger ver geliyorsa succes testleri , veri gelmiyorsa failure testlerinin calismasini isteyelim amacimiz struclarida sinfilandirabiliyoruz yani gruplandirabiliyoruz 
    
    
    @Suite("Student from id Success Test")
    struct Success {
        @Test
        func getStudenDatails() {
            
        }
    }
    
    
    @Suite("Student from id Failure Test")
    struct Failure {
        
        @Test func showFailureMessageToUser() {
            
        }
        
        @Test func retryWithAnotherId() {
            
        }
    }
    
    
    
}
