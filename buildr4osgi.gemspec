# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with this
# work for additional information regarding copyright ownership.  The ASF
# licenses this file to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations under
# the License.


Gem::Specification.new do |spec|
  spec.name           = 'buildr4osgi'
  spec.version        = '0.9.6'
  spec.author         = 'Antoine Toulme'
  spec.email          = "atoulme@intalio.com"
  spec.homepage       = "http://buildr.apache.org/"
  spec.summary        = "A plugin for adding OSGi support to Buildr."
  spec.description    = <<-TEXT
A plugin for adding OSGi support to Buildr. Ever dreamt you could resolve your OSGi dependencies ?
TEXT
  #spec.rubyforge_project  = 'buildr4osgi'
  # Rakefile needs to create spec for both platforms (ruby and java), using the
  # $platform global variable.  In all other cases, we figure it out from RUBY_PLATFORM.
  spec.platform       = $platform || RUBY_PLATFORM[/java/] || 'ruby'
  spec.files          = Dir['{doc,etc,lib,rakelib,spec}/**/*', '*.{gemspec,buildfile}'] +
                        ['LICENSE', 'NOTICE', 'README.rdoc', 'Rakefile']
  spec.require_paths  = ['lib']
  spec.has_rdoc         = true
  spec.extra_rdoc_files = 'README.rdoc', 'LICENSE', 'NOTICE'
  spec.rdoc_options     = '--title', 'Buildr4osgi', '--main', 'README.rdoc',
                          '--webcvs', 'http://github.com/intalio/buildr4osgi'
  spec.post_install_message = "To get started run buildr --help"
  spec.add_dependency("manifest", "= 0.0.8")
  spec.add_dependency 'rake',                 '0.8.7'
  spec.add_dependency 'builder',              '2.1.2'
  spec.add_dependency 'net-ssh',              '2.0.23'
  spec.add_dependency 'net-sftp',             '2.0.4'
  spec.add_dependency 'rubyzip',              '0.9.4'
  spec.add_dependency 'highline',             '1.6.2'
  spec.add_dependency 'json_pure',            '1.4.3'
  spec.add_dependency 'rubyforge',            '2.0.3'
  spec.add_dependency 'hoe',                  '2.3.3'
  spec.add_dependency 'rjb',                  '1.3.7' if spec.platform.to_s == 'x86-mswin32' || spec.platform.to_s == 'ruby'
  spec.add_dependency 'atoulme-Antwrap',      '~> 0.7.2'
  spec.add_dependency 'diff-lcs',             '1.1.2'
  spec.add_dependency 'rspec-expectations',   '2.1.0'
  spec.add_dependency 'rspec-mocks',          '2.1.0'
  spec.add_dependency 'rspec-core',           '2.1.0'
  spec.add_dependency 'rspec',                '2.1.0'
  spec.add_dependency 'xml-simple',           '1.0.12'
  spec.add_dependency 'minitar',              '0.5.3'
  spec.add_dependency 'jruby-openssl',        '>= 0.7' if spec.platform.to_s == 'java'

end
