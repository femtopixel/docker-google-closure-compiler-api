Google Closure Compiler API - Docker Image
==========================================

[![latest release](https://img.shields.io/github/release/femtopixel/docker-google-closure-compiler-api.svg "latest release")](http://github.com/femtopixel/docker-google-closure-compiler-api/releases)
[![Bitcoin donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/btc.png "Bitcoin donation")](https://m.freewallet.org/id/374ad82e/btc)
[![Litecoin donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ltc.png "Litecoin donation")](https://m.freewallet.org/id/374ad82e/ltc)

This image allows you to Compile your JS code using [Google Closure Compiler API](https://developers.google.com/closure/compiler/) in CLI

Usage
-----
```
usage: compiler.py [-h] [--js JS] [--js_output_file JS_OUTPUT_FILE]
                   [--compilation_level {WHITESPACE_ONLY,SIMPLE_OPTIMIZATIONS,ADVANCED_OPTIMIZATIONS}]

optional arguments:
  -h, --help            show this help message and exit
  --js JS               Input file
  --js_output_file JS_OUTPUT_FILE
                        Output file
  --compilation_level {WHITESPACE_ONLY,SIMPLE_OPTIMIZATIONS,ADVANCED_OPTIMIZATIONS}
                        Compilation level
```

## Default values

`--js` : /dev/stdin (input your code)
`--js_output_file` : /dev/stdout (Prints compiled code in the shell)
`--compilation_level` : WHITESPACE_ONLY

Docker usage
------------

```
docker run --rm -ti -v /path/to/my/file.js:/root/myfile.js femtopixel/google-closure-compiler --js /root/myfile.js
```
