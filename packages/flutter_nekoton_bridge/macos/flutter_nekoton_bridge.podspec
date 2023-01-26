release_tag_name = 'nekoton_bridge-v1.0.3' # generated; do not edit
# # To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# # Run `pod lib lint flutter_nekoton_bridge.podspec` to validate before publishing.
# #
# Pod::Spec.new do |s|
#   s.name             = 'flutter_nekoton_bridge'
#   s.version          = '0.0.1'
#   s.summary          = 'A new Flutter FFI plugin project.'
#   s.description      = <<-DESC
# A new Flutter FFI plugin project.
#                        DESC
#   s.homepage         = 'http://example.com'
#   s.license          = { :file => '../LICENSE' }
#   s.author           = { 'Your Company' => 'email@example.com' }

#   # This will ensure the source files in Classes/ are included in the native
#   # builds of apps using this FFI plugin. Podspec does not support relative
#   # paths, so Classes contains a forwarder C file that relatively imports
#   # `../src/*` so that the C sources can be shared among all target platforms.
#   s.source           = { :path => '.' }
#   s.source_files     = 'Classes/**/*'
#   s.dependency 'FlutterMacOS'

#   s.platform = :osx, '10.11'
#   s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
#   s.swift_version = '5.0'
# end

release_tag_name = 'nekoton_bridge-v0.0.0' # generated; do not edit

# We cannot distribute the XCFramework alongside the library directly,
# so we have to fetch the correct version here.
framework_name = 'NekotonBridge.xcframework'
remote_zip_name = "#{framework_name}.zip"
url = "https://github.com/nesquikm/nekoton_bridge/releases/download/#{release_tag_name}/#{remote_zip_name}"
local_zip_name = "#{release_tag_name}.zip"
`
cd Frameworks
rm -rf #{framework_name}

if [ ! -f #{local_zip_name} ]
then
  curl -L #{url} -o #{local_zip_name}
fi

unzip #{local_zip_name}
cd -
`

Pod::Spec.new do |spec|
  spec.name          = 'flutter_nekoton_bridge'
  spec.version       = '0.0.1'
  spec.license       = { :file => '../LICENSE' }
  spec.homepage      = 'https://github.com/nesquikm/nekoton_bridge'
  spec.authors       = { 'nesquikm' => 'drapolyuk@gmail.com' }
  spec.summary       = 'iOS/macOS Flutter bindings for nekoton_bridge'

  spec.source              = { :path => '.' }
  spec.source_files        = 'Classes/**/*'
  spec.public_header_files = 'Classes/**/*.h'
  spec.vendored_frameworks = "Frameworks/#{framework_name}"

  spec.ios.deployment_target = '11.0'
  spec.osx.deployment_target = '10.11'
end
