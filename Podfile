source 'https://github.com/CocoaPods/Specs.git'
source '_SpecHomePage_'

platform :ios, '8.0'
#inhibit_all_warnings!
#use_frameworks!

target '_ProjectName_' do

	# pod 'Masonry', '~> 1.1.0'
	# pod 'SDWebImage', '~> 4.4.6'
	# pod 'SDAutoLayout', '~> 2.1.3'
	#pod ’CTMediator‘
	#pod 'ReactiveCocoa', '~> 8.0.2'
	#pod 'ReactiveObjC', '~> 3.1.0'
	#pod 'AFNetworking', '~> 3.2.1'
	#pod ’YTKNetwork'
	#pod 'YYModel'
	#pod 'MGJRouter', '~>0.9.0'
	#pod 'MBProgressHUD', '~> 1.1.0'
	#pod 'SVProgressHUD', '~> 2.2.5'
	#pod 'MJRefresh', '~> 3.1.15.7'
	#pod 'FMDB', '~> 2.7.5'
	#pod 'CocoaAsyncSocket', '~> 7.6.3'
	#pod 'SDCycleScrollView'
	# ZJScrollPageView

    #pod 'UMengAnalytics-NO-IDFA', '~> 4.2.5'
    #pod 'UMCCommon'
    #pod 'UMCAnalytics'
    #pod 'UMCSecurityPlugins'
	#pod 'BaiduMapKit', '~> 3.2'

	#pod 'MobileVLCKit'
	#pod 'JSONKit', '~> 1.4'
	#pod 'MobileVLCKit'
	#pod 'JLRoutes'
	#pod 'IQKeyboardManager'
	#pod 'JXBAdPageView', '~> 1.5'
	#pod 'Reachability', '~> 3.2'
	#pod 'UITableView+FDTemplateLayoutCell', '~> 1.5.beta'
	#pod 'Verify', :path => './Verify'
	#pod 'BasePlug', :path => 'Lib/BasePlug'
	#pod 'EHomePage', :git => ‘https://github.com/yhl714387953/EHomePage.git'
	#pod 'DFBasePlug'

end

# pod update --no-repo-update
# 实现post_install Hooks
post_install do |installer|
# puts 为在终端打印方法
puts "##### post_install start #####"

  # 1. 遍历项目中所有target
  installer.pods_project.targets.each do |target|
    # 2. 遍历build_configurations
    target.build_configurations.each do |config|
      # 3. 修改build_settings中的ENABLE_BITCODE
      config.build_settings['ENABLE_BITCODE'] = 'NO'
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 8.0
      	 config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '8.0'
      end
    end
  end
    
puts "##### post_install end #####"
end
