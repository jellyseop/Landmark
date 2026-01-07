//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by junseopLee on 1/7/26.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                    .padding(.bottom)
                LabeledContent("Notifications", value: profile.prefersNotifications ? "On": "Off")
                LabeledContent("Seasonal Photos", value: profile.seasonalPhoto.rawValue)
                LabeledContent("Goal Date", value: profile.goalDate, format: .dateTime.year().month().day())
                
                Divider()
                
                
                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                    
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                    
                    Divider()
                    
                    
                    VStack(alignment: .leading) {
                        Text("Recent Hikes")
                            .font(.headline)
                        
                        
                        HikeView(hike: modelData.hikes[0])
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
