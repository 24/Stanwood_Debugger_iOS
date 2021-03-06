//
//  ErrorPresenter.swift
//
//  The MIT License (MIT)
//
//  Copyright (c) 2018 Stanwood GmbH (www.stanwood.io)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import StanwoodCore

protocol ErrorViewable: class {
    func setupTableView(dataType: DataType?)
}

class ErrorPresenter: Presentable {
    
    // MARK:- Properties
    
    unowned var viewable: ErrorViewable
    var actionable: ErrorActionable
    var parameterable: ErrorParameterable
    
    // MARK:- Typealias
    
    typealias Actionable = ErrorActionable
    typealias Parameterable = ErrorParameterable
    typealias Viewable = ErrorViewable
    
    // MARK:- Initialiser
    
    required init(actionable: ErrorActionable, parameterable: ErrorParameterable, viewable: ErrorViewable) {
        self.viewable = viewable
        self.actionable = actionable
        self.parameterable = parameterable
    }
    
    // MARK:- Functions
    
    func viewDidLoad() {
        viewable.setupTableView(dataType: parameterable.sections)
    }
}
