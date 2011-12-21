#!/bin/sh
bundle exec cucumber features/signing_up.feature -v -r 'features/support' -r 'features/step_definitions/signing_up.rb'
