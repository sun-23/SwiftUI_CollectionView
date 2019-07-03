//
//  ContentView.swift
//  SwiftUI_CollectionView
//
//  Created by sun on 3/7/2562 BE.
//  Copyright © 2562 sun. All rights reserved.
//

import SwiftUI

struct Box {
    
    var id : Int
    let title, imageUrl : String
    
    
}

struct ContentView : View {
    
    let boxs:[Box] = [
        Box(id: 0, title: "stmarylake", imageUrl: "stmarylake"),
        Box(id: 1, title: "lakemcdonald", imageUrl: "lakemcdonald"),
        Box(id: 2, title: "turtlerock", imageUrl: "turtlerock"),
        Box(id: 3, title: "chilkoottrail", imageUrl: "chilkoottrail"),
        Box(id: 4, title: "yukon_charleyrivers", imageUrl: "yukon_charleyrivers")
    ]
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                HStack {
                    
                    ForEach(boxs.identified(by: \.id)) { box in
                        
                        BoxView(Box: box)
                        
                    }
                    
                }
            }.navigationBarTitle(Text("Landmark"))
           
            
        }
    }
}

struct BoxView: View {
    
    let Box:Box
    
    var body: some View {
        
        VStack {
            Image(Box.imageUrl)
                .resizable()
                .frame(width:80 , height:80 )
                .cornerRadius(12)
            Text(Box.title)
                .font(.subheadline)
                .fontWeight(.bold)
        }
        
    }
    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
