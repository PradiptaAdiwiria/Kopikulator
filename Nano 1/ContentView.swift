//
//  ContentView.swift
//  Nano 1
//
//  Created by Pradipta Adiwiria on 26/04/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NewUI()
        }
    }

struct NewUI: View {

    var portion = ["1", "2", "3","4","5","6","7","8","9","10"]
    @State var Portion = "2"
    
    @State var Coffee = 0
    @State var Water = 0
    @State var Size = ""
    @State var Temp = 0
    
    var ratio = ["10", "11", "12", "13","14","15","16","17","18","19","20"]
    @State var Ratio = "15"
    
    var body: some View {
        
        ZStack{
            
            Image("texture")
                .resizable()
                .ignoresSafeArea(.all)
            
            ScrollView{
                
                VStack{
                    HStack{
                        VStack{
                            Text("Date: ")
                                .font(.caption2)
                                .foregroundColor(Color.gray)
                            
                            Text("Note: ")
                                .font(.caption2)
                                .foregroundColor(Color.gray)
                        }
                       
                        Spacer()
                        
                        Button(action: {print("share")}, label: {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(Color.gray)
                                .padding()
                        })
                    }
                    
                    Text("4 : 6 Coffee Ingredient")
                        .font(.custom("GloriaHallelujah", size: 22))
                        .padding(.vertical, 1)
                    
                    HStack (spacing: 10){
                        Text("Total Portion :")
                            .font(.custom("GloriaHallelujah", size: 17))
                        
                        HStack (spacing: 1){
                                
                            ZStack {
                                
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .opacity(0.1)
                                
                            Text("\(Portion)")
                                .font(.custom("GloriaHallelujah", size: 17))
                            
                            Picker("Pilih ratio air", selection: $Portion) {
                                ForEach(portion, id: \.self) {
                                    Text($0)
                                }
                            }
                            .accentColor(.black)
                            .opacity(0.02)
                        }
                            
                            Image(systemName: "chevron.up.chevron.down")
                                .resizable()
                                .frame(width: 8, height: 10)
                    }
                    
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack (spacing: 10){
                        
                        Text("Water Ratio : ")
                            .font(.custom("GloriaHallelujah", size: 17))
                        
                        HStack (spacing: 1){
                            
                            Text("1 /")
                                .font(.custom("GloriaHallelujah", size: 17))
                                
                            ZStack {
                                
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .opacity(0.1)
                                
                            Text("\(Ratio)")
                                .font(.custom("GloriaHallelujah", size: 17))
                            
                            Picker("Pilih ratio air", selection: $Ratio) {
                                ForEach(ratio, id: \.self) {
                                    Text($0)
                                }
                            }
                            .accentColor(.black)
                            .opacity(0.02)
                        }
                            
                            Image(systemName: "chevron.up.chevron.down")
                                .resizable()
                                .frame(width: 8, height: 10)
                    }

                    Spacer()
                    }
                        .padding(.horizontal)
                    
                    Button {
                        guard let Portion = Int(Portion), let Ratio = Int(Ratio) else {
                            return
                        }
                        Water = Portion * 200
                        Coffee = Water / Ratio
                        Temp = 92
                        Size = (String("Coarse"))
                        print("Calculate")
                    }label: {
                        Image(systemName: "cup.and.saucer.fill").resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 21)
                        Text ("BREW!")
                    }
                        .font(.custom("GloriaHallelujah", size: 22))
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                        .background(Color.brown.opacity(1))
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                    
                    HStack{
                    
                        Spacer()
                        
                        Button {
                            print("Beans")
                        }label: {
                            VStack (spacing: 10){
                               HStack{
                                   Image("beans")
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(height: 27)
                                       .foregroundColor(Color.white)
                                   
                                   Text("Beans")
                                       .font(.custom("GloriaHallelujah", size: 25))
                               }
                               
                               Text("\(Coffee) gr")
                                   .font(.custom("GloriaHallelujah", size: 30))
                                   .padding(.top, -10)
                               
                           }
                            .frame(width: 140, height: 140)
                            .background(Color.clear)
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.brown, style: StrokeStyle(lineWidth: 2, dash: [10]))
                                        )

                        }
                            .foregroundColor(Color.black)
                        
                        Button {
                            print("Water")
                        }label: {
                            VStack (spacing: 10){
                               HStack{
                                   Image("pot")
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(height: 27)
                                       .foregroundColor(Color.white)
                                   
                                   Text("Water")
                                       .font(.custom("GloriaHallelujah", size: 25))
                               }
                               
                               Text("\(Water) ml")
                                   .font(.custom("GloriaHallelujah", size: 30))
                                   .padding(.top, -10)
                               
                           }
                            .frame(width: 140, height: 140)
                            .background(Color.clear)
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.brown, style: StrokeStyle(lineWidth: 2, dash: [10]))
                                        )

                        }
                            .foregroundColor(Color.black)
                        
                        Spacer()
                    }
                    
                    HStack{
                    
                        Spacer()
                        
                        Button {
                            print("Size")
                        }label: {
                            VStack (spacing: 10){
                               HStack{
                                   Image("grinder")
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(height: 27)
                                       .foregroundColor(Color.white)
                                   
                                   Text("Size")
                                       .font(.custom("GloriaHallelujah", size: 25))
                               }
                               
                               Text("\(Size) ")
                                   .font(.custom("GloriaHallelujah", size: 30))
                                   .padding(.top, -10)
                               
                           }
                            .frame(width: 140, height: 140)
                            .background(Color.clear)
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.brown, style: StrokeStyle(lineWidth: 2, dash: [10]))
                                        )

                        }
                            .foregroundColor(Color.black)
                        
                        Button {
                            print("Temp")
                        }label: {
                            VStack (spacing: 10){
                               HStack{
                                   Image("temper")
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(height: 27)
                                       .foregroundColor(Color.white)
                                   
                                   Text("Temp")
                                       .font(.custom("GloriaHallelujah", size: 25))
                               }
                               
                               Text("\(Temp)°C")
                                   .font(.custom("GloriaHallelujah", size: 30))
                                   .padding(.top, -10)
                               
                           }
                            .frame(width: 140, height: 140)
                            .background(Color.clear)
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.brown, style: StrokeStyle(lineWidth: 2, dash: [10]))
                                        )

                        }
                            .foregroundColor(Color.black)
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                }.padding(.horizontal, 30)
            }
        }.background(Color.brown)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FormUI: View {
    
    @State private var Portion = "2"
    var portion = ["1", "2", "3","4","5","6","7","8","9","10"]
   
    
    @State var Coffee = 0
    @State var Water = 0
    @State var Size = ""
    @State var Temp = 0
    
    var ratio = ["10", "11", "12", "13","14","15","16","17","18","19","20"]
    @State var Ratio = "15"
    
    var body: some View {
        
        NavigationView{
            VStack{
                Form{
                    Section("Input"){
                        Picker("Portion", selection: $Portion) {
                            ForEach(portion, id: \.self) {
                                Text($0)
                            }
                        }
                        
                        Picker("Ratio", selection: $Ratio) {
                            ForEach(ratio, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    
                    Section("Result"){
                        
                        HStack{
//                            Text("Beans").font(.)
                            Spacer()
                            Text("\(Coffee) gr")
                        }
                    }
                }.navigationBarTitle(Text("Coffee Ingredients"))
                
                Button {
                    print("Calculate")
                    
                    guard let Portion = Int(Portion), let Ratio = Int(Ratio) else {
                        return
                    }
                    Water = Portion * 200
                    Coffee = Water / Ratio
                    Temp = 92
                    Size = (String("Coarse"))
                    print("Calculate")
                }label: {
                    Image(systemName: "cup.and.saucer.fill").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 21)
                    Text ("BREW!")
                }
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.brown)
                    .cornerRadius(10)
            }
                
        }
    }
}

struct Cal: View {

    @State var Portion: String = ""
    @State var Coffee = 0
    @State var Water = 0
    @State var Size = ""
    @State var Temp = 0
    
    var ratio = ["10", "11", "12", "13","14","15","16","17","18","19","20"]
    @State var Ratio = "15"
    
    init(){
            UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        VStack{
            
                    VStack (spacing: 15){
                    Text("I want to make").bold().foregroundColor(Color.brown)
                    
                    TextField("cups", text: $Portion)
                        .onChange(of: Portion, perform: { newValue in
                            let filtered = newValue.filter { $0.isNumber }

                            if newValue != filtered {
                                Portion = filtered
                            }
                        })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .foregroundColor(Color.black)
                        .accentColor(Color.brown)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.brown, lineWidth: 2))
                        .padding(.horizontal, 99)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                    
                    Text("of coffee with ratio of").bold().foregroundColor(Color.brown)
                    
                    HStack{
                        Text("1").font(.system(size: 15))
                            .foregroundColor(Color.brown)
                        
                        Text(":").font(.system(size: 15))
                            .foregroundColor(Color.brown)
                        
                        Picker("Please choose a ratio", selection: $Ratio) {
                            ForEach(ratio, id: \.self) {
                                Text($0)
                            }
                        }.accentColor(.black)
                            .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.brown, lineWidth: 2))
                        }
                    }.padding(.all, 20)
            
            
            
            Button("Calculate", action: {
                guard let Portion = Int(Portion), let Ratio = Int(Ratio) else {
                    return
                }
                Water = Portion * 200
                Coffee = Water / Ratio
                Temp = 92
                Size = (String("Coarse"))
                print("Calculate")
                
            })
                .padding()
                .background(Color.brown)
                .cornerRadius(5)
                .foregroundColor(Color.white)
                
//                        RESEP
                        Form{
                            VStack{
                                
                                HStack{
                                    Image (systemName: "cup.and.saucer.fill")
                                    Text("Recipe")
                                        .bold()
                                }
                                .frame(maxWidth: .infinity)
                                .font(.system(size: 27))
                                .foregroundColor(Color.white)
                              
                                
                                HStack (spacing: 50) {
                                    VStack{
                                        HStack{
                                        Text("Coffee")
                                                .bold()
                                                .foregroundColor(Color.white)
                                        
                                            HStack{
                                                Text(String(Coffee))
                                                Text("gr")
                                                }
                                                .padding(6)
                                                .background(Color.white)
                                                .cornerRadius(4)
                                                .foregroundColor(Color.brown)
                                        }
                                        
                                        HStack{
                                        Text("Size")
                                                .bold()
                                                .foregroundColor(Color.white)
                                        
                                            HStack{
                                                Text(String(Size))
                                                }
                                                .padding(6)
                                                .background(Color.white)
                                                .cornerRadius(4)
                                                .foregroundColor(Color.brown)
                                        }
                                    }
                                    
                                    VStack{
                                        HStack{
                                            Text("Water")
                                                .bold()
                                                .foregroundColor(Color.white)
                                        
                                            HStack{
                                                Text(String(Water))
                                                Text("ml")
                                                }
                                                .padding(6)
                                                .background(Color.white)
                                                .cornerRadius(4)
                                                .foregroundColor(Color.brown)
                                        }
                                        
                                        HStack{
                                            Text("Temp")
                                                .bold()
                                                .foregroundColor(Color.white)
                                        
                                            HStack{
                                                Text(String(Temp))
                                                Text("°C")
                                                }
                                                .padding(6)
                                                .background(Color.white)
                                                .cornerRadius(4)
                                                .foregroundColor(Color.brown)
                                        }
                                    }
                       
                                }.frame(maxWidth: .infinity)
                                
                                
                            }
                            
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .listRowBackground(Color.brown)
                            
                        }
            }
        
    }
}

//Line()
////                    .stroke(Color.white,style: StrokeStyle(lineWidth: 1, lineCap: .butt, lineJoin: .miter))
////                    .padding()

struct Line: Shape{
    func path(in rect: CGRect) -> Path {
        
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            
        }
    }
    
}
//TextField("jumlah", text: $Portion)
//                    .onChange(of: Portion, perform: {newValue in
//                        let filtered = newValue.filter { $0.isNumber }
//
//                        if newValue != filtered {
//                            Portion = filtered
//                        }
//                    })
//
//                    .textFieldStyle(.plain)
//                    .foregroundColor(Color.black)
//                    .font(.custom("GloriaHallelujah", size: 17))
//                    .multilineTextAlignment(.leading)
//                    .keyboardType(.decimalPad)

//                    VStack(spacing: 5){
//                        HStack{
//                            HStack{
//                                Text("Beans :")
//                                    .font(.custom("GloriaHallelujah", size: 17))
//
//                                Text("\(Coffee) gr")
//                                    .font(.custom("GloriaHallelujah", size: 17))
//
//                                Spacer()
//                            }
//
//                            Spacer()
//
//                            HStack{
//                                Text("Size :")
//                                    .font(.custom("GloriaHallelujah", size: 17))
//
//                                HStack{
//                                    Text(String(Size))
//                                    }.font(.custom("GloriaHallelujah", size: 17))
//
//                                Spacer()
//                            }
//
//                        }.padding(.horizontal)
//
//                        HStack{
//                            HStack{
//                                Text("Water :")
//                                    .bold()
//                                    .font(.custom("GloriaHallelujah", size: 17))
//
//                                Text("\(Water) ml")
//                                    .font(.custom("GloriaHallelujah", size: 17))
//
//                                Spacer()
//                            }
//
//                            Spacer()
//
//                            HStack{
//                                Text("Temp :")
//                                    .bold()
//                                    .font(.custom("GloriaHallelujah", size: 17))
//
//                                Text("\(Temp) °C")
//                                    .font(.custom("GloriaHallelujah", size: 17))
//
//                                Spacer()
//                            }
//
//                        }.padding(.horizontal)
//
//                    }
//                    .padding(.horizontal, 5)
//                    .padding(.vertical, 5)
//                    .overlay(
//                                RoundedRectangle(cornerRadius: 13)
//                                    .stroke(Color.black, style: StrokeStyle(lineWidth: 1, dash: [15]))
//                                )


//HStack{
//
//    Spacer()
//
//    VStack{
//
//        HStack{
//
//            Image("beans")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(height: 20)
//
//            Text("Beans :")
//                .font(.custom("GloriaHallelujah", size: 17))
//
//            Text("\(Coffee) gr")
//                .font(.custom("GloriaHallelujah", size: 17))
//        }.padding(.vertical, -5)
//
//        HStack{
//
//            Image("pot")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(height: 20)
//
//            Text("Water :")
//                .bold()
//                .font(.custom("GloriaHallelujah", size: 17))
//
//            Text("\(Water) ml")
//                .font(.custom("GloriaHallelujah", size: 17))
//        }.padding(.vertical, -5)
//
//        HStack{
//
//            Image("temper")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(height: 20)
//
//            Text("Temp :")
//                .bold()
//                .font(.custom("GloriaHallelujah", size: 17))
//
//            Text("\(Temp) °C")
//                .font(.custom("GloriaHallelujah", size: 17))
//        }.padding(.vertical, -5)
//
//        HStack{
//
//            Image("grinder")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(height: 20)
//
//            Text("Size :")
//                .font(.custom("GloriaHallelujah", size: 17))
//
//            HStack{
//                Text(String(Size))
//                }.font(.custom("GloriaHallelujah", size: 17))
//        }.padding(.vertical, -5)
//    }
//
//    Spacer()
//}
//.padding(.horizontal, 5)
//.padding(.vertical, 5)
//.overlay(
//            RoundedRectangle(cornerRadius: 13)
//                .stroke(Color.black, style: StrokeStyle(lineWidth: 1, dash: [15]))
//            )
