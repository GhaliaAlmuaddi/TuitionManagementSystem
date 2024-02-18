//
//  File 2.swift
//  
//
//  Created by jumanah khalid albisher on 08/08/1445 AH.
//


import Foundation
import Fluent
import Vapor
import FluentPostgresDriver


struct TutorMigration: Migration {

    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("Tutors").id().field("name", .string).create()
    }
    
    func revert(on database: Database)  -> EventLoopFuture<Void> {
        database.schema("Tutors").delete()
    }
}
