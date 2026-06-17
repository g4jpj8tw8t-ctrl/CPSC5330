//
//  QuestLogic.swift
//  BaldwinJosephAdventureApp
//
//  Created by J B on 6/8/26.
//

import Foundation

struct QuestLogic {
    var questIndex: Int = 0
    let quest = [
        Quest("Oh no! The Golden Ring Curse has turned your love Elaine into a Golden Statue! This statue was stolen by Captain LeChuck! We must save her!", "Visit the mysterious voodoo lady for advice.", "Hunt down Captain LeChuck immediately.", "Gold_Statue"),
        Quest("Voodoo lady sends you to Blood Island. Here there are clues to find the mysterious diamond that can break the curse. But also pirate's treasure.", "Follow the clues to find the Crystal Coconut Diamond.", "Seek the pirate's treasure instead.", "Voodoo_Lady"),
        Quest("You discover the legendary Crystal Coconut Diamond, break the curse, and restore Elaine to her human form. You win!", nil, nil, "MI_Win"),
        Quest("You find the treasure chest full of poison and traps. You die.", nil, nil, "Game_Over"),
        Quest("You catch up to Captain LeChuck. Now is the time to make a move!", "Challenge Captain LeChuck to an insult duel.", "Sneak aboard LeChuck's ship disguised as a cabin boy.", "LeChuckShip"),
        Quest("LeChuck's insults are so devastating that you spend the rest of your life questioning your fashion choices.", nil, nil, "Game_Over2"),
        Quest("You discover LeChuck's journal, learn how to break the curse, and escape with Elaine. You win!", nil, nil, "MI_Win")
    ]
    
    func getCurrentQuest() -> Quest {
        return quest[questIndex]
    }
    
    func isEnding() -> Bool {
        return quest[questIndex].optionOne == nil && quest[questIndex].optionTwo == nil
    }
    
    mutating func chooseOptionOne() {
        if isEnding() {
            questIndex = 0
        } else if questIndex == 0 {
            questIndex = 1
        } else if questIndex == 1 {
            questIndex = 2
        } else if questIndex == 4 {
            questIndex = 5
        }
    }
    
    mutating func chooseOptionTwo() {
        if isEnding() {
            questIndex = 0
        } else if questIndex == 0 {
            questIndex = 4
        } else if questIndex == 1 {
            questIndex = 3
        } else if questIndex == 4 {
            questIndex = 6
        }
    }
    }
