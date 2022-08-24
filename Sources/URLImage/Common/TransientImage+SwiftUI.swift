//
//  TransientImage.swift
//  
//
//  Created by Dmytro Anokhin on 30/09/2020.
//

import SwiftUI
import Model


@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
public extension TransientImage {

    var image: Image? {
        guard let cgImage = self.cgImage else { return nil }
        let orientation = Image.Orientation(cgOrientation)
        return Image(decorative: cgImage, scale: 1.0, orientation: orientation)
    }
}
