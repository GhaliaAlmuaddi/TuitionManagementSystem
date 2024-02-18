
import Vapor
import Fluent
import FluentPostgresDriver
// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    
//    app.databases.use(.postgres(configuration:
//         SQLPostgresConfiguration(hostname: "localhost", username: "postgres", password: "",
//                                  database: "plantsdb" ,
//                                  tls: .prefer(try .init(configuration: .clientDefault)))) , as : .psql)
//                        
//    try app.register(collection: file())
//    try routes(app)
//    app.migrations.add(MyMigration())
    
    
    
    // register routes
    try app.register(collection: Enrolment())
    try app.register(collection: Learner())
    try app.register(collection: Tutor())
    try app.register(collection: Workshop())
    try routes(app)
}
