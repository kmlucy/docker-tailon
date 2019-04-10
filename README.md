# docker-tailon

To run a basic setup:
```
docker run --rm -d \
	-p 80:80 \
    --name tailon \
    -v /path/to/log1.log:/log/log1.log:ro \
    -v /path/to/log2.log:/log/log2.log:ro \
    -v /path/to/log3.log:/log/log3.log:ro \
    kmlucy/docker-tailon
```

You can also provide any command to Tailon instead of the default. Example:
```
docker run --rm -d \
	-p 80:80 \
    --name tailon \
    -v /path/to/logs/directory:/log/:ro \
    kmlucy/docker-tailon -b "0.0.0.0:80" -r "/tailon/" -f "/log/*" -a -t 36
```

Based on [gvalkov/tailon](https://github.com/gvalkov/tailon)
