//
//  StaticString+Apollo.swift
//  ApolloCodegenLib
//
//  Created by Ellen Shapiro on 10/3/19.
//  Copyright © 2019 Apollo GraphQL. All rights reserved.
//

import Foundation

extension StaticString {
  
  var apollo_lastPathComponent: String {
    return (self.apollo_toString as NSString).lastPathComponent
  }
  
  var apollo_toString: String {
    return self.withUTF8Buffer {
        String(decoding: $0, as: UTF8.self)
    }
  }
}
