# Node Typescript Starter
As seen here: https://khalilstemmler.com/blogs/typescript/node-starter-project/

## Use of this starter project
### Clone and use in your own project
```bash
git clone git@github.com:katunch/nodejs-typescript-starter.git
cd nodejs-typescript-starter
rm -rf .git/
git init
```
Now you've cloned this starter project and it is ready to be used within you own codebase. 

### Install dependencies
Run `npm install`.

Happy coding 🤘

## Scripts overview
### `npm run start:dev`
Starts the application in development using `nodemon` and `ts-node` to do cold reloading.

### `npm run lint`
Runs eslint in the `src/` directory.

### `npm runn build`
Builds the app into `dist`, cleans up the folder first

### `npm run start`
Starts the app in production by first building the project with `npm run build` and then executiong the compiled JavaScript at `dist/index.js`.