//
//  File 2.swift
//  
//
//  Created by Ghalia Mohammed Al Muaddi on 05/08/1445 AH.
//

import Foundation
import Vapor

struct Tutor : RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        
        let Tutor = routes.grouped("Tutor")
        Tutor.get(use : index)
        
        Tutor.post(use : create)
        
        Tutor.put(":id" , use : update)
        
        Tutor.delete(":id" , use : delete)
        
        Tutor.get(":id" , use : getTutorByID)
    }
    
    func index (req : Request) async throws -> String {
        return "Get all Tutors"
    }
    
    func create (req : Request) async throws -> String {
        return "create all Tutors"
    }
    
    func update (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "update with \(id)"
    }
    
    func delete (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "delete with \(id)"
    }
    
    func getTutorByID (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "Get Tutor with ID \(id)"
    }
}
