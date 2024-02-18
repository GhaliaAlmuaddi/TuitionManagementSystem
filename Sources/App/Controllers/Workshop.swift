//
//  File 2.swift
//  
//
//  Created by Ghalia Mohammed Al Muaddi on 05/08/1445 AH.
//


import Foundation
import Vapor

struct Workshop : RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        let Workshop = routes.grouped("Workshop")
        Workshop.get(use : index)
        
        Workshop.post(use : create)
        
        Workshop.put(":id" , use : update)
        
        Workshop.delete(":id" , use : delete)
        
        Workshop.get(":id" , use : getWorkshopByID)
    }
    
    func index (req : Request) async throws -> String {
        return "Get all Workshop"
    }
    
    func create (req : Request) async throws -> String {
        return "create all Workshop"
    }
    
    func update (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "update with \(id)"
    }
    
    func delete (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "delete with \(id)"
    }
    
    func getWorkshopByID (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "Get Workshop with ID \(id)"
    }
}
