// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftUI

public enum Strings {
    public enum Home: String.LocalizationValue, AutoLocalizing {
        case title = "HOME_TITLE"
    }
}

public protocol AutoLocalizing {
    var rawValue: String.LocalizationValue { get }
}

public extension AutoLocalizing {
    func callAsFunction() -> String {
        String(localized: rawValue, bundle: .module)
    }
}

struct MyView: View {
    var body: some View {
        ZStack {
            Text(Strings.Home.title())
                .font(.largeTitle.bold())
        }
    }
}
