# coding: utf-8

module CodeTables
  spec = Gem::Specification.find_by_name('i18n_morse')
  gem_root = spec.gem_dir

  CODE_TABLES = {}
  Dir["#{gem_root}/codetables/*.yml"].each {|f| CODE_TABLES.merge(YAML.load(File.read(f))) }
end
