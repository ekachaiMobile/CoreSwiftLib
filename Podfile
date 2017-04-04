source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
use_frameworks!

def shared_pods
    pod 'SDWebImage'
	pod 'Alamofire'
    pod 'AlamofireImage'
    pod 'SwiftyJSON'
#    pod 'SwiftString'
	pod 'DeviceKit' 
	pod 'CoreSwiftLib'
    pod 'CryptoSwift'
    pod 'Haneke'
end
   

target 'CoreSwiftLib' do
	shared_pods
end


target 'CoreSwiftLibTests' do
    shared_pods
end

