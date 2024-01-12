#!/bin/bash

# Exit if any command fails.
set -e

# Setup the environment
npm run wp-env start

# Activate plugins
npm run wp-env run cli wp plugin activate jobswp

# Activate theme
npm run wp-env run cli wp theme activate jobswp

# Change permalinks
npm run wp-env run cli wp rewrite structure '/%postname%/'

# Import tables
#npm run wp-env run cli wp db import wp-content/uploads/wordpress_tv_wp_env.sql
