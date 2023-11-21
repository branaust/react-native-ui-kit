import ExpoModulesCore

// This would be the module that registers your button view
public class SwiftUIButtonModule: Module {
    public func definition() -> ModuleDefinition {
        Name("SwiftUIButton")

        View(SwiftUIButtonWrapper.self) {
            Prop("color") { (view: SwiftUIButtonWrapper, color: String) in
                view.color = color
            }
        }
    }
}