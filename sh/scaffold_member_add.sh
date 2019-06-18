#!/bin/bash
rails g scaffold Member name:string phone:string address:string
rails g scaffold_controller Admin/Member