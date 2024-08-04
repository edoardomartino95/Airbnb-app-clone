//
//  AccediCostructorView.swift
//  Airbnb App Clone
//
//  Created by Edoardo Martino on 26/07/24.
//

import SwiftUI

struct User: Codable {
    let email: String
    let password: String
}

struct AccediCostructorView: View {
    
    @State private var isOpen: Bool = false
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var users: [User] = []
    @State private var loginError: String = ""
    @State private var loginMessageColor: Color = .red
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    Text("Accedi per iniziare a programmare il tuo prossimo viaggio.")
                        .foregroundColor(.gray)
                        .padding(.trailing, 50)
                    
                    Button(action: {
                        isOpen = true
                    })
                    {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(width: 355, height: 60)
                                .cornerRadius(10)
                                .padding(.top, 30)
                                .padding(.horizontal)
                            
                            Text("Accedi")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                                .padding(.top, 27)
                        }
                    }
                    
                    HStack{
                        Text("Non hai un account?")
                            .padding(.trailing, 1)
                        
                        Button(action: {
                            isOpen = true
                        })
                        {
                            Text("Registrati")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .underline(color: .black)
                                .padding(.bottom, 10)
                                .padding(.top, 10)
                                .padding(.trailing, 113)
                        }
                    }
                    .sheet(isPresented: $isOpen){
                        NavigationView{
                            ScrollView{
                                Divider()
                                
                                VStack{
                                    TextField("Email", text: $email)
                                        .padding()
                                        .frame(width: 355, height: 50)
                                        .background(Color.gray.opacity(0.1))
                                        .cornerRadius(10)
                                        .keyboardType(.emailAddress)
                                        .autocapitalization(.none)
                                }
                                
                                VStack{
                                    SecureField("Password", text: $password)
                                        .padding()
                                        .frame(width: 355, height: 50)
                                        .background(Color.gray.opacity(0.1))
                                        .cornerRadius(10)
                                }
                                
                                VStack{
                                    Text("Ti invieremo un'email all'indirizzo da te inserito per verificare il tuo account.")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 92)
                                        .font(.system(size: 15))
                                }
                                
                                if !loginError.isEmpty {
                                    Text(loginError)
                                        .foregroundColor(loginMessageColor)
                                        .padding(.top, 10)
                                    
                                }
                                
                                VStack{
                                    Button(action: login) {
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.red)
                                                .frame(width: 355, height: 60)
                                                .cornerRadius(10)
                                                .padding(.top, 30)
                                                .padding(.horizontal)
                                            
                                            Text("Entra")
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .font(.system(size: 23))
                                                .padding(.top, 27)
                                        }
                                    }
                                }
                                
                                Divider()
                                
                                VStack{
                                    Text("Oppure")
                                }
                                
                                VStack{
                                    Button(action: {}){
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 355, height: 45)
                                                .cornerRadius(10)
                                                .padding(.top, 20)
                                                .padding(.horizontal)
                                                .shadow(color: .gray, radius: 20, x: 0, y: 20)
                                            
                                            Image(systemName: "iphone.gen1")
                                                .foregroundColor(.black)
                                                .font(.system(size: 25))
                                                .padding(.trailing, 290)
                                                .padding(.top, 20)
                                            
                                            Text("Continua con cellulare")
                                                .padding(.top, 20)
                                                .padding(.trailing, 8)
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                                
                                VStack{
                                    Button(action: {}){
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 355, height: 45)
                                                .cornerRadius(10)
                                                .padding(.top, 20)
                                                .padding(.horizontal)
                                                .shadow(color: .gray, radius: 20, x: 0, y: 20)
                                            
                                            Image("applelogo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height: 23)
                                                .padding(.top, 20)
                                                .padding(.trailing, 290)
                                            
                                            Text("Continua con Apple")
                                                .padding(.top, 20)
                                                .padding(.trailing, 8)
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                                
                                VStack{
                                    Button(action: {}){
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 355, height: 45)
                                                .cornerRadius(10)
                                                .padding(.top, 20)
                                                .padding(.horizontal)
                                                .shadow(color: .gray, radius: 20, x: 0, y: 20)
                                            
                                            Image("googlelogo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height: 23)
                                                .padding(.top, 18)
                                                .padding(.trailing, 290)
                                            
                                            Text("Continua con Google")
                                                .padding(.top, 18)
                                                .padding(.trailing, 8)
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                                
                                VStack{
                                    Button(action: {}){
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 355, height: 45)
                                                .cornerRadius(10)
                                                .padding(.top, 20)
                                                .padding(.horizontal)
                                                .shadow(color: .gray, radius: 20, x: 0, y: 20)
                                            
                                            Image("facebooklogo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height: 23)
                                                .padding(.top, 21)
                                                .padding(.trailing, 290)
                                            
                                            Text("Continua con Facebook")
                                                .padding(.top, 21)
                                                .padding(.trailing, 8)
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                            }
                            .navigationTitle("Accedi o Registrati")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarItems(leading: Button(action: {
                                isOpen = false
                            }) {
                                Image(systemName: "xmark")
                                    .foregroundColor(.black)
                                    .background(Circle().fill(Color.white))
                                    .font(.system(size: 12, weight: .semibold))
                            })
                        }
                    }
                    Button(action: {})
                    {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 355, height: 130)
                                .cornerRadius(15)
                                .shadow(color: .gray, radius: 20, x: 0, y: 20)
                            
                            ZStack{
                                Text("Affitta con Airbnb")
                                    .foregroundColor(.black)
                                    .fontWeight(.regular)
                                    .font(.system(size: 20))
                                    .padding(.bottom, 57)
                                    .padding(.trailing, 150)
                                
                                HStack{
                                    Text("Creare un annuncio e iniziare a guadagnare è semplicissimo.")
                                        .foregroundColor(.gray)
                                        .padding(.top, 30)
                                        .padding(.trailing, 180)
                                        .padding(.leading, 30)
                                        .font(.system(size: 15))
                                }
                                
                                Image("housebnb")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 130)
                                    .padding(.top, 10)
                                    .padding(.leading, 180)
                            }
                        }
                    }
                    HStack{
                        Button(action: {})
                        {
                            Image(systemName: "gearshape")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                                .padding(.top, 40)
                            Text("Impostazioni")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                                .padding(.leading, 1)
                                .padding(.top, 40)
                                .padding(.trailing, 200)
                        }
                    }
                    Divider()
                    HStack{
                        Button(action: {})
                        {
                            Image(systemName: "person")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                                .padding(.top, 5)
                            Text("Accessibilità")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                                .padding(.leading, 1)
                                .padding(.top, 5)
                                .padding(.trailing, 200)
                        }
                    }
                    Divider()
                    HStack{
                        Button(action: {})
                        {
                            Image(systemName: "questionmark.circle")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                                .padding(.top, 5)
                            Text("Ricevi Assistenza")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                                .padding(.leading, 1)
                                .padding(.top, 5)
                                .padding(.trailing, 157)
                        }
                    }
                    Divider()
                    HStack{
                        Button(action: {})
                        {
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                                .font(.system(size: 25))
                                .padding(.top, 5)
                            Text("Strumenti di terze parti")
                                .foregroundColor(.gray)
                                .font(.system(size: 20))
                                .padding(.leading, 1)
                                .padding(.top, 5)
                                .padding(.trailing, 107)
                        }
                    }
                }
                .navigationTitle("Profilo")
                
            }
            
            .onAppear {
                loadUsers()
            }
        }
    }
    
    func loadUsers() {
        if let url = Bundle.main.url(forResource: "users", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                users = try decoder.decode([User].self, from: data)
            } catch {
                print("Caricamento utenti fallito: \(error.localizedDescription)")
            }
        } else {
            print("users.json file non trovato")
        }
    }
    
    func login() {
        if let user = users.first(where: { $0.email == email && $0.password == password }) {
            loginError = "Benvenuto \(user.email)"
            loginMessageColor = .green
           
        } else {
            loginError = "Password o email errati"
            loginMessageColor = .red
            
        }
    }
}

struct AccediCostructorView_Previews: PreviewProvider {
    static var previews: some View {
        AccediCostructorView()
    }
}

