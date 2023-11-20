//
//  SwiftUIButton.swift
//  reactnativeuikitexample
//
//  Created by Brandon Austin on 11/19/23.
//

import SwiftUI
import ExpoModulesCore

struct SwiftUIButton: View {
    var body: some View {
        Button("Click Me", action: {
            print("Button was tapped")
        })
    }
}

// This would be the UIView that wraps your SwiftUI view
public class SwiftUIButtonWrapper: UIView {
    private var hostingController: UIHostingController<SwiftUIButton>?

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.hostingController = UIHostingController(rootView: SwiftUIButton())
        if let host = self.hostingController {
            self.addSubview(host.view)
            host.view.frame = self.bounds
            host.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
