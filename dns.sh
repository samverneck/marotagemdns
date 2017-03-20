#!/bin/bash

host -t ns $!
host -t mx $!

for ns in ${host -t ns $! | cut -d " " -f 4};
do
host -l $! $ns;
done

for palavra in $(cat lista.txt);
do
                   #mostra somente os que tem endereços
host $palavra.$! | grep "has address";
done 