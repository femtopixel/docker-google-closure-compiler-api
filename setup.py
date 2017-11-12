#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages

setup(
    name='google_closure_compiler_api',
    python_requires=">=3",
    version='0.1.5',
    packages=find_packages(),
    long_description=open("README.rst", 'r').read(),
    author="Jay MOULIN",
    author_email="jaymoulin@gmail.com",
    description="Google closure compiler CLI API",
    include_package_data=True,
    url='http://github.com/femtopixel/docker-google-closure-compiler-api',
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Programming Language :: Python",
        "License :: OSI Approved :: MIT License",
        "Natural Language :: English",
        "Operating System :: OS Independent",
        "Programming Language :: Python :: 3",
        "Topic :: Multimedia :: Sound/Audio",
    ],
    entry_points={
        'console_scripts': [
            'google-closure-compiler = google_closure_compiler_api.compiler:main',
        ],
    },
    license="MIT",
)
