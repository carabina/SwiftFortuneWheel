//
//  SwiftFortuneWheelConfiguration.swift
//  SwiftFortuneWheel
//
//  Created by Sherzod Khashimov on 6/3/20.
// 
//

import Foundation
import UIKit

/// Configuration, contains preferences to configure a fortune wheel
public struct SwiftFortuneWheelConfiguration {

    /// Spin button preferences
    public var spinButtonPreferences: SpinButtonPreferences

    /// Pin (arrow) view preferences
    public var pinPreferences: PinImageViewPreferences

    /// Wheel preferences
    public var wheelPreferences: WheelPreferences

    /// Initiates a configuration
    /// - Parameters:
    ///   - spinButtonPreferences: Spin button preferences
    ///   - pinPreferences: Pin (arrow) view preferences
    ///   - wheelPreferences: Wheel preferences
    public init(spinButtonPreferences: SpinButtonPreferences,
                pinPreferences: PinImageViewPreferences,
                wheelPreferences: WheelPreferences) {
        self.spinButtonPreferences = spinButtonPreferences
        self.pinPreferences = pinPreferences
        self.wheelPreferences = wheelPreferences

        self.wheelPreferences.startPosition = self.pinPreferences.position
    }
}

public extension SwiftFortuneWheelConfiguration {
    /// Wheel preferences
    struct WheelPreferences {

        /// Circle preferences
        public var circlePreferences: CirclePreferences

        /// Slice preferences
        public var slicePreferences: SlicePreferences

        /// Layer insets, used to center the drawing such that offseted graphics(e.g Shadows, Outer Glows) are not clipped.
        /// Can be increased to any size if needed.
        public var layerInsets: UIEdgeInsets

        /// Margins for content inside a slide
        public var contentMargins: Margins

        /// Image anchor around the wheel
        public var imageAnchor: AnchorImage?

        /// Start position, should be equal to FortuneWheelConfiguration.pinPreferences.position
        var startPosition: Position

        /// Initiates a wheel preferences
        /// - Parameters:
        ///   - circlePreferences: Circle preferences
        ///   - slicePreferences: Slice preferences
        ///   - layerInsets: Layer insets, default value is `UIEdgeInsets(top: -50, left: -50, bottom: -50, right: -50)`
        ///   - contentMargins: Margins for content inside a slide
        ///   - imageAnchor: Image anchor around the wheel, `optional`
        public init(circlePreferences: CirclePreferences,
                    slicePreferences: SlicePreferences,
                    layerInsets: UIEdgeInsets = UIEdgeInsets(top: -50, left: -50, bottom: -50, right: -50),
                    contentMargins: Margins = Margins(),
                    imageAnchor: AnchorImage? = nil) {
            self.circlePreferences = circlePreferences
            self.slicePreferences = slicePreferences
            self.layerInsets = layerInsets
            self.startPosition = .top
            self.imageAnchor = imageAnchor
            self.contentMargins = contentMargins
        }
    }
}

public extension SwiftFortuneWheelConfiguration {
    /// Circle preferences
    struct CirclePreferences {

        /// Stroke width
        public var strokeWidth: CGFloat = 1

        /// Stroke color
        public var strokeColor: UIColor = .black

        /// Initiates a circle preferences
        /// - Parameters:
        ///   - strokeWidth: Stroke width, default value is `1`
        ///   - strokeColor: Stroke color, default value is `.black`
        public init(strokeWidth: CGFloat = 1,
                    strokeColor: UIColor = .black) {
            self.strokeWidth = strokeWidth
            self.strokeColor = strokeColor
        }
    }
}

public extension SwiftFortuneWheelConfiguration {
    /// Slice preferences
    struct SlicePreferences {

        /// Background color type
        public var backgroundColorType: ColorType

        /// Stroke width
        public var strokeWidth: CGFloat

        /// Stroke color
        public var strokeColor: UIColor

        /// Initiates a slice preferences
        /// - Parameters:
        ///   - backgroundColorType: Background color type
        ///   - strokeWidth: Stroke width, default value is `1`
        ///   - strokeColor: Stroke color, default value is `.black`
        public init(backgroundColorType: ColorType,
                    strokeWidth: CGFloat = 1,
                    strokeColor: UIColor = .black) {
            self.backgroundColorType = backgroundColorType
            self.strokeWidth = strokeWidth
            self.strokeColor = strokeColor
        }
    }
}

public extension SwiftFortuneWheelConfiguration {
    /// Spin button preferences
    struct SpinButtonPreferences {

        /// Size
        public var size: CGSize

        /// Corner radius
        public var cornerRadius: CGFloat

        /// Corner width
        public var cornerWidth: CGFloat

        /// Corner color
        public var cornerColor: UIColor

        /// Horizontal offset
        public var horizontalOffset: CGFloat

        /// Vertical offset
        public var verticalOffset: CGFloat

        /// Background color
        public var backgroundColor: UIColor

        /// Text Color
        public var textColor: UIColor

        /// Font
        public var font: UIFont

        /// Initiates a spin button preferences
        /// - Parameters:
        ///   - size: Size
        ///   - cornerRadius: Corner radius, default value is `0`
        ///   - cornerWidth: Corner width, default value is `0`
        ///   - cornerColor: Corner color, default  value is `.clear`
        ///   - horizontalOffset: Horizontal offset, default value is `0`
        ///   - verticalOffset: Vertical offset, default value is `0`
        ///   - textColor: Text color, default value is `.black`
        ///   - font: Font, default value is `.systemFont(ofSize: 16)`
        ///   - backgroundColor: Background color, default value is `.clear`
        public init(size: CGSize,
                    cornerRadius: CGFloat = 0,
                    cornerWidth: CGFloat = 0,
                    cornerColor: UIColor = .clear,
                    horizontalOffset: CGFloat = 0,
                    verticalOffset: CGFloat = 0,
                    textColor: UIColor = .black,
                    font: UIFont = .systemFont(ofSize: 16),
                    backgroundColor: UIColor = .clear) {
            self.size = size
            self.cornerRadius = cornerRadius
            self.cornerWidth = cornerWidth
            self.cornerColor = cornerColor
            self.horizontalOffset = horizontalOffset
            self.verticalOffset = verticalOffset
            self.backgroundColor = backgroundColor
            self.textColor = textColor
            self.font = font
        }
    }
}


public extension SwiftFortuneWheelConfiguration {
    /// Pin image view preferences
    struct PinImageViewPreferences {

        /// Size
        public var size: CGSize

        /// Position
        public var position: Position

        /// Horizontal offset
        public var horizontalOffset: CGFloat

        /// Vertical offset
        public var verticalOffset: CGFloat

        /// Background color
        public var backgroundColor: UIColor

        /// Tint color
        public var tintColor: UIColor?

        /// Initiates a pin image view preferences
        /// - Parameters:
        ///   - size: Size
        ///   - position: Position
        ///   - horizontalOffset: Horizontal offset, default value is `0`
        ///   - verticalOffset: Vertical offset, default value is `0`
        ///   - backgroundColor: Background color, default value is `.clear`
        ///   - tintColor: Tint color, `optional`
        public init(size: CGSize,
                    position: Position,
                    horizontalOffset: CGFloat = 0,
                    verticalOffset: CGFloat = 0,
                    backgroundColor: UIColor = .clear,
                    tintColor: UIColor? = nil) {
            self.size = size
            self.position = position
            self.horizontalOffset = horizontalOffset
            self.verticalOffset = verticalOffset
            self.backgroundColor = backgroundColor
            self.tintColor = tintColor
        }
    }
}

public extension SwiftFortuneWheelConfiguration {
    /// Position, pin or start position
    enum Position {
        case top
        case bottom
        case left
        case right

        /// Start position angle offset in degree.
        /// Used for wheel
        var startAngleOffset: CGFloat {
            switch self {
            case .top:
                return 0
            case .right:
                return 90
            case .bottom:
                return 180
            case .left:
                return 270
            }
        }
    }
}

public extension SwiftFortuneWheelConfiguration {
    /// Margins
    struct Margins {

        /// Left margin
        var left: CGFloat

        /// Right margin
        var right: CGFloat

        /// Top margin
        var top: CGFloat

        /// Bottom margin
        var bottom: CGFloat

        /// Initiates a margins with default values:
        /// top = 3;
        /// left = 2;
        /// right = 2;
        /// bottom = 3
        public init() {
            self.top = 3
            self.left = 2
            self.right = 2
            self.bottom = 3
        }

        /// Initiates a margins
        /// - Parameters:
        ///   - top: Top margin
        ///   - left: Left margin
        ///   - right: Right margin
        ///   - bottom: Bottom margin, default value is `0`
        public init(top: CGFloat, left: CGFloat, right: CGFloat, bottom: CGFloat = 0) {
            self.top = top
            self.left = left
            self.right = right
            self.bottom = bottom
        }
    }
}

public extension SwiftFortuneWheelConfiguration {
    /// Color type, used to color the item with the particularized pattern.
    /// `evenOddColors` -  decorates with a two-color pattern, for odd or even item in the list.
    /// `customPatternColors` - decorates with specified color for each item on the list.
    enum ColorType {
        case evenOddColors(evenColor: UIColor, oddColor: UIColor)
        case customPatternColors(colors: [UIColor]?, defaultColor: UIColor)
    }
}

public extension SwiftFortuneWheelConfiguration {
    /// Anchor image used  to add images around the wheel for each slice
    struct AnchorImage {

        /// Size, required
        public var size: CGSize

        /// Image name from assets catalog
        public var imageName: String

        /// Rotation degree offset
        public var rotationDegreeOffset: CGFloat

        /// Vertical offset
        public var verticalOffset: CGFloat

        /// Tint color
        public var tintColor: UIColor?

        /// Initiates a anchor image object
        /// - Parameters:
        ///   - imageName: Image name from assets catalog
        ///   - size: Size, required
        ///   - verticalOffset: Vertical offset, default value is `0`
        ///   - rotationDegreeOffset: Rotation degree offset, default value is `0`
        ///   - tintColor: Tint color, `optional`
        public init(imageName: String,
                    size: CGSize,
                    verticalOffset: CGFloat = 0,
                    rotationDegreeOffset: CGFloat = 0,
                    tintColor: UIColor? = nil) {
            self.imageName = imageName
            self.size = size
            self.rotationDegreeOffset = rotationDegreeOffset
            self.verticalOffset = verticalOffset
            self.tintColor = tintColor
        }
    }
}
