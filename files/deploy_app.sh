#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Woof!</title></head>
  <body>
  <div style="width:600px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Woof World!</h2></center>
  Welcome to ${PREFIX}'s app. Let's explore the world, Hello Doggy!!
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
