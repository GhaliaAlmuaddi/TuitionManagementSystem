
import Vapor
import Fluent
import FluentPostgresDriver
// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    
    app.databases.use(.postgres(configuration:
         SQLPostgresConfiguration(hostname: "localhost", username: "postgres", password: "",
                                  database: "tuitiondb" ,
                                  tls: .prefer(try .init(configuration: .clientDefault)))) , as : .psql)
//                        
//    try app.register(collection: file())
//    try routes(app)
//    app.migrations.add(MyMigration())
    
       
    // register routes
    try app.register(collection: Enrolment())
    try app.register(collection: Learner())
    try routes(app)
    
    
    // TUTOR
    try app.register(collection: Tutor())
    app.migrations.add(TutorMigrationT())
    
    try app.register(collection: Workshop())
    app.migrations.add(WorkshopMigration())
}
