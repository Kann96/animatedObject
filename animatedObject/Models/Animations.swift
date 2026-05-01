//
//  Animations.swift
//  animatedObject
//
//  Created by Анастасия Кучер on 19.04.2026.
//

struct Animation {
    
    let animation: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
}

extension Animation {
    static func getAnimation() -> [Animation] {
        
        var animations: [Animation] = []
        
        let animationsName = DataStore.shared.presets.shuffled()
        let curvesName = DataStore.shared.curves.shuffled()
        let forceMeaning = Int.random(in: 1...3)
        let durationMeaning = Int.random(in: 1...3)
        let delayMeaning = Int.random(in: 1...3)
        
        let iterationCount = min(
            animationsName.count,
            curvesName.count
        )
        
        for index in 0..<iterationCount {
            let animation = Animation(
                animation: animationsName[index].rawValue,
                curve: curvesName[index].rawValue,
                force: forceMeaning,
                duration: durationMeaning,
                delay: delayMeaning
            )
            animations.append(animation)
        }
        
        return animations
    }
    
}
