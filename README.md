# hello-world

> Nodejs test / demo server application

[![Build status][ci-image] ][ci-url]
[![js-standard-style][standard-image] ](http://standardjs.com/)

Example from [howtonode.org/hello-node](http://howtonode.org/hello-node)

```sh
git clone git@github.com:bahmutov/hello-world.git
cd hello-world
npm install
npm start
```

From another terminal execute one of the following

```sh
curl localhost:1337
http localhost:1337
```

You should see `Hello World` message

For example, you can use this project to try
[the Dokku platform](https://glebbahmutov.com/blog/running-multiple-applications-in-dokku/)

## Small Docker image

In order to show how to build smaller Docker image, while still testing this app,
see the three Docker files

* [Dockerfile-simple](Dockerfile-simple)
* [Dockerfile](Dockerfile) with multi-stage feature
* [Dockerfile-bare](Dockerfile-bare) based on the smallest Node images without NPM

The images built from these files show the space savings

```
$ docker images gleb/hello-world
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
gleb/hello-world    bare                78cdddcd77ac        23 seconds ago      37.9MB
gleb/hello-world    multi-stage         44dcd42b11f4        17 minutes ago      49.4MB
gleb/hello-world    simple              aed28e2bde45        31 minutes ago      202MB
```

Read blog post [Making small Docker image](https://glebbahmutov.com/blog/making-small-docker-image/) for more details.

### Small print

Author: Gleb Bahmutov &lt;gleb.bahmutov@gmail.com&gt; &copy; 2016

* [@bahmutov](https://twitter.com/bahmutov)
* [glebbahmutov.com](http://glebbahmutov.com)
* [blog](http://glebbahmutov.com/blog)


License: MIT - do anything with the code, but don't blame me if it does not work.

Support: if you find any problems with this module, email / tweet /
[open issue](https://github.com/bahmutov/hello-world/issues) on Github

## MIT License

Copyright (c) 2016 Gleb Bahmutov &lt;gleb.bahmutov@gmail.com&gt;

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

[ci-image]: https://travis-ci.org/bahmutov/hello-world.svg?branch=master
[ci-url]: https://travis-ci.org/bahmutov/hello-world
[standard-image]: https://img.shields.io/badge/code%20style-standard-brightgreen.svg
