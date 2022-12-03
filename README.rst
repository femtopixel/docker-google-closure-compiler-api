 .. image:: https://github.com/femtopixel/docker-google-closure-compiler-api/raw/master/logo.png
    :alt: latest release
    :target: http://github.com/femtopixel/docker-google-closure-compiler-api/releases

==========================================
Google Closure Compiler API - Docker Image
==========================================

.. image:: https://img.shields.io/github/release/femtopixel/docker-google-closure-compiler-api.svg
    :alt: latest release
    :target: http://github.com/femtopixel/docker-google-closure-compiler-api/releases
.. image:: https://img.shields.io/pypi/v/google-closure-compiler-api.svg
    :alt: PyPI version
    :target: https://pypi.org/project/google-closure-compiler-api/
.. image:: https://img.shields.io/docker/pulls/femtopixel/google-closure-compiler.svg
    :target: https://hub.docker.com/r/femtopixel/google-closure-compiler/
.. image:: https://img.shields.io/docker/stars/femtopixel/google-closure-compiler.svg
    :target: https://hub.docker.com/r/femtopixel/google-closure-compiler/
.. image:: https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png
    :alt: PayPal donation
    :target: https://www.paypal.me/jaymoulin
.. image:: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png
     :alt: Buy me a coffee
     :target: https://www.buymeacoffee.com/jaymoulin
.. image:: https://storage.ko-fi.com/cdn/kofi2.png
    :alt: Buy me a coffee
    :target: https://ko-fi.com/jaymoulin

DISCLAIMER: As-of 2021, this product does not have a free support team anymore. If you want this product to be maintained, please support.


(This product is available under a free and permissive license, but needs financial support to sustain its continued improvements. In addition to maintenance and stability there are many desirable features yet to be added.)

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

