#!/bin/sh

jruby web_app.rb &

jconsole localhost:9999 &

echo "All set up. in your browser, go to http://localhost:4567 and hit refresh a few times"
echo " and then watch the resulting increments in jconsole -> MBeans -> DefaultDomain ->"
echo " HitBean -> Attributes -> hits."




