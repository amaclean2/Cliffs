//
//  LoginView.swift
//  Cliffs
//
//  Created by Andrew Maclean on 5/17/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Log in to Sunday Peak")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.00784313725490196, green: 0.6784313725490196, blue: 0.5215686274509804))
                Form {
                    TextField("Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color(red: 0.00784313725490196, green: 0.6784313725490196, blue: 0.5215686274509804))
                            Text("Log In").foregroundColor(Color.white).bold()
                        }
                    }.padding([.top, .bottom], 30)
                }
                
                VStack {
                    Text("Not already signed up?")
                    Button(action: {}) {
                        Text("Create an Account").bold()
                    }.accentColor(Color(red: 0.00784313725490196, green: 0.6784313725490196, blue: 0.5215686274509804)).padding(.top, 2)
                }.padding(.bottom, 50)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
