//
//  BasicNavElement.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import Foundation

/// This is not needed but i think it helps differentiating between simple hashable enums and the enums that you want to use for navigation
protocol BasicNavElement: Hashable {}

/// Description of the possible roots the app can have
enum BasicNavRoots: BasicNavElement {
    case pageA
    case pageB
    case pageC
}

/// Descriprion of the possible pushes the app can have
enum BasicNavDetail: BasicNavElement {
    case detail1
    case detail2
}
