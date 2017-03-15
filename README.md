# docker-standard-js

A Dockerfile for the Javascript [Standard][standard] style.

Use the following command to run it :
```bash
docker run --rm -v  $(pwd):/standard geniousphp/standard-js standard
```

You can pass `standard` options directly to the container
```bash
docker run --rm -v  $(pwd):/standard geniousphp/standard-js standard --fix
```

## Use cases

You can use this container in your build/continuous integration system so you can enforce `Javascript` standards within you team before code integration. It's possible to pipe `standard` output to `standard-reporter` in order to export the report into, for example `Jenkins`, via `Checkstyle`.

```bash
docker run --rm -v  $(pwd):/standard geniousphp/standard-js standard | docker run --rm -i geniousphp/standard-js standard-reporter
```

Yes, you can pipe container output to other container input :)

[standard]: http://standardjs.com/rules.html