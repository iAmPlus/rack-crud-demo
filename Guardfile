
guard :rspec, cmd: 'rspec spec', all_on_start:true do
  watch(%r{^app/(.+)\.rb$})             { 'spec' }
  watch(%r{^models/(.+)\.rb$})          { 'spec' }
  watch(%r{^public/js/(.+)\.js$})       { 'spec' }
  watch(%r{^requests/(.+)\.rb$})        { 'spec' }
  watch(%r{^templates/(.+)\.mustache$}) { 'spec' }
  watch(%r{^spec/(.+)_spec\.rb$})       { 'spec' }

  watch('spec/spec_helper.rb')          { 'spec' }
  watch('config/routes.txt')            { 'spec' }
  watch('config/mongoid.yml')           { 'spec' }
end
