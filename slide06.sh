#!/bin/bash

echo "BATS example"
read
cat <<'TEST_EOF'
   @test "no args gives usage instructions" {
       run git-seekret
       [ $status -eq 0 ]
       [ $(expr "${lines[2]}" : "USAGE:") -ne 0 ]
   }
TEST_EOF
echo "$EXAMPLE_TEST"
exit 0;
###Show BATS example
