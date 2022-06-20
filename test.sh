#!/bin/bash

assert () {
  expected="$1"
  input="$2"

  ./hscc "$input" > tmp.s
  cc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but instead got $actual"
    exit 1
  fi
}

assert 0 "0"

echo OK
