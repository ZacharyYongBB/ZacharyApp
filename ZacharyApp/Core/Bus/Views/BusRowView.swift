//
//  BusRowView.swift
//  ZacharyApp
//
//  Created by Zachary on 31/12/22.
//

import SwiftUI

struct BusRowView: View {
    
    let bus: BusModel
    
    var body: some View {
        Text(bus.busStopCode)
    }
}

struct BusRowView_Previews: PreviewProvider {
    static var previews: some View {
        BusRowView(bus: dev.bus)
    }
}
