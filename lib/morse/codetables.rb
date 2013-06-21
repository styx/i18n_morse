# coding: utf-8

require 'yaml'

module CodeTables
  gem_root = Gem.loaded_specs['i18n_morse'].full_gem_path

  CODE_TABLES = {}
  Dir["#{gem_root}/codetables/*.yml"].each {|f| CODE_TABLES.merge!(YAML.load(File.read(f))) }
end
