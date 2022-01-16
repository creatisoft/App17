//
//  ContentView.swift
//  App17
//
//  Created by Christopher on 1/16/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 41.883718,
                                           longitude: -87.632382),
            latitudinalMeters: 750,
            longitudinalMeters: 750
    )
    
    var body: some View {
    
        VStack {
            
            Map(coordinateRegion: $region)
            
            
            HStack{

                Button(action: ApplePark) {
                    Text("Apple")
                }
                .padding(.all)
                
                Button(action: MSoft) {
                    Text("Microsoft")
                }
                .padding(.all)
                Button(action: GoogleSite) {
                    Text("Google")
                }
                .padding(.all)
                
            }
            
        }
        
    }
    
    func MSoft(){
        
         region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 47.646495, longitude: -122.138974),
                    latitudinalMeters: 750,
                    longitudinalMeters: 750
        )
        
    }
    
    
    func ApplePark(){
        
         region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 37.334_900, longitude: -122.009_020),
                    latitudinalMeters: 750,
                    longitudinalMeters: 750
        )
        
    }
    
    
    func GoogleSite(){
        
         region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 37.422338, longitude: -122.084370),
                    latitudinalMeters: 750,
                    longitudinalMeters: 750
        )
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
