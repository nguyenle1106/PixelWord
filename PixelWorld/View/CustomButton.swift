//
//  CustomButton.swift
//  PixelWorld
//
//  Created by Nguyên Lê on 7/2/24.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0 // độ rộng của viền
        layer.borderColor = UIColor.white.cgColor// màu boder  chuyển đổi đối tượng UIColor thành CGColor, vì thuộc tính borderColor yêu cầu kiểu dữ liệu CGColor.
        layer.cornerRadius = 12 //bo cong
        layer.backgroundColor = UIColor.gray.withAlphaComponent(0.4).cgColor //Thiết lập màu nền của layer là màu xám với độ mờ (alpha) là 0.4 (tức là 40% độ trong suốt). withAlphaComponent(0.4) tạo một màu xám bán trong suốt, và cgColor chuyển đổi nó thành CGColor.

    }

}
