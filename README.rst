==========================================
Google Closure Compiler API - Docker Image
==========================================

.. image:: https://img.shields.io/github/release/femtopixel/docker-google-closure-compiler-api.svg
    :alt: latest release
    :align: left
    :target: http://github.com/femtopixel/docker-google-closure-compiler-api/releases
.. image:: https://img.shields.io/pypi/v/google-closure-compiler-api.svg
    :alt: PyPI version
    :align: left
    :target: https://pypi.python.org/pypi?:action=display&name=google-closure-compiler-api
.. image:: https://img.shields.io/docker/pulls/femtopixel/google-closure-compiler.svg
    :align: left
    :target: https://hub.docker.com/r/femtopixel/google-closure-compiler/
.. image:: https://img.shields.io/docker/stars/femtopixel/google-closure-compiler.svg
    :align: left
    :target: https://hub.docker.com/r/femtopixel/google-closure-compiler/
.. image:: https://img.shields.io/docker/pulls/femtopixel/google-closure-compiler-app.svg
    :align: left
    :target: https://hub.docker.com/r/femtopixel/google-closure-compiler-app/
.. image:: https://img.shields.io/docker/stars/femtopixel/google-closure-compiler-app.svg
    :align: left
    :target: https://hub.docker.com/r/femtopixel/google-closure-compiler-app/
.. image:: https://github.com/jaymoulin/jaymoulin.github.io/raw/master/btc.png
    :alt: Bitcoin donation
    :align: left
    :target: https://m.freewallet.org/id/374ad82e/btc
.. image:: https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ltc.png
    :alt: Litecoin donation
    :align: left
    :target: https://m.freewallet.org/id/374ad82e/ltc
.. image:: https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png
    :alt: PayPal donation
    :align: left
    :target: https://www.paypal.me/jaymoulin
.. image:: https://beerpay.io/femtopixel/docker-google-closure-compiler-api/badge.svg
    :alt: Beerpay donation
    :align: left
    :target: https://beerpay.io/femtopixel/docker-google-closure-compiler-api

This image allows you to Compile your JS code using `Google Closure Compiler API <https://developers.google.com/closure/compiler/>`_ in CLI

Install
=======

.. code::

    pip3 install google_closure_compiler_api

Usage
=====
.. code::

    usage: compiler.py [-h] [--js JS] [--js_output_file JS_OUTPUT_FILE] [--compilation_level {WHITESPACE_ONLY,SIMPLE_OPTIMIZATIONS,ADVANCED_OPTIMIZATIONS}]

    optional arguments:
      -h, --help            show this help message and exit
      --js JS               Input file
      --js_output_file JS_OUTPUT_FILE
                            Output file
      --compilation_level {WHITESPACE_ONLY,SIMPLE_OPTIMIZATIONS,ADVANCED_OPTIMIZATIONS}
                            Compilation level


Default values
--------------

- `--js` : /dev/stdin (input your code)
- `--js_output_file` : /dev/stdout (Prints compiled code in the shell)
- `--compilation_level` : WHITESPACE_ONLY

Docker usage
============

.. code::

    docker run --rm -ti -v /path/to/my/file.js:/root/myfile.js femtopixel/google-closure-compiler --js /root/myfile.js

