//
//  TitleViewModel.swift
//

import Foundation

struct TitleViewModel: Identifiable, Hashable {
    
    var id: Int
    let name: String
    let details: String
    let image: String
    
    static func fetchMockList()-> [TitleViewModel]{
        
        return [TitleViewModel(
                    id: 0,
                    name: "User Name ",
                    details: "Details",
                    image: "user"),
                
                TitleViewModel(
                    id: 1,
                    name: "",
                    details:"Forgot Password",
                    image: "man"),
                
                TitleViewModel(
                    id: 2,
                    name: "",
                    details: "Change Password",
                    image: "profile"),
                
                TitleViewModel(
                    id: 3,
                    name: "",
                    details: "Settings",
                    image: "settings"),
                
                TitleViewModel(
                    id: 4,
                    name: "",
                    details: "LogOut",
                    image: "logout")
        
        ]
    }
}

