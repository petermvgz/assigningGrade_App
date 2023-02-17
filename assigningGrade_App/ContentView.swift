//
//  ContentView.swift
//  assigningGrade_App
//
//  Created by Peter Deyi on 2/16/23.
//

import SwiftUI
struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}
// created struct that conforms to the ButtonStyle protocol so we get the BluuButton style

struct ContentView: View {
    @State private var examScoreStr = ""
    @State private var gradeStr = ""
    var body: some View {
    VStack {
        HStack {
        Text("Enter Exam Score: "); TextField("Your Score", text: $examScoreStr)
        }
            .padding()
        .font(.title2)
        Spacer()
        HStack {
            Text("Your Grade is: ")
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        Text((gradeStr))
            .font(.largeTitle)
            .padding(.all)
        Spacer()
      
        HStack {
            Button("Assign Your Grade"){
                let examScore = Double(examScoreStr)
                if examScore! >= 95 {
                    gradeStr = "A+"
                } else if examScore! >= 90.0 {
                    gradeStr = "A"
                } else if examScore! >= 85.0 {
                    gradeStr = "B+"
                } else if examScore! >= 80.0 {
                    gradeStr = "B"
                } else if examScore! >= 75.0 {
                    gradeStr = "C+"
                } else if examScore! >= 70.0 {
                    gradeStr = "C"
                } else if examScore! >= 69.0 {
                    gradeStr = "C-"
                } else if examScore! <= 68.0 {
                    gradeStr = "F"
                } else {
                    gradeStr = "F"
                }
                
                // This is the action performed when the button is pressed
                
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(10.0)
            .background(Color(red: 0, green: 0, blue: 0.5))
            .clipShape(Capsule())
            .buttonStyle(BlueButton())
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
