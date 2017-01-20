# NodeJS Image

Simple image based on alpine, used on the nodejs projects with NodeJS 6.  
It exposes the port 3000 and run the `npm start` command at the `/var/www` folder.

### Content of this image
- NodeJS
- NPM
- Yarn

## Usage

### With Docker

```sh
docker run -d -p 3000:30000 -v "$PWD":/var/www fluxoti/nodejs
```

## License

This images is distributed under the [MIT License](LICENSE)