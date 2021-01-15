#!/bin/bash
if [ "$(./sum 5 10)" != "15" ]
then
    exit 1
fi

if [ "$(./sum 10 20)" != 30 ]
then
    echo "Result error"
    exit 1
else
    echo "Test passed"
fi

if [ "$(./sum string not_supported)" != 0 ]
then
    echo "String error"
    exit 1
else
    echo "Test passed"
fi

if [ "$(./sum 2147483647 0)" != "2147483647" ]
then
    echo "Result error"
    exit 1
else
    echo "Test passed"
fi
