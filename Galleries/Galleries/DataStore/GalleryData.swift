//
//  GalleryData.swift
//  Galleries
//
//  Created by Lukas Devos on 03/12/2025.
//

import Foundation

@Observable
class GalleryData {
    public var galleries = Galleries(galleries: [Gallery]())
    
    init(){
        galleries = load("galleries.json")
    }
    
    func getGalleries() -> [Gallery] {
        return galleries.galleries
    }
    
    func getGalleries(artist: Artist) -> [Gallery] {
        let galleriesA = galleries.galleries.filter { $0.artists.contains(where: { $0.self == artist }) }
        return galleriesA
    }
    
    private func sort() {
        galleries.galleries = galleries.galleries.sorted(by: {
            $0.name < $1.name })
    }
 
    func loadData() async {
        // TODO: Implement async loading
        do {
            print("⏳ Simulating 2-second load delay...")
            try await Task.sleep(for: .seconds(2)) // Simulate long load
            //load galleries here
            print("✅ Data loaded successfully.")
        } catch {
            print("❌ Failed to load galleries:", error)
            
        }
    }
}
