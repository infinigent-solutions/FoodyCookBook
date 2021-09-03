//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 16 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")
    /// Color `Blue-0`.
    static let blue0 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Blue-0")
    /// Color `Blue`.
    static let blue = Rswift.ColorResource(bundle: R.hostingBundle, name: "Blue")
    /// Color `Gray-0`.
    static let gray0 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Gray-0")
    /// Color `Gray-1`.
    static let gray1 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Gray-1")
    /// Color `Gray-2`.
    static let gray2 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Gray-2")
    /// Color `Gray-3`.
    static let gray3 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Gray-3")
    /// Color `Gray-4`.
    static let gray4 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Gray-4")
    /// Color `Gray-5`.
    static let gray5 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Gray-5")
    /// Color `Gray-6`.
    static let gray6 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Gray-6")
    /// Color `Green-0`.
    static let green0 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Green-0")
    /// Color `Green`.
    static let green = Rswift.ColorResource(bundle: R.hostingBundle, name: "Green")
    /// Color `Orange`.
    static let orange = Rswift.ColorResource(bundle: R.hostingBundle, name: "Orange")
    /// Color `Red-0`.
    static let red0 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Red-0")
    /// Color `Red`.
    static let red = Rswift.ColorResource(bundle: R.hostingBundle, name: "Red")
    /// Color `Yellow-0`.
    static let yellow0 = Rswift.ColorResource(bundle: R.hostingBundle, name: "Yellow-0")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Blue", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func blue(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.blue, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Blue-0", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func blue0(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.blue0, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Gray-0", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func gray0(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.gray0, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Gray-1", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func gray1(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.gray1, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Gray-2", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func gray2(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.gray2, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Gray-3", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func gray3(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.gray3, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Gray-4", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func gray4(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.gray4, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Gray-5", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func gray5(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.gray5, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Gray-6", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func gray6(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.gray6, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Green", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func green(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.green, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Green-0", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func green0(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.green0, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Orange", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func orange(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.orange, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Red", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func red(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.red, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Red-0", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func red0(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.red0, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "Yellow-0", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func yellow0(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.yellow0, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Blue", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func blue(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.blue.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Blue-0", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func blue0(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.blue0.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Gray-0", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func gray0(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.gray0.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Gray-1", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func gray1(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.gray1.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Gray-2", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func gray2(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.gray2.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Gray-3", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func gray3(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.gray3.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Gray-4", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func gray4(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.gray4.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Gray-5", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func gray5(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.gray5.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Gray-6", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func gray6(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.gray6.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Green", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func green(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.green.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Green-0", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func green0(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.green0.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Orange", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func orange(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.orange.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Red", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func red(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.red.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Red-0", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func red0(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.red0.name)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "Yellow-0", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func yellow0(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.yellow0.name)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.reuseIdentifier` struct is generated, and contains static references to 3 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `MealDetailCell`.
    static let mealDetailCell: Rswift.ReuseIdentifier<MealDetailCell> = Rswift.ReuseIdentifier(identifier: "MealDetailCell")
    /// Reuse identifier `MealIngredientsCell`.
    static let mealIngredientsCell: Rswift.ReuseIdentifier<MealIngredientsCell> = Rswift.ReuseIdentifier(identifier: "MealIngredientsCell")
    /// Reuse identifier `MealInstructionCell`.
    static let mealInstructionCell: Rswift.ReuseIdentifier<MealInstructionCell> = Rswift.ReuseIdentifier(identifier: "MealInstructionCell")

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UITabBarController

      let bundle = R.hostingBundle
      let favouritesVC = StoryboardViewControllerResource<FavouritesVC>(identifier: "FavouritesVC")
      let mealsVC = StoryboardViewControllerResource<MealsVC>(identifier: "MealsVC")
      let name = "Main"
      let randomVC = StoryboardViewControllerResource<RandomVC>(identifier: "RandomVC")

      func favouritesVC(_: Void = ()) -> FavouritesVC? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: favouritesVC)
      }

      func mealsVC(_: Void = ()) -> MealsVC? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: mealsVC)
      }

      func randomVC(_: Void = ()) -> RandomVC? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: randomVC)
      }

      static func validate() throws {
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "doc.fill") == nil { throw Rswift.ValidationError(description: "[R.swift] System image named 'doc.fill' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "heart.fill") == nil { throw Rswift.ValidationError(description: "[R.swift] System image named 'heart.fill' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "list.bullet") == nil { throw Rswift.ValidationError(description: "[R.swift] System image named 'list.bullet' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "Gray-3", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'Gray-3' is used in storyboard 'Main', but couldn't be loaded.") }
          if UIKit.UIColor(named: "Gray-5", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'Gray-5' is used in storyboard 'Main', but couldn't be loaded.") }
          if UIKit.UIColor(named: "Gray-6", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'Gray-6' is used in storyboard 'Main', but couldn't be loaded.") }
        }
        if _R.storyboard.main().favouritesVC() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'favouritesVC' could not be loaded from storyboard 'Main' as 'FavouritesVC'.") }
        if _R.storyboard.main().mealsVC() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'mealsVC' could not be loaded from storyboard 'Main' as 'MealsVC'.") }
        if _R.storyboard.main().randomVC() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'randomVC' could not be loaded from storyboard 'Main' as 'RandomVC'.") }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}