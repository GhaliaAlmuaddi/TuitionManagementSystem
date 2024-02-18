import Vapor

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    // register routes
    try app.register(collection: Enrolment())
    try app.register(collection: Learner())
    try app.register(collection: Tutor())
    try app.register(collection: Workshop())
    try routes(app)
}
