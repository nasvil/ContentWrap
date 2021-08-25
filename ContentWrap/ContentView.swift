//
//  ContentView.swift
//  ContentWrap
//
//  Created by Zack on 25/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Rectangle()
                    .background(Color.gray)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                HStack {
                    Spacer()
                    VStack(alignment:.trailing) {
                        Spacer()
                        Payments()
                            .frame(width: geo.size.width * 0.6, alignment: .center)
                            .frame(minHeight: 0)
                    }
                }
            }
        }
    }
}

struct Payments: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: geo.size.width)
                        .aspectRatio(6.00, contentMode: .fit)
                    
                    Text("HEADER")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                }
                
                VStack {
                    ForEach((0 ..< 4)) { _ in
                        CellPayment()
                            .frame(width: geo.size.width, height: geo.size.height * 0.05, alignment: .center)
                    }
                }
                
                ZStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: 7, style: .continuous)
                        .fill(Color.gray)
                        .frame(width: geo.size.width * 0.7)
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.5)
                        .aspectRatio(4.0, contentMode: .fit)
                    Text("SUBMIT")
                        .font(.system(size: 28))
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.5)
                        .foregroundColor(.white)
                }
                .frame(width: geo.size.width)
                .aspectRatio(6.00, contentMode: .fit)
            }
        }
        .background(Color.blue)
    }
}

struct CellPayment: View {
    var body: some View {
        GeometryReader { geo in
        HStack {
            GeometryReader { g1 in
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                    
                    Image("korea")
                        .resizable()
                        .frame(height: g1.size.height * 0.75)
                        .aspectRatio(166/99, contentMode: .fit)
                }
            }
            
            Text("Republic of Korea")
                .font(.system(size: 20))
                .foregroundColor(.red)
                .lineLimit(1)
                .frame(width: geo.size.width * 0.65, alignment: .leading)
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
