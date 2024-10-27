//
//  widget_workshop_widgetLiveActivity.swift
//  widget_workshop_widget
//
//  Created by Tobias Skjelvik on 27/10/2024.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct widget_workshop_widgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct widget_workshop_widgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: widget_workshop_widgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension widget_workshop_widgetAttributes {
    fileprivate static var preview: widget_workshop_widgetAttributes {
        widget_workshop_widgetAttributes(name: "World")
    }
}

extension widget_workshop_widgetAttributes.ContentState {
    fileprivate static var smiley: widget_workshop_widgetAttributes.ContentState {
        widget_workshop_widgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: widget_workshop_widgetAttributes.ContentState {
         widget_workshop_widgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: widget_workshop_widgetAttributes.preview) {
   widget_workshop_widgetLiveActivity()
} contentStates: {
    widget_workshop_widgetAttributes.ContentState.smiley
    widget_workshop_widgetAttributes.ContentState.starEyes
}
