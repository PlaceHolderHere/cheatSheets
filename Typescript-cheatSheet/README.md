Hi! This is a basic cheat sheet for the basic syntax of typescript. All the code here is based on a tutorial by Programming with Mosh.

Tutorial: https://www.youtube.com/watch?v=d56mG7DezGs

// Setting up the Compiler in terminal
* tsc --init // creates a tsconfig.json

* tsc nameOfTsFile.ts
    - compiles typescript file to javascript

* "rootDir": "./src" 
    - All your typescript files should be stored in a directory named "src" or any name you choose to assign rootDir

* "outDir": "./dist" 
    - Compiled Typescript code will be placed in a directory named "dist" or any name you choose to assign to outDir 

* node dist/[nameOfJsFile].js  
    - runs the javascript using node