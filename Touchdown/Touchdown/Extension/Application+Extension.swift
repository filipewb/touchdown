//
//  Application+Extension.swift
//  Touchdown
//
//  Created by Filipe Boeck on 05/10/23.
//

import UIKit

extension UIApplication {
    var safeAreaInsets: UIEdgeInsets? {
        let keyWindow = UIApplication.shared.connectedScenes
            .filter {$0.activationState == .foregroundInactive }
            .map { $0 as? UIWindowScene }
            .compactMap { $0 }
            .first?.windows
            .filter {$0.isKeyWindow}
            .first
 
        return keyWindow?.safeAreaInsets
    }
}
