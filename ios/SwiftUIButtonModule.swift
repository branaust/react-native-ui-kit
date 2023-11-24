import ExpoModulesCore

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