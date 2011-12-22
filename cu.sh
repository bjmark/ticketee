#!/bin/sh
bundle exec cucumber features/signing_in.feature -v -r 'features/support' -r 'features/step_definitions/signing_in.rb'
