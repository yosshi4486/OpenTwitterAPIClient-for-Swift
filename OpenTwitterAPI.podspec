Pod::Spec.new do |s|
  s.name = 'OpenTwitterAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0'
  s.source = Client/OpenTwitterAPI/Classes
  s.authors = 'yosshi4486'
  s.license = MIT
  s.homepage = 'https://github.com/yosshi4486/OpenTwitterAPI-for-Swift'
  s.summary = 'OpenTwitterAPI Swift SDK'
  s.source_files = 'Client/OpenTwitterAPI/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
