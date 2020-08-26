create git repo

git init

git remote add origin https://github.com/nanoborg/directory_name_here

npm install gh-pages --save-dev

"homepage": "https://nanoborg.github.io/PROJECT_NAME"

"scripts": {
  "predeploy": "npm run build",
  "deploy": "gh-pages -d build"
}

npm run deploy

==================
   ROUTER ISSUES
==================
same as above just change this in index.js

import { HashRouter as Router } from 'react-router-dom'
 
ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);
