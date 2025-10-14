//
//  CalcView.swift
//  DemoRPN
//
//  Created by Lukas Devos on 08/10/2025.
//

import SwiftUI

struct CalcView: View {
    
    @State var number = MyNumber()
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextEditor(text: .constant(number.fullText)).frame(width: 100, height: 150).border(Color.black).background(Color.white).padding()
                Grid {
                    GridRow {
                        ForEach(7..<10) { number2 in
                            Button("\(number2)") {
                                number.increment(input: number2)
                            }
                        }
                        Button("/") {
                            number.divide()
                        }
                    }
                    GridRow {
                        ForEach(4..<7) { number2 in
                            Button("\(number2)") {
                                number.increment(input: number2)
                            }
                        }
                        Button("X") {
                            number.multiply()
                        }
                    }
                    GridRow {
                        ForEach(1..<4) { number2 in
                            Button("\(number2)") {
                                number.increment(input: number2)
                            }
                        }
                        Button("-") {
                            number.minus()
                        }
                    }
                    GridRow {
                        Button("0") {
                            number.increment(input: 0)
                        }
                        Text(" ")
                        Text(" ")
                        Button("+") {
                            number.plus()
                        }
                    }
                    GridRow {
                        Button("Clear") {
                            number.clear()
                        }.gridCellColumns(2)
                        Button("Enter") {
                            number.enter()
                        }.gridCellColumns(2)
                    }
                }
            }
            Button("Show stack") {
                number.showStack()
            }
        }
        .padding()
        
    }
}

#Preview {
    CalcView()
}
