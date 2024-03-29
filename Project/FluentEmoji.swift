//
//  FluentEmoji.swift
//  FluentEmoji
//
//  Created by Ci Zi on 2023/6/8.
//

import Foundation

public class FluentEmoji {
    public static func getSVG(_ string: String) -> Data? {
        if let character = string.first, string.count == 1 {
            return getSVG(character)
        } else {
            return nil
        }
    }
    
    public static func getSVG(_ character: Character) -> Data? {
        guard character.unicodeScalars.first?.properties.isEmoji == true else {
            print("not emoji")
            return nil
        }
        
        let codePoints = character.unicodeScalars.map {  String(format: "%04x", $0.value) }.filter { !$0.contains("fe0f") }
        let unicodeString = codePoints.joined(separator: "_")
        let fileName = "fluent_u" + unicodeString
        
        let bundle = Bundle(for: FluentEmoji.self)
        
        if let url = bundle.url(forResource: fileName, withExtension: "svg") {
            do {
                let data = try Data(contentsOf: url)
                return data
            }
            catch {
                print(error)
                return nil
            }

        } else {
            print("url missing")
            return nil
        }
    }
}

