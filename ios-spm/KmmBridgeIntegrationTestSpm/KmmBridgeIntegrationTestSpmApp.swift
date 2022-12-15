//
//  KmmBridgeIntegrationTestSpmApp.swift
//  KmmBridgeIntegrationTestSpm
//
//  Created by Russell Wolf on 10/10/22.
//

import SwiftUI
import KmmBridgeIntergrationTestSPMWithoutCommit

@main
struct KmmBridgeIntegrationTestSpmApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let test = Test()
                    print("\(test)")
                }
        }
    }
}
