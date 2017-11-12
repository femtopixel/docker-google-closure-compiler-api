#!/usr/bin/env python

import http.client
import urllib.parse
import argparse

__all__ = ['compile_file']


def compile_file(input_file='/dev/stdin', out='/dev/stdout', level='WHITESPACE_ONLY', external=''):
    js_code = open(input_file, 'r')

    params = urllib.parse.urlencode([
        ('js_code', js_code.read()),
        ('compilation_level', level),
        ('output_format', 'text'),
        ('output_info', 'compiled_code'),
        ('js_externs', external),
    ])

    js_code.close()
    headers = {"Content-Type": "application/x-www-form-urlencoded;charset=UTF-8"}
    conn = http.client.HTTPSConnection('closure-compiler.appspot.com')
    conn.request('POST', '/compile', params, headers)
    response = conn.getresponse()
    data = response.read()
    output_code = open(out, 'w')
    output_code.write(data.decode("utf-8"))
    output_code.close()
    conn.close()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--js", default='/dev/stdin', help="Input file")
    parser.add_argument("--js_output_file", default='/dev/stdout', help="Output file")
    parser.add_argument("--compilation_level", default='WHITESPACE_ONLY',
                        choices=['WHITESPACE_ONLY', 'SIMPLE_OPTIMIZATIONS', 'ADVANCED_OPTIMIZATIONS'],
                        help="Compilation level")
    parser.add_argument("--js_externs", default='',
                        help="Declare some external js vars and functions separated with semicolon")
    args = parser.parse_args()
    compile_file(args.js, args.js_output_file, args.compilation_level, args.js_externs)


if __name__ == "__main__":
    main()
