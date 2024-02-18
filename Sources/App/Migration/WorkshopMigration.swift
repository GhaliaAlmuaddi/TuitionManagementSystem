//
//  File.swift
//  
//
//  Created by Ghalia Mohammed Al Muaddi on 08/08/1445 AH.
//
import Foundation
import Fluent
import Vapor
import FluentPostgresDriver


struct WorkshopMigration: Migration {

    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("Workshops")
            .id()
            .field("name", .string)
            .field("date", .date)
            .field("location", .string)
            .field("type", .string)
            .field("tutor_id", .uuid).create()
        
    }
    
    func revert(on database: Database)  -> EventLoopFuture<Void> {
        database.schema("Workshops").delete()
    }
}
