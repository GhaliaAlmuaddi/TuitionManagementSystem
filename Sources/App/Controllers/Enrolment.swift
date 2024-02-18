//
//  File 2.swift
//  
//
//  Created by Ghalia Mohammed Al Muaddi on 05/08/1445 AH.
//


import Foundation
import Vapor

struct Enrolment : RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        let Enrolment = routes.grouped("Enrolment")
        Enrolment.get(use : index)
        
        Enrolment.post(use : create)
        
        Enrolment.put(":id" , use : update)
        
        Enrolment.delete(":id" , use : delete)
        
        Enrolment.get(":id" , use : getEnrolmentByID)
    }
    
    func index (req : Request) async throws -> String {
        return "Get all Enrolment"
    }
    
    func create (req : Request) async throws -> String {
        return "create all Enrolment"
    }
    
    func update (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "update with \(id)"
    }
    
    func delete (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "delete with \(id)"
    }
    
    func getEnrolmentByID (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "Get Enrolment with ID \(id)"
    }
}
