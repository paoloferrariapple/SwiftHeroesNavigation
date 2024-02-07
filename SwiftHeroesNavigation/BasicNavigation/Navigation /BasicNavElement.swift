//
//  BasicNavElement.swift
//  SwiftHeroesNavigation
//
//  Created by paolo.ferrari on 07/02/24.
//

import Foundation

protocol BasicNavElement: Hashable {}

enum BasicNavRoots: BasicNavElement {
    case pageA
    case pageB
    case pageC
}

enum BasicNavDetail: BasicNavElement {
    case detail1
    case detail2
}
