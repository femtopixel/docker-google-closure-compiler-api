#!/usr/local/bin/python3

import http.client, urllib.parse, sys, argparse

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--js", default='/dev/stdin', help="Input file")
    parser.add_argument("--js_output_file", default='/dev/stdout', help="Output file")
    parser.add_argument("--compilation_level", default='WHITESPACE_ONLY', choices=['WHITESPACE_ONLY', 'SIMPLE_OPTIMIZATIONS', 'ADVANCED_OPTIMIZATIONS'], help="Compilation level")
    parser.add_argument("--js_externs", default='', help="Declare some external js vars and functions separated with semicolon")
    args = parser.parse_args()
    js_code = open(args.js, 'r')

    params = urllib.parse.urlencode([
        ('js_code', js_code.read()),
        ('compilation_level', args.compilation_level),
        ('output_format', 'text'),
        ('output_info', 'compiled_code'),
        ('js_externs', args.js_externs),
    ])

    js_code.close()
    headers = { "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8" }
    conn = http.client.HTTPSConnection('closure-compiler.appspot.com')
    conn.request('POST', '/compile', params, headers)
    response = conn.getresponse()
    data = response.read()
    output_code = open(args.js_output_file, 'w')
    output_code.write(data.decode("utf-8"))
    output_code.close()
    conn.close()

if __name__ == "__main__":
    main()
