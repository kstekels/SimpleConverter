//
//  ContentView.swift
//  UnitTestDemoApp
//
//  Created by karlis.stekels on 27/01/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        Form {
            VStack(spacing: 20) {
                Text("\(vm.convertedText)")
                    .font(.headline)
                TextField("Enter a value.", text: $vm.text)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .submitLabel(.done)
                Button("Convert") {
                    vm.convertMoney()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
