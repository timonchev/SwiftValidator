//
//  DateRule.swift
//  Validator
//
//  Created by Sean Howard on 31/08/2017.
//  Copyright © 2017 jpotts18. All rights reserved.
//

import UIKit

/**
 `DateRule` is a subclass of Rule that defines how a date field is validated.
 */
open class DateRule: Rule {
    
    /// Date format to be used invalidation
    private var dateFormat: String
    /// String that holds error message.
    private var message : String
    
    /**
     Initializes `RequiredRule` object with error message. Used to validate a field that requires text.
     
     - parameter message: String of error message.
     - returns: An initialized `RequiredRule` object, or nil if an object could not be created for some reason that would not result in an exception.
     */
    public init(dateFormat: String, message : String = "This date is invalid"){
        self.message = message
        self.dateFormat = dateFormat
    }
    
    /**
     Validates a field.
     
     - parameter value: String to checked for validation.
     - returns: Boolean value. True if validation is successful; False if validation fails.
     */
    open func validate(_ value: String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        
        guard let _ = dateFormatter.date(from: value) else {
            return false
        }
        return true
    }
    
    /**
     Used to display error message when validation fails.
     
     - returns: String of error message.
     */
    open func errorMessage() -> String {
        return message
    }
}
