#!/bin/bash
rails d scaffold_controller Admin/Members
rails d scaffold Member --parent=User
