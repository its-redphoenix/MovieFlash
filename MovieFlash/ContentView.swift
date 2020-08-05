//
//  ContentView.swift
//  MovieFlash
//
//  Created by Mayur on 04/08/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
           
            
            
                
            
            ScrollView (.horizontal, showsIndicators: false)  {
                HStack (alignment: .center, spacing: 0) {
                    ForEach(movieData) { item in
                        GeometryReader { geometry in
                            PosterView(show: true, section: item)
                            
                           
                               
                                
                        }
                        .frame(width: 420, height: 900)
                        
                        
                           
                    }
                }
            }
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PosterView: View {
    
    @State var show : Bool
    @State var viewState = CGSize.zero
    
    
    var section: Section
    var body: some View {
        ZStack {
           
            
            section.bg_image
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                .opacity(show ? 0.4 : 0.2)
                .animation(.easeInOut(duration: 0.4))
                .offset(y: show ? 0 : 300)
                .animation(.spring())
                .blur(radius: show ? 0 : 4)
                .background(Color.black)
               
            
            
            
           
                VStack (alignment: .leading) {
    //                Text("Ford v Ferrari")
    //                    .font(.title)
    //                    .fontWeight(.bold)
    //                    .foregroundColor(.white)
    //                    .padding(.horizontal)
                    
                    ScrollView (.horizontal) {
                        HStack {
                            ForEach(movieData) { item in
                                HStack {
                                    section.trailer
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 300)
                                        .cornerRadius(30)
                                }
                                
                            }
                        }.padding(.vertical, 6)
                        .padding(.horizontal, 21)
                        
                       
                        
                    }
                    
                    
                            VStack {
                                Text("This is an amazing test. ths is This is an amazing test. ths isThis is an amazing test. ths isThis is an amazing test. ths isThis is an amazing test. ths isThis is an amazing test. ths is ")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                   
                               
                            }
                     
                    
                   
                   
                    
                 LCButton()
                    .frame(width: show ? 100 : 420)
                        
                } .offset(y: show ? 1000 : 260)
                .animation(.easeOut(duration: 0.6))
            
            
               
               
              
            
            VStack {
                section.poster
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: show ? 300 : 420, height: show ? 400 : 500)
                    
                   
                    .cornerRadius(30)
                    .offset(y: show ? 0 : -200)
                    .animation(.spring())
                   
                   
              
                    .shadow(color: section.color.opacity(show ? 0.6 : 0.2 ), radius: 30, x: 0, y: 24)
                  
                
                
                
            }
            
            .onTapGesture{
                show.toggle()
                
            }
        }.frame(width: 420, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
       
        
    }
}


struct Section: Identifiable {
    var id = UUID()
    var bg_image: Image
    var poster: Image
    var color: Color
    var trailer: Image
    
}

let movieData = [
    
    Section(bg_image: Image(uiImage: #imageLiteral(resourceName: "fvf_b")) , poster: Image(uiImage: #imageLiteral(resourceName: "fvf")), color: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), trailer: Image(uiImage: #imageLiteral(resourceName: "trailer"))),
    Section(bg_image: Image(uiImage: #imageLiteral(resourceName: "danc")) , poster: Image(uiImage: #imageLiteral(resourceName: "jok")), color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), trailer: Image(uiImage: #imageLiteral(resourceName: "joks")) ),
    Section(bg_image: Image(uiImage: #imageLiteral(resourceName: "bb_im")) , poster: Image(uiImage: #imageLiteral(resourceName: "bbys")), color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), trailer: Image(uiImage: #imageLiteral(resourceName: "bbo")))
   





]






