Pod::Spec.new do |spec|
  spec.name           = 'Markdown'
  spec.version        = '0.3.0'
  spec.summary        = 'A Swift package for parsing, building, editing, and analyzing Markdown documents.'
  spec.homepage       = 'https://github.com/hanny-ph/swift-markdown'
  spec.author         = { 'R&D Allm Inc.' => '' }
  spec.swift_version  = '5.9'
  spec.source         = { :git => 'https://github.com/hanny-ph/swift-markdown.git', :tag => spec.version.to_s }

  spec.source_files   = 'Sources/Markdown/**/*.swift'
  spec.resources      = 'Sources/Markdown/**/*.md'

  spec.dependency 'CAtomic'
  spec.dependency 'cmark-gfm'

  spec.test_spec do |test_spec|
    test_spec.source_files = 'Tests/**/*.{swift}'
  end
end
