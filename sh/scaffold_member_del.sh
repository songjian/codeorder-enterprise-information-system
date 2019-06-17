#!/bin/bash
rails d controller Admin/Members
rails d scaffold Member --parent=User