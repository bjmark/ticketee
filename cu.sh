#!/bin/sh
bundle exec cucumber features/creating_projects.feature -v -r 'features/support' -r 'features/step_definitions/creating_projects.rb'
bundle exec cucumber features/viewing_projects.feature -v -r 'features/support' -r 'features/step_definitions/project_steps.rb'
bundle exec cucumber features/editing_project.feature -v -r 'features/support' -r 'features/step_definitions/editing_project.rb'
bundle exec cucumber features/deleting_project.feature -v -r 'features/support' -r 'features/step_definitions/deleting_project.rb'
bundle exec cucumber features/creating_ticket.feature -v -r 'features/support' -r 'features/step_definitions/creating_ticket.rb'
bundle exec cucumber features/signing_up.feature -v -r 'features/support' -r 'features/step_definitions/signing_up.rb'
