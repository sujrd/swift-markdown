Pod::Spec.new do |spec|
  spec.name           = 'CAtomic'
  spec.version        = '0.3.0'
  spec.summary        = 'A helper for generating thread-safe unique IDs.'
  spec.homepage       = 'https://github.com/hanny-ph/swift-markdown'
  spec.author         = { 'R&D Allm Inc.' => '' }
  spec.swift_version  = '5.9'
  spec.source         = { :git => 'https://github.com/hanny-ph/swift-markdown.git', :tag => spec.version.to_s }

  spec.source_files   = 'Sources/CAtomic/**/*.{c,h}'
end