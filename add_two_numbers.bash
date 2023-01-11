#! /usr/bin/bash

# Function declaration
# ======== ===========
# Declare an identifier addition and
# set it's function property
declare -f addition

# Function definition
# ======== ==========
# A function definition is composed of
# a function header and a function body
function addition()
{
  # Print this message to indicate that we
  # are within the function body. FUNCNAME
  # is a predefined shell builtin variable
  # that contains the name of currently
  # executing function
  printf "%s\n" Executing\ function\ \'${FUNCNAME}\'

  # Declare an identifier SUM and
  # set it's integer attribute.
  # Initialize it to zero
  declare -i SUM=0

  # $# is a predefined shell builtin variable
  # that contains the number of positional
  # parameters that are passed to the calling
  # context. This function can add only a fixed
  # number of numbers; in this case it is two
  if [[ ${#} == 2 ]]
  then
    SUM=$(( ${1} + ${2} ))
    printf "Sum of '%d' and '%d' is '%d'\n" ${1} ${2} ${SUM}
  fi
}

# Use the read command to prompt the user
# to enter a number and store it in the
# FIRST_NUMBER variable. The argument to
# -p option is the prompt text
read -p 'Enter first number: ' FIRST_NUMBER

# Use the read command to prompt the user
# to enter a number and store it in the
# SECOND_NUMBER variable. The argument to
# -p option is the prompt text
read -p 'Enter second number: ' SECOND_NUMBER

# Function call
addition ${FIRST_NUMBER} ${SECOND_NUMBER}
