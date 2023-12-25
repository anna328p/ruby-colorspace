# frozen_string_literal: true

require_relative 'lib/colorspace/version'

Gem::Specification.new do |spec|
  spec.name = 'colorspace'
  spec.version = Colorspace::VERSION
  spec.authors = ['Anna Kudriavtsev']
  spec.email = ['anna328p@gmail.com']

  spec.summary = 'Tools for manipulating colors in various color spaces'
  spec.homepage = 'https://github.com/anna328p/ruby-colorspace'
  spec.required_ruby_version = '>= 3.2.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/anna328p/ruby-colorspace'
  spec.metadata['changelog_uri'] = 'https://github.com/anna328p/ruby-colorspace/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem
  # that have been added into git.
  spec.files = Dir.chdir(__dir__) {
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) \
        || f.start_with?(*%w[
          bin/ test/ spec/ features/ .git .circleci appveyor
        ])
    end
  }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  # spec.metadata['rubygems_mfa_required'] = 'true'
end
