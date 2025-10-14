//
//  ContentView.swift
//  DemoRPN
//
//  Created by Lukas Devos on 08/10/2025.
//

import SwiftUI

struct ContentView: View {
    //@State var number = 3
    @State var number = MyNumber()
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                CalcView()
                Grid {
                    GridRow {
                        ForEach(7..<10) { number2 in
                            Button("\(number2)") {
                                number.increment(input: number2)
                            }
                        }
                        Button("/") {
                            
                        }
                    }
                    GridRow {
                        ForEach(4..<7) { number2 in
                            Button("\(number2)") {
                                number.increment(input: number2)
                            }
                        }
                        Button("X") {
                            
                        }
                    }
                    GridRow {
                        ForEach(1..<4) { number2 in
                            Button("\(number2)") {
                                number.increment(input: number2)
                            }
                        }
                        Button("-") {
                            
                        }
                    }
                    GridRow {
                        Button("0") {
                            number.increment(input: 0)
                        }
                        Text(" ")
                        Text(" ")
                        Button("+") {
                            
                        }
                    }
                    GridRow {
                        Button("Clear") {
                            number.clear()
                        }.gridCellColumns(2)
                        Button("Enter") {
                            
                        }.gridCellColumns(2)
                    }
                }
            }
            Button("Show stack") {
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
