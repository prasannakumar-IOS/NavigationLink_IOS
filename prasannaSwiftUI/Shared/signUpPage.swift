//
//  loginView.swift
//  prasannaSwiftUI
//
//  Created by Prasannakumar Manikandan on 19/12/21.
//

import SwiftUI


struct signUpPage: View {
    
    @State var FirstName = ""
    @State var LastName = ""
    @State var Password = ""
    @State var ConfirmPassword = ""
    var personDetails = ["First Name", "Last Name", "Password"]
    @State private var isNaviteToLogIn = false
    @Environment(\.dismiss) private var dismiss

    var body: some View {
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    ScrollView {
                    VStack {
                        Group {
                            Text("Enter Your Details:")
                                .padding()
                                .foregroundColor(.white)
                            Text("First Name:")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("First Name", text: $FirstName)
                            Text("Last Name:")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("Last Name", text: $LastName)
                            Text("Password:")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            SecureField("Password", text: $Password)
                            Text("Confirm Password:")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            SecureField("Confirm Password", text: $ConfirmPassword)
                            NavigationLink(destination: ContentView(), isActive: $isNaviteToLogIn) {
                                Button(action: {
                                    dismiss()
                                    print("Button action")
                                }) {
                                    Text("Save")
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 30)
                                        .foregroundColor(.black)
                                        .background(Color.blue)
                                }.cornerRadius(5)
                                    .padding(.top, 30)
                            }
                        }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        Spacer()
                    }.textFieldStyle(OvalTextFieldStyle())
                }
        }
    }
}

struct signUpPage_Previews: PreviewProvider {
    static var previews: some View {
        signUpPage()
    }
}
