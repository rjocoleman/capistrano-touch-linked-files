require 'fileutils'
namespace :linked_files do

  desc 'Touches all your linked files'
  task :touch do
    on release_roles :all do
      within shared_path do
        fetch(:linked_files, []).each do |file|
          info "Making sure dir exists: #{File.dirname(file)}"
          execute :mkdir, '-p', File.dirname(file)
          execute :touch, file
          info "Touched: #{file}"
        end
      end
    end
  end

  before 'deploy:check:make_linked_dirs', 'linked_files:touch'
  before 'deploy:check:linked_files', 'linked_files:touch'

end
