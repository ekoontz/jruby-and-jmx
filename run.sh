#!/bin/sh

# if web_app.rb is already running, use that rather than trying to restart.
if [[ -z "$(ps -ef | grep java | grep web_app.rb | grep -v grep | awk '{print $2}')" ]]; then
    echo "web_app.rb not running: starting now.."
    jruby web_app.rb &
else
    echo "web_app.rb already running: not starting."
fi

if [[ -z "$(ps -ef | grep jconsole | grep -v grep | awk '{print $2}')" ]]; then
    echo "jconsole not running: starting now.."
    jconsole localhost:9999 &
else
    echo "jconsole already running: not starting."
fi

echo "All set up. in your browser, go to http://localhost:4567 and hit refresh a few times"
echo " and then watch the resulting increments in jconsole -> MBeans -> DefaultDomain ->"
echo " HitBean -> Attributes -> hits."




