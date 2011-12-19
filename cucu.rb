features = {
  'creating_projects.feature'=>'creating_projects.rb',
  'viewing_projects.feature'=>'project_steps.rb',
  'editing_project.feature'=>'editing_project.rb',
  'deleting_project.feature'=>'deleting_project.rb'
}

File.open('cu.sh','w') do |f|
  f.puts '#!/bin/sh'

  features.each do |k,v|
    run = "bundle exec cucumber features/#{k} -v -r 'features/support' "
    run += "-r 'features/step_definitions/#{v}'"
  
    f.puts run
  end
end
