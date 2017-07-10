#!/usr/bin/env bats
#
#load test_helper

@test "$TEST_DESCR" {
  run test -f $SLIDE_FILE
  [ -z "$NEXT" ]
}