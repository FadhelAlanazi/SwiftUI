//
//  ContentView.swift
//  15-RestrictingDateRange
//
//  Created by Fadhel Alanazi on 09/03/1444 AH.
//
/* When a new instance of DateComponents is created, the date components are set to nil.
 
 Initializing Date Components
 
 init(calendar: Calendar?, timeZone: TimeZone?, era: Int?, year: Int?, month: Int?, day: Int?, hour: Int?, minute: Int?, second: Int?, nanosecond: Int?, weekday: Int?, weekdayOrdinal: Int?, quarter: Int?, weekOfMonth: Int?, weekOfYear: Int?, yearForWeekOfYear: Int?)
 
 Initializes a date components value, optionally specifying values for its fields.
 */
import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var date: Date = Date.now

    var body: some View {
        VStack {
            // restrict the date such as birthday
            // closed range requires defining a starting date and an ending date
            let dateRange: ClosedRange<Date> = {
                let calender = Calendar.current
                let startComponents = DateComponents(year: 2022,month:1 ,day: 1)
                let endComponents = DateComponents(year: 2022,month: 12,day: 31,hour: 23,minute: 59,second: 59)
                return calender.date(from: startComponents)!
                ...
                calender.date(from: endComponents)!
            }()
            
            // partial range start ...
            let dateRange2: PartialRangeFrom<Date> = {
                let calender = Calendar.current
                let startComponents = DateComponents(year: 2015,month: 1,day: 1)
                return calender.date(from: startComponents)!...
            }()
            // ... partial range stop
            let dateRange3: PartialRangeThrough<Date> = {
                let calender = Calendar.current
                let stopComponents = DateComponents(year: 2022,month: 12,day: 31)
                return ...calender.date(from: stopComponents)!
            }()
            
          
            Text("Chosen date = \(date)")
            
            DatePicker(selection: $date, in: dateRange,displayedComponents: [.date,.hourAndMinute], label: { Text("Date") })
                .datePickerStyle(.compact)
                .padding()
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
