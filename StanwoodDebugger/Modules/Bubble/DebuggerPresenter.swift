//
//  DebuggerPresenter.swift
//  StanwoodDebugger
//
//  Created by Tal Zion on 11/04/2018.
//

import Foundation

class DebuggerPresenter {
    
    weak var debuggerable: Debuggerable!
    private var actionable: DebuggerActionable
    
    init(debuggerable: Debuggerable, actionable: DebuggerActionable) {
        self.debuggerable = debuggerable
        self.actionable = actionable
    }
    
    func presentDetailView(completion: @escaping Completion) {
        actionable.presentDetailView(completion: completion)
    }
    
    func presentScaled(_ view: DebuggerScallableView) {
        actionable.presentScaleable(view)
    }
}