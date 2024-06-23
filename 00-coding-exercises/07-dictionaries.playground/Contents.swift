/*
 [Coding Exercise] Dictionaries
 Adding a New Entry
 Slack Technologies Inc, the company behind Slack, the popular messaging and collaboration tool recently IPO'd in April 2019. It listed on the New York Stock exchange with the ticker WORK.
 Add an entry to the stockTickers dictionary with the key "WORK" and the value "Slack Technologies Inc".
 Update an Existing Value
 Dynamic Materials Corp is a company that specializes in explosion metalworking like cladding or shock hardening. However, the official company name is not “Dynamic Materials” it is "DMC Global Inc". Update the value for the ticker symbol BOOM to "DMC Global Inc".
 */

import UIKit

func exercise() {

    //Don't change this
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    
    //Write your code here.
    stockTickers["WORK"] = "Slack Technologies Inc"
    stockTickers["BOOM"] = "DMC Global Inc"
  
     //Don't modify this
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
}
 

exercise()
