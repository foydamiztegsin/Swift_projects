//
//  Product.swift
//  SweaterShopDemo
//
//  Created by aaa on 26/10/23.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Orange sweater", image: "sweater1", price: 54),
                   Product(name: "Red wine sweater", image: "sweater2", price: 56),
                   Product(name: "Sand sweater", image: "sweater3", price: 87),
                   Product(name: "See sweater", image: "sweater4", price: 76),
                   Product(name: "Cream sweater", image: "sweater5", price: 99),
                   Product(name: "Beige sweater", image: "sweater6", price: 54),
                   Product(name: "Grey sweater", image: "sweater7", price: 56),
                   Product(name: "Milk sweater", image: "sweater8", price: 83),
]
