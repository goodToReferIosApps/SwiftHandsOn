//: [Previous](@previous)

import Foundation

var sampleSentence = "Lets start today by completing a very interesting challenge"

func reverseWordsInSentence(sentence: String) -> String {
    var allWords = sampleSentence.components(separatedBy: " ")
    
    var newSentence = ""
    for i in 0...allWords.count - 1 {
        
        if newSentence != "" {
            newSentence += " "
        }
        
        if i % 2 == 1 {
            let reversedWord = String(allWords[i].characters.reversed())
            newSentence += reversedWord.stringByRemovingVowels()
        } else {
            newSentence += allWords[i].stringByRemovingVowels()
        }
    }
    
    return newSentence
}


extension String {
    func stringByRemovingVowels() -> String{
        var newWord = self
        for vowel in ["a", "e", "i", "o", "u"] {
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        
        return newWord
    }
}

print(reverseWordsInSentence(sentence: sampleSentence))
