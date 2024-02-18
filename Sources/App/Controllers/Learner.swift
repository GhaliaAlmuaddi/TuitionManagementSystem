//
//  File 2.swift
//  
//
//  Created by Ghalia Mohammed Al Muaddi on 05/08/1445 AH.
//

import Foundation
import Vapor

struct Learner : RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        let learner = routes.grouped("learner")
        learner.get(use : index)
        
        learner.post(use : create)
        
        learner.put(":id" , use : update)
        
        learner.delete(":id" , use : delete)
        
        learner.get(":id" , use : getLearnerByID)
    }
    
    func index (req : Request) async throws -> String {
        return "Get all learners"
    }
    
    func create (req : Request) async throws -> String {
        return "create all learners"
    }
    
    func update (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "update with \(id)"
    }
    
    func delete (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "delete with \(id)"
    }
    
    func getLearnerByID (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "Get learner with ID \(id)"
    }
}
