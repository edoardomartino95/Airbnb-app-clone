//
//  TabCostructorView.swift
//  Airbnb App Clone
//
//  Created by Edoardo Martino on 26/07/24.
//

import SwiftUI

struct TabCostructorView: View {
    
    @State private var selectedTab: Int = 0
    
    var body: some View {
        
       TabView(selection: $selectedTab) {
           
           
           EsploraCostructoView()
           .tabItem {
               Image(systemName: "magnifyingglass")
               Text("Esplora")
           }
           .tag(0)
           
           PreferitiCostructorView()
           .tabItem {
               Image(systemName: "heart")
               Text("Preferiti")
           }
           .tag(1)
           
           ViaggiCostructorView()
           .tabItem {
               Image(systemName: "airplane")
               Text("Viaggi")
           }
           .tag(2)
           
           PostaCostructorView()
           .tabItem {
               Image(systemName: "bubble.left")
               Text("Posta")
           }
           .tag(3)
           
           AccediCostructorView()
           .tabItem {
               Image(systemName: "person")
               Text("Accedi")
           }
           .tag(4)
           
        }
        
       .accentColor(.red)
       .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabCostructorView_Previews: PreviewProvider {
    static var previews: some View {
        TabCostructorView()
    }
}
