import Foundation

struct Pour: Identifiable, Codable, Equatable {
    var id: UUID
    var createdAt: Date
    var title: String
    var waxType: String
    var fragrancePct: String
    var wickSize: String
    var notes: String

    init(id: UUID = UUID(), createdAt: Date = Date(), title: String = "", waxType: String = "", fragrancePct: String = "", wickSize: String = "", notes: String = "") {
        self.id = id
        self.createdAt = createdAt
        self.title = title
        self.waxType = waxType
        self.fragrancePct = fragrancePct
        self.wickSize = wickSize
        self.notes = notes
    }
}
