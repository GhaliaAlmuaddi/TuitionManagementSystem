//
//  File 2.swift
//  
//
//  Created by jumanah khalid albisher on 08/08/1445 AH.
//


import Foundation
import Vapor
import Fluent
import FluentPostgresDriver

final class TutorModel: Model,Content{
  
  
    static let schema = "Tutors"

      
    @ID(key: .id)
       var id: UUID?

     
    @Field(key: "name")
       var name: String

    @Field(key: "skils")
       var skils: String
    
    @Field(key: "experience")
       var experience: String
    
    init() { }


    init(id: UUID? = nil, name: String) {
           self.id = id
           self.name = name
           self.skils = name
           self.experience = name


       }
}
