//
//  PickerDemoView.swift
//  Chapter08
//
//  Created by Student Account on 8/5/23.
//

import SwiftUI

struct PickerDemoView: View {
    @State private var selectedOption = "Sandwich"
       @State private var selectedColor = Color.red
       @State private var selectedDate = Date()

       var lunchOptions = ["Sandwich", "Salad", "Candy", "Pizza"]

    var body: some View {
        VStack {
            Picker("What would you like for lunch?", selection: $selectedOption) {
                ForEach(lunchOptions, id: \.self) { option in
                    Text(option)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)
            
            ColorPicker("Pick a Color", selection: $selectedColor)
                          .padding()
                          .background(Color.gray.opacity(0.2))
                          .cornerRadius(10)
                          .padding(.horizontal)

                      DatePicker("Pick a Date", selection: $selectedDate, in: ...Date(), displayedComponents: [.date])
                          .padding()
                          .background(Color.gray.opacity(0.2))
                          .cornerRadius(10)
                          .padding(.horizontal)
            
            Text("Selected Date: \(formattedDate(selectedDate))")
                           .foregroundColor(.blue)
                           .padding()
            
            

                      Spacer()
        }
        
        
        
        
       
    }
    
    private func formattedDate(_ date: Date) -> String {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: date)
        }
}

struct PickerDemoView_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemoView()
    }
}
