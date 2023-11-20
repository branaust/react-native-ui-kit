import ExpoModulesCore

// This would be the module that registers your button view
public class SwiftUIButtonModule: Module {
    public func definition() -> ModuleDefinition {
        Name("SwiftUIButton")

        View(SwiftUIButtonWrapper.self) {
            // You can define props and events here
        }
    }
}