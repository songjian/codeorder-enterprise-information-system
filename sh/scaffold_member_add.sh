#!/bin/bash
rails g scaffold Member --parent=User
rails g controller Admin/Members