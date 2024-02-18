//
//  
//
//  Created by Ghalia Mohammed Al Muaddi on 08/08/1445 AH.
//


import Foundation
import Vapor
import Fluent
import FluentPostgresDriver


final class WorkShopModel: Model,Content {
    
    
  static let schema = "Workshops"

    
  @ID(key: .id)
     var id: UUID?

   
  @Field(key: "name")
     var name: String

  @Field(key: "date")
     var date: Date
  
  @Field(key: "location")
     var location: String
    
    @Field(key: "type")
       var type : String
    
//    @Field(key: "tutor_id")
//    var tutor_id : TutorModel.IDValue
//    
//    @Field (key: "Tutor_id")
//    var Tutor_id : TutorModel
    
    
    @Field(key: "tutor_id")
        var tutor_id: UUID?
    
    
    init() { }
    
  
    init(id : UUID , name : String , date : Date , location : String , type : String , tutor_id :  UUID ) {
        
        self.id = id
        self.name = name
        self.date = date
        self.location = location
        self.type = type
        self.tutor_id = tutor_id
         
    }
}
