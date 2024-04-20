//
//  ContentView.swift
//  codenext
//
//  Created by admin on 4/19/24.
//

import SwiftUI

var count = 0

func SignIn() -> Void{
    count += 1
    print(count)
}

struct ContentView: View {
    @State private var username: String = ""
    @State var emailFieldIsFocused = false
    @State private var nameComponents = PersonNameComponents()
    @State private var speed = 50.0
    @State private var red = 50.0
    @State private var blue = 50.0
    @State private var green = 50.0
    @State private var isEditing = false
    
    
    var body: some View {
        VStack {
            //            Image(systemName: "globe")
            //                .imageScale(.large)
            //                .foregroundStyle(.tint)
            //            Text("Hello, world!")
            //            Button(action: SignIn){
            //                Image(systemName: "globe")
            //                Text("Print")
            //            }
            Text("Evil Ikea")
                .font(.caption)
                .foregroundColor(.blue)
                .fontWeight(.light)
                .fontWidth(Font.Width.expanded)
                .padding(40)
                .background(Color(red: red, green: green, blue: blue))
                .cornerRadius(10)
                .opacity(speed)
                .shadow(color: .black,  radius:40, x: 20, y:20)
            
            TextField(
                "Proper name",
                value: $nameComponents,
                format: .name(style: .medium)
            )
            .onSubmit {
                //                validate(components: nameComponents)
                print("e")
            }
            .disableAutocorrection(true)
            .border(.secondary)
            Text(nameComponents.debugDescription)
                .padding()
            Text("Opacity")
            Slider(
                        value: $speed,
                        in: 0...1,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
            Text("Red")

            Slider(
                        value: $red,
                        in: 0...1,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
            Text("Blue")
            Slider(
                        value: $blue,
                        in: 0...1,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
            Text("Green")
            Slider(
                        value: $green
                        ,
                        in: 0...1,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
            
        }
    }
}

#Preview {
    ContentView()
}

/* It generates the preview, if deleted it will delete the preview and you would have to test it via ios simulator. */

/* The code doesn't work because it the text is displayed within the parameters section and the count is addition function is within the parenthesis instead of in its own function called by the action parameter*/
