Pod::Spec.new do |s|
  s.name = 'OpenTwitterAPIClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0'
  s.source = Sources/OpenTwitterAPIClient/Classes
  s.authors = 'yosshi4486'
  s.license = MIT
  s.homepage = 'https://github.com/yosshi4486/OpenTwitterAPIClient-for-Swift'
  s.summary = 'OpenTwitterAPIClient Swift SDK'
  s.source_files = 'Sources/OpenTwitterAPIClient/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
