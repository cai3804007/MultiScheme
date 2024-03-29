# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'buildTest' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
pod 'AFNetworking', '~> 4.0.1'
  # Pods for buildTest

  target 'buildTestTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'buildTestUITests' do
    # Pods for testing
  end

end

post_install do |installer_representation|
    
    installer_representation.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            #去警告
            config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = 'YES'
            #判断scheme
            if config.name.include?("ReleaseModel")
                #添加scheme对应的预编译宏
                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)']
                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] << 'SCHEMEAPPTESTRELEASE=3'
            end
            if config.name.include?("DebugModel")
                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)']
                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] << 'SCHEMEAPPTESTDEBUG=2'
                #指定scheme的调试模式可见变量
                config.build_settings['GCC_OPTIMIZATION_LEVEL'] = '0'
                #某些情况由于编译器不支持无法debug（可选）
                config.build_settings['ONLY_ACTIVE_ARCH'] = 'YES'
            end
         end
    end
end
