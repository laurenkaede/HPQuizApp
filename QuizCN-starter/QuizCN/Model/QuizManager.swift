//
//  QuizManager.swift
//  QuizHP
//
//  Created by Lauren Moor on 27/04/2020.
//  Copyright © 2020 Lauren. All rights reserved.
//

import Foundation

struct QuizManager {
    var quiz = [
        Question (text: "Just after Harry Potter's parents died at the hands of Lord Voldemort, Harry was sent to live at Hogwarts School of Witchcraft and Wizardry.", answer: "F"),
        Question (text: "Ron and George Weasley are twins.", answer: "F"),
        Question (text: "Sirius Black, Harry's godfather, is an Animagus and can turn into a big black dog.", answer: "T"),
        Question (text: "In 'Harry Potter and the Chamber of Secrets,' after many painful rejections, Nearly-Headless Nick is FINALLY allowed in to the Headless Hunt.", answer: "F"),
        Question (text: "The cry of a fully grown Mandrake can kill you.", answer: "T"),
        Question (text: "The Dursleys live at 4 Privet Drive.", answer: "T"),
        Question (text: "Harry Potter's wand happens to be the brother (equivalent) of Albus Dumbledore's wand.", answer: "F"),
        Question (text: "The title of the first 'Harry Potter' book is different in England from the name it has in the US.", answer: "T"),
        Question (text: "Professor Dumbledore does not like Bertie Bott's Every Flavor Beans.", answer: "T"),
        Question (text: "Monkshood and aconite are the same plant.", answer: "T"),
        Question (text: "The entrance to the prefect's bathroom is guarded by a mermaid statue.", answer: "F"),
        Question (text: "Harry Potter and the Chamber of Secrets is the longest of all the Potter films.", answer: "T"),
        Question (text: "Hedwig is the first character to die in Harry Potter and the Deathly Hallows.", answer: "F"),
        Question (text: "The first Acromantula sighting occurred in 1764.", answer: "T"),
        Question (text: "The Snitch was not an original aspect of Quidditch.", answer: "T"),
        Question (text: "According to Luna Lovegood, a Whigglespurt is an invisible creature that floats into your ears and makes your brain go fuzzy.", answer: "F"),
        Question (text: "An island off the coast of Scotland has been made unplottable because of an infestation of human-eating creatures.", answer: "T"),
        Question (text: "Erapitora is a spell that wizards use to get rid of an oncoming sneeze.", answer: "F"),
        Question (text: "Aberforth Dumbeldore's favourite fairy tale is 'Grumble the Grubby Goat.' ", answer: "T"),
        Question (text: "A version of the first chapter of Harry Potter and the Halfblood Prince was originally the opening of Harry Potter and the Philosopher's Stone.", answer: "T")
    ].shuffled()
    
    
    var questionIndex = 0
    var score = 0
    
    func checkAnswer(userAnswer: String) -> Bool {
        if (userAnswer == quiz[questionIndex].answer) {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionIndex].text
    }
    
    func getProgress() -> Float {
        let progress = Float (questionIndex + 1) / Float (quiz.count)
        return progress
    }
    
    mutating func nextQuestion() -> Bool {
        if (questionIndex < quiz.count - 1){
            questionIndex += 1
            return true
        } else {
            questionIndex = 0
            
            return false
        }
    }
    
    mutating func calculateScore(num: Int) {
        score += num
        
        if num == 0 {
            score = 0
        }
    }
}
