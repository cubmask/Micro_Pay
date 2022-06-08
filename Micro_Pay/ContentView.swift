//
//  ContentView.swift
//  Micro_Pay
//
//  Created by Kevin Coker on 08/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    
    let icons = [
    "cart",
    "arrow.right.arrow.left",
    "bell",
    "gear"
    ]
    
    var body: some View {
        VStack{
            // Content
            ZStack{
                switch selectedIndex {
                case 0:
                    NavigationView{
                        VStack{
                            //Horizontal Tabs 'Keypad'
                            HStack{
                                
                            }
                            
                            //Label
                            Label("Note", systemImage: "plus")
                                .border(Color.black)
                            Text("Checkout")
                            //Button()
                        }
    
                    }
                case 1:
                    NavigationView{
                        VStack{
                            Text("Transactions")
                        }
                        .navigationTitle("Transactions")
                    }
                case 2:
                    NavigationView{
                        VStack{
                            Text("Notification")
                        }
                        .navigationTitle("Notification")
                    }
                case 3:
                    NavigationView{
                        VStack{
                            Text("Settings")
                        }
                        .navigationTitle("Settings")
                    }
                default:
                    NavigationView{
                        VStack{
                            Text("Second Screen")
                        }
                        .navigationTitle("Second Home")
                    }
                }
                
            }
            Divider()
            HStack{
                ForEach(0..<4, id: \.self) { number in
                    Spacer()
                    Button(action: {
                        self.selectedIndex = number
                    },
                           label: {
                        Image(systemName: icons[number])
                            .font(.system(size: 25,
                                          weight: .regular,
                                          design: .default))
                            .foregroundColor(selectedIndex == number ? .black :
                                Color(UIColor.lightGray))
                        
                    })
                    Spacer()
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
