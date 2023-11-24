//
//  SwiftUIButton.swift
//  reactnativeuikitexample
//
//  Created by Brandon Austin on 11/19/23.
//

import ExpoModulesCore
import SwiftUI

struct SwiftUIButton: View {
    let color: UIColor
    
    var body: some View {
        if #available(iOS 15.0, *) {
            Button {
                print("Button pressed")
            } label: {
                Text("SwiftUI Button")
            }
            .buttonStyle(.borderedProminent)
            .frame(minWidth: 200, minHeight: 50)
            .tint(Color(color))
        } else {
            // Fallback for iOS versions below 15.0
            Button {
                print("Button pressed")
            } label: {
                Text("SwiftUI Button")
            }
            // Apply an alternative style or leave as default
        }
    }
}

// This would be the UIView that wraps your SwiftUI view
public class SwiftUIButtonWrapper: UIView {
    private var hostingController: UIHostingController<SwiftUIButton>?
    
    var color: String = "systemblue" {
        didSet {
            updateColor()
        }
    }
    
    private func updateColor() {
        let systemColor = systemUIColor(from: color)
        if let host = self.hostingController {
            host.rootView = SwiftUIButton(color: systemColor)
        }
    }

    private func systemUIColor(from colorNameOrHex: String) -> UIColor {
        switch colorNameOrHex.lowercased() {
        case "systemred":
            return UIColor.systemRed
        case "systemblue":
            return UIColor.systemBlue
        case "systemgreen":
            return UIColor.systemGreen
        case "systemyellow":
            return UIColor.systemYellow
        case "systemorange":
            return UIColor.systemOrange
        case "systempurple":
            return UIColor.systemPurple
        case "systemgray":
            return UIColor.systemGray
        case "systemteal":
            return UIColor.systemTeal
        case "systemindigo":
            return UIColor.systemIndigo
        case "systempink":
            return UIColor.systemPink
        default:
            // If not a system color, treat it as a hex color
            return colorWithHexString(hexString: colorNameOrHex) ?? .systemBlue
        }
    }
    
    private func colorWithHexString(hexString: String) -> UIColor? {
        var hexSanitized = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(rgb & 0x0000FF) / 255.0
        let a = hexSanitized.count == 8 ? CGFloat((rgb & 0xFF000000) >> 24) / 255.0 : 1.0
        
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
    

    // TODO: This wrapper is not accounting for size
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.hostingController = UIHostingController(rootView: SwiftUIButton(color: systemUIColor(from: color)))
        if let host = self.hostingController {
            self.addSubview(host.view)
            host.view.frame = self.bounds
            host.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}

