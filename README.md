# NodeJS Image

Simple image based on alpine, used on the nodejs projects with NodeJS 6.  
It exposes the port 3000 and run the `npm start` command at the `/var/www` folder.

## Usage

### With Docker

```sh
docker run -d -p 3000:30000 -v "$PWD":/var/www fluxoti/nodejs
```

### With [Azk][azk]
```js
systems({
  'application': {
    image: {"docker": "fluxoti/nodejs"},
    depends: [],
    scalable: 1,
    ports: {
      http: "3000/tcp"
    },
    mounts: {
      '/var/www': path('.')
    },
    wait: 20,
    shell: "/bin/bash",
    http: {
      domains: ["socket.#{azk.default_domain}"]
    }
  }
});
```

## License

This images is distributed under the [MIT License][license]

[azk]: http://www.azk.io/
[license]: https://github.com/fluxoti/docker-nodejs/blob/master/LICENSE