Pod::Spec.new do |s|
    s.name         = "QuantumIOS"
    s.version      = "3.8.5"
    s.summary      = "iOS SDK for using Quantum"
    s.homepage     = "https://docs.atomicfi.com/reference/transact-sdk#libraries__swift"
    s.license = { :type => 'Copyright', :text => '© Copyright 2024 Atomic FI Inc.'}
    s.author             = { "Sean Hill" => "sean@atomicfi.com" }
    s.source       = { :git => "https://github.com/atomicfi/quantum-ios.git", :tag => "#{s.version}" }
    s.platform = :ios
    s.swift_version = "5"
    s.ios.deployment_target  = '13.0'
    s.default_subspec  = 'QuantumIOS'

    s.subspec 'QuantumIOS' do |ss|
        ss.vendored_frameworks = "artifacts/QuantumIOS.xcframework"
        ss.dependency "QuantumIOS/MuppetIOS"
        ss.ios.deployment_target = '13.0'
    end

    s.subspec 'MuppetIOS' do |ss|
        ss.vendored_frameworks = "artifacts/MuppetIOS.xcframework"
        ss.ios.deployment_target = '13.0'
    end
end
