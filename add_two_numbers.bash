#! /bin/bash

# Display the argument to the -p option
# on the console and read the number into
# variable FIRST_NUMBER. The argument to
# -p option is the prompt text
read -p 'Enter first number: ' FIRST_NUMBER

# Display the argument to the -p option
# on the console and read the number into
# variable SECOND_NUMBER. The argument to
# -p option is the prompt text
read -p 'Enter second number: ' SECOND_NUMBER

# Declare a SUM identifier and set it's
# integer property. Store the sum of variables
# FIRST_NUMBER and SECOND_NUMBER in SUM
declare -i SUM=$(( ${FIRST_NUMBER} + ${SECOND_NUMBER} ))

# Display the result
printf "The sum of '%d' and '%d' is '%d'\n" ${FIRST_NUMBER} ${SECOND_NUMBER} ${SUM}
