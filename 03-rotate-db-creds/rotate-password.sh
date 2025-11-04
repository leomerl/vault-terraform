#!/bin/bash

terraform taint time_rotating.password_rotation

terraform apply -auto-approve

terraform output rotation_status