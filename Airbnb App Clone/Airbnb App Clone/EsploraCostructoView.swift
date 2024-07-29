//
//  ContentView.swift
//  Airbnb App Clone
//
//  Created by Edoardo Martino on 26/07/24.
//

import SwiftUI

struct EsploraCostructoView: View {
    
    @State private var onclick: Bool = false
    @State private var selectTab: String = "Soggiorni"
    @State private var searchText: String = ""
    
   
    
    var body: some View {
        
            ZStack{
                
                Color.white.ignoresSafeArea()
                
                VStack{
                    Button(action: {
                            onclick = true
                    }){
                        ZStack{
                            
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 350, height: 60)
                                .cornerRadius(90)
                                .shadow(color: .gray, radius: 20, x: 0, y: 20)
                            
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 25, weight: .semibold))
                                .foregroundColor(.black)
                                .padding(.trailing, 290)
                            
                            Text("Dove si va?")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .padding(.trailing, 150)
                        }
                    }
                    
                    //foglio sheet appare quando si tocca "Dove si va?"
                    .sheet(isPresented: $onclick){
                        
                        
                        VStack(alignment: .leading, spacing: 10, content: {
                            HStack{
                                Spacer()
                                Button(action: {
                                    onclick = false
                                }) {
                                    //x per chiudere sheet
                                    Image(systemName: "xmark")
                                        .foregroundColor(.black)
                                        .font(.system(size: 12, weight: .bold))
                                        .padding(10)
                                        .background(Circle().fill(Color.white))
                                        .overlay(
                                            Circle()
                                                .stroke(Color.gray, lineWidth: 1)
                                        )
                                        
                                }
                                .padding(.top, 35)
                                .padding(.leading, 16)
                                .position(x: 20, y: 20)
                               
                            }
                            
                            HStack{
                                
                                //soggiorni
                                
                                Button(action: {
                                    selectTab = "Soggiorni"
                                }) {
                                    Text("Soggiorni")
                                        .fontWeight(selectTab == "Soggiorni" ? .semibold : .regular)
                                        .foregroundColor(.black)
                                        .underline(selectTab == "Soggiorni", color: .black)
                                        .padding(.horizontal)
                                }
                                
                                //esperienze
                                
                                Button(action: {
                                    selectTab = "Esperienze"
                                }) {
                                    Text("Esperienze")
                                        .fontWeight(selectTab == "Esperienze" ? .semibold : .regular)
                                        .foregroundColor(.black)
                                        .underline(selectTab == "Esperienze", color: .black)
                                        .padding(.horizontal)
                                }
                            }
                            .padding(.bottom, 25)
                            .padding(.leading, 80)
                            
                            ZStack{
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 370, height: 320)
                                    .cornerRadius(30)
                                    .shadow(color: .gray, radius: 20, x: 0, y: 20)
                                
                                Text("Dove si va?")
                                    .fontWeight(.bold)
                                    .font(.system(size: 30))
                                    .padding(.trailing, 160)
                                    .padding(.bottom, 240)
                                
                                ZStack{
                                    Button(action: {
                                        
                                    }){
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.white)
                                            .frame(width: 320, height: 60)
                                            
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1)
                                            )
                                    }
                                    .padding(.bottom, 90)
                                    
                                    HStack{
                                        Image(systemName: "magnifyingglass")
                                            .padding(.trailing, 10)
                                            .padding(.bottom, 88)
                                            .padding(.leading, 55)
                                
                                            .font(.system(size: 17, weight: .semibold))
                                        
                                        Section{
                                            TextField("Cerca destinazioni", text: $searchText)
                                                .padding(.bottom, 88)
                                        }
                                    }
                                    
                                }
                            }
                            .padding(.bottom, 22)
                            .padding(.leading, 10)
                            
                            ZStack{
                                
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 370, height: 60)
                                    .cornerRadius(15)
                                    .shadow(color: .gray, radius: 20, x: 0, y: 20)
                                Text("Quando")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 250)
                                
                                Text("Una settimana")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .padding(.leading, 200)
                                
                            }
                            .padding(.bottom, 23)
                            .padding(.leading, 15)
                            
                            ZStack{
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 370, height: 60)
                                    .cornerRadius(15)
                                    .shadow(color: .gray, radius: 20, x: 0, y: 20)
                                Text("Chi")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 285)
                                
                                Text("Aggiungi ospiti")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .padding(.leading, 206)
                                
                            }
                            .padding(.bottom, 75)
                            .padding(.leading, 15)
                            
                            ZStack{
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 400, height: 200)
                                    .shadow(color: .gray, radius: 20, x: 0, y: 20)
                            }
                            //sposta la scritta
                            .padding(.bottom, -225)
                            
                            HStack {
                                ZStack{
                                    Button(action: {
                                        searchText = ""
                                    }) {
                                        Text("Cancella tutto")
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                            .underline(color: .black)
                                            .padding(.horizontal, 5)
                                            .padding(.bottom, 25)
                                    }
                                }
                                
                                Spacer()
                                
                                ZStack {
                                    Button(action: {
                                        // Azione per il pulsante "Cerca"
                                    }) {
                                        HStack {
                                            Image(systemName: "magnifyingglass")
                                            Text("Cerca")
                                                .fontWeight(.semibold)
                                        }
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.red)
                                        .cornerRadius(10)
                                    }
                                    .padding(.horizontal, -5)
                                    .padding(.bottom, 20)
                                }
                            }
                            .padding(.horizontal, 16)
                            
                            //fine sheet
                        })
                    }
                    
                    Spacer()
                    
                    Carosello()
                }
                
            }
        }
    }

struct Carosello: View{
    @State private var onclick: Bool = false
    
    var body: some View{
        ScrollView{
            Button(action: {
                onclick = true
            }){
                VStack{
                    Image("img1")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .clipped()
                        .cornerRadius(15)
                        .padding(.horizontal)
                    Text("Benvenuti negli anni '80")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding(.trailing, 175)
                    Text("Host: Edoardo")
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                        .padding(.trailing, 253)
                    Text("59€ per ospite")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding(.trailing, 250)
                        
                }
                .padding(.top, 30)
            }
            
            .sheet(isPresented: $onclick){
                
                VStack(alignment: .leading, spacing: 10, content: {
                    
                    HStack{
                        Spacer()
                        Button(action: {
                            onclick = false
                        }) {
                            //x per chiudere sheet
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                                .font(.system(size: 12, weight: .bold))
                                .padding(10)
                                .background(Circle().fill(Color.white))
                                .overlay(
                                    Circle()
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                            
                        }
                        .padding(.top, 20)
                        .padding(.leading, 16)
                        .position(x: 20, y: 20)
                    }
                
                    
                    VStack{
                        Image("img1")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 270)
                            .clipped()
                            .padding(.leading, 20)
                            .padding(.trailing, 10)
                            .padding(.top, 10)
                        Text("Benvenuti negli anni '80")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .font(.system(size: 25))
                            .padding(.trailing, 77)
                        
                            Divider()
                        
                        Text("Una strepitosa esperienza anni '80,")
                        Text("con il miglior amico dell'uomo:")
                        Text("il divano!")
                            
                        
                            
                    }
                    
                    .padding(.bottom, 200)
                    
                    ZStack{
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 400, height: 200)
                            .shadow(color: .gray, radius: 20, x: 0, y: 20)
                    }
                    //sposta la scritta
                    .padding(.bottom, -250)

                    
                    HStack {
                        
                        Spacer()
                        
                        ZStack {
                            Button(action: {
                                // Azione per il pulsante "Cerca"
                            }) {
                                HStack {
                                    Text("Richiedi")
                                        .fontWeight(.semibold)
                                }
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(10)
                            }
                            .padding(.leading, 250)
                            .padding(.bottom, 20)
                            
                            Text("Host: Edoardo")
                                .foregroundColor(.gray)
                                .fontWeight(.semibold)
                                .padding(.trailing, 230)
                                .padding(.bottom, 50)
                            Text("59€ per ospite")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .padding(.trailing, 230)
                        }
                    }
                    .padding(.horizontal, 17)
                    
                }
                       
            )}
            //fine sheet
            
            VStack{
                Image("img2")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                    .cornerRadius(15)
                    .padding(.horizontal)
                Text("Pranzo inglese")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding(.trailing, 248)
                Text("Host: Jacopo")
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.trailing, 260)
                Text("36€ per ospite")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding(.trailing, 250)
                    
            }
            .padding(.top, 30)
            
            VStack{
                Image("img3")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                    .cornerRadius(15)
                    .padding(.horizontal)
                Text("Calice di vino e bella vista")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding(.trailing, 165)
                Text("Host: Mina")
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.trailing, 280)
                Text("45€ per ospite")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding(.trailing, 250)
                    
            }
            .padding(.top, 30)
            
            VStack{
                Image("img4")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                    .cornerRadius(15)
                    .padding(.horizontal)
                Text("Bella la vita da single")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding(.trailing, 200)
                Text("Host: Sebastiano")
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.trailing, 230)
                Text("120€ per ospite")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding(.trailing, 245)
                    
            }
            .padding(.top, 30)
        }
    }
}



struct EsploraCostructoView_Previews: PreviewProvider {
    static var previews: some View {
        EsploraCostructoView()
    }
}
