#! /bin/bash

read -p "Enter a number between 0-9: " NUMBER

# "$var"="val" ===> assignment
# "$var" = "val" ===> comparision

if ! [[ $NUMBER =~ ^[0-9]+$ ]]; then
    echo "The provided input is not a number recognised by the system!!"
    exit 1
else
    echo "The numebr you choose is: ${NUMBER}"
fi

exit 0

## READ

# In Bourne-like shells, an if statement typically looks like

# if
#    command-list1
# then
#    command-list2
# else
#    command-list3
# fi
# The then clause is executed if the exit code of the command-list1 list of commands is zero. If the exit code is nonzero, then the else clause is executed. command-list1 can be simple or complex. It can, for example, be a sequence of one or more pipelines separated by one of the operators ;, &, &&, || or newline. The if conditions shown below are just special cases of command-list1:

# if [ condition ]

# [ is another name for the traditional test command. [ / test is a standard POSIX utility. All POSIX shells have it builtin (though that's not required by POSIX²). The test command sets an exit code and the if statement acts accordingly. Typical tests are whether a file exists or one number is equal to another.

# if [[ condition ]]

# This is a new upgraded variation on test¹ from ksh that bash, zsh, yash, busybox sh also support. This [[ ... ]] construct also sets an exit code and the if statement acts accordingly. Among its extended features, it can test whether a string matches a wildcard pattern (not in busybox sh).

# if ((condition))

# Another ksh extension that bash and zsh also support. This performs arithmetic. As the result of the arithmetic, an exit code is set and the if statement acts accordingly. It returns an exit code of zero (true) if the result of the arithmetic calculation is nonzero. Like [[...]], this form is not POSIX and therefore not portable.

# if (command)

# This runs command in a subshell. When command completes, it sets an exit code and the if statement acts accordingly.

# A typical reason for using a subshell like this is to limit side-effects of command if command required variable assignments or other changes to the shell's environment. Such changes do not remain after the subshell completes.

# if command

# command is executed and the if statement acts according to its exit code.

# Note that [ ... ] and [[ ... ]] require whitespace around them, while (...) and ((...)) do not.
