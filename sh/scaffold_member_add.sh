#!/bin/bash
rails g scaffold Member --parent=User
rails g scaffold_controller Admin/Members