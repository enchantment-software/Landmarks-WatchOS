//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Steven Poirot on 3/10/24.
//

import SwiftUI

struct ProfileSummary: View 
{   @Environment(ModelData.self) var modelData
    var profile: Profile
    
    var body: some View
    {
        ScrollView
        {   VStack(alignment: .leading, spacing: 10)
            {   Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading)
                {   HStack
                    {   HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Dary")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "Tenth Hike")
                            .grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
                            .hueRotation(Angle(degrees: 45))
                    }
                    .padding(.bottom)
                }
            }
        }
        
        Divider()
        
        VStack(alignment: .leading)
        {   Text("Recent Hikes")
                .font(.headline)
            
            HikeView(hike: modelData.hikes[0])
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
