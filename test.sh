# Verify Test File Has Not Been Altered
file="test.sh"
# The expected SHA256 sum
expected_sha256="36eea116b8a9d301216496b6f2fc4ed333c85c6ebe88b429edc77253a2e28417"
actual_sha256=$(sha256sum "$file" | cut -d ' ' -f 1)

# Compare the actual SHA256 sum to the expected one
if [ "$actual_sha256" == "$expected_sha256" ]; then
    echo "The Test File Has Not Been Altered."
else
    echo "SHA256 sums do not match."
    exit 1
fi


num1=25
num2=12
expected_result=5200300

# Test num1 choose num2
output=$(./bc $num1 $num2)
expected_output="There are $expected_result ways to choose $num2 items from a set of $num1 items."
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: The program computed the correct output for $num1 choose $num2."
else
  echo "Expected '$expected_output' but got: $output"
  exit 1
fi


num1=-4
num2=3
expected_result=0

# Test num1 choose num2
output=$(./bc $num1 $num2)
expected_output="There are $expected_result ways to choose $num2 items from a set of $num1 items."
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: The program computed the correct output for $num1 choose $num2."
else
  echo "Expected '$expected_output' but got: $output"
  exit 1
fi


num1=15
num2=17
expected_result=0

# Test num1 choose num2
output=$(./bc $num1 $num2)
expected_output="There are $expected_result ways to choose $num2 items from a set of $num1 items."
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: The program computed the correct output for $num1 choose $num2."
else
  echo "Expected '$expected_output' but got: $output"
  exit 1
fi

num1=30
num2=15
expected_result=155117520

# Test num1 choose num2
output=$(./bc $num1 $num2)
expected_output="There are $expected_result ways to choose $num2 items from a set of $num1 items."
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: The program computed the correct output for $num1 choose $num2."
else
  echo "Expected '$expected_output' but got: $output"
  exit 1
fi


num1=30
num2=30
expected_result=1

# Test num1 choose num2
output=$(./bc $num1 $num2)
expected_output="There are $expected_result ways to choose $num2 items from a set of $num1 items."
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: The program computed the correct output for $num1 choose $num2."
else
  echo "Expected '$expected_output' but got: $output"
  exit 1
fi

num1=30
num2=0
expected_result=1

# Test num1 choose num2
output=$(./bc $num1 $num2)
expected_output="There are $expected_result ways to choose $num2 items from a set of $num1 items."
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: The program computed the correct output for $num1 choose $num2."
else
  echo "Expected '$expected_output' but got: $output"
  exit 1
fi


echo "All tests passed."
exit 0