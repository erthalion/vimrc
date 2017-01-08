lynx -dump -listonly api.html > api_links
cat links | xargs -n 1 ./prepare_js.sh
