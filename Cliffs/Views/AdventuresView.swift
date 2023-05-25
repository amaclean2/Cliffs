//
//  AdventuresView.swift
//  Cliffs
//
//  Created by Andrew Maclean on 5/17/23.
//

import SwiftUI

struct AdventuresView: View {
    var body: some View {
        NavigationView {
            Text("Adventures")
                .bold()
                .font(.title)
            Spacer()
        }
    }
}

struct AdventuresView_Previews: PreviewProvider {
    static var previews: some View {
        AdventuresView()
    }
}
