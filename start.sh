
curl -XPUT "http://elasticsearch:9200/_all/_settings?preserve_existing=true" -H 'Content-Type: application/json' -d '{"index.number_of_replicas" : "0"}'
gunicorn -b "0.0.0.0:8888" -w "4" --preload "server:app"
