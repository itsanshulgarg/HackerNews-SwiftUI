//
//  DetailView.swift
//  Hacker News
//
//  Created by Anshul Garg on 05/07/20.
//  Copyright © 2020 Anshul Garg. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

