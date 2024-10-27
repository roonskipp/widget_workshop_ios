//
//  widget_workshop_widgetBundle.swift
//  widget_workshop_widget
//
//  Created by Tobias Skjelvik on 27/10/2024.
//

import WidgetKit
import SwiftUI

@main
struct widget_workshop_widgetBundle: WidgetBundle {
    var body: some Widget {
        widget_workshop_widget()
        widget_workshop_widgetControl()
        widget_workshop_widgetLiveActivity()
    }
}
