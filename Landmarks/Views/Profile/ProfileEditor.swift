//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by junseopLee on 1/7/26.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                Spacer()
                TextField("Username", text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            .listRowInsets(EdgeInsets())

            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            .listRowInsets(EdgeInsets())
            
            Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            }
            .pickerStyle(.menu)
            .listRowInsets(EdgeInsets())
       
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date")
            }.datePickerStyle(.compact)
                .listRowInsets(EdgeInsets())
        }.listStyle(.inset)
        
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
