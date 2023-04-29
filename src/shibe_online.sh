#!/bin/bash

api="http://shibe.online/api"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_shibes() {
    # 1 - count: (integer): <count - default: 1>
    # 2 - urls: (boolean): <true, false - default: true>
    # 3 - https: (boolean): <true, false - default: true>
    curl --request GET \
        --url "$api/shibes?count=${1:-1}&urls=${2:-true}https=${3:-true}" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
