#!/bin/bash
case $1 in
token)
    cleos --wallet-url http://127.0.0.1:6666 system buyram useraaaaaaag useraaaaaaaj "10 SYS"
    cleos --wallet-url http://127.0.0.1:6666 set contract useraaaaaaaj /home/eos/eosio.contracts/build/eosio.token/ eosio.token.wasm eosio.token.abi
    cleos --wallet-url http://127.0.0.1:6666 push action useraaaaaaaj create '["useraaaaaaai","100000000.0000 TES"]' -p useraaaaaaaj
    cleos --wallet-url http://127.0.0.1:6666 push action useraaaaaaaj issue '["useraaaaaaab","100000.0000 TES","xxx"]' -p useraaaaaaai
    cleos --wallet-url http://127.0.0.1:6666 push action useraaaaaaaj issue '["useraaaaaaac","10000.0000 TES","xxx"]' -p useraaaaaaai
    cleos --wallet-url http://127.0.0.1:6666 push action useraaaaaaaj issue '["useraaaaaaad","10000.0000 TES","xxx"]' -p useraaaaaaai
    cleos --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaaj useraaaaaaab "TES"
    cleos --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaaj useraaaaaaac "TES"
    cleos --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaaj useraaaaaaad "TES"
    ;;
mallard)
    cleos --wallet-url http://127.0.0.1:6666 system newaccount useraaaaaaak gamemallards EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S --buy-ram "100 SYS" --stake-net "100 SYS" --stake-cpu "100 SYS" --transfer
    cleos --wallet-url http://127.0.0.1:6666 transfer useraaaaaaab gamemallards "10.0000 SYS" -p useraaaaaaab
    cleos --wallet-url http://127.0.0.1:6666 push action useraaaaaaaj issue '["gamemallards","1.0000 TES","xxx"]' -p useraaaaaaai
    cleos --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaab active '{"threshold":1,"keys":[{"key":"EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaab
    cleos --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaac active '{"threshold":1,"keys":[{"key":"EOS7WnhaKwHpbSidYuh2DF1qAExTRUtPEdZCaZqt75cKcixuQUtdA","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaac
    cleos --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaad active '{"threshold":1,"keys":[{"key":"EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaad
    cleos --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaae active '{"threshold":1,"keys":[{"key":"EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaae
    cleos --wallet-url http://127.0.0.1:6666 set account permission gamemallards active '{"threshold":1,"keys":[{"key":"EOS69X3383RzBZj41k73CSjUNXM5MYGpnDxyPnWUKPEtYQmTBWz4D","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p gamemallards
    cleos --wallet-url http://127.0.0.1:6666 set contract gamemallards ./ mallard.wasm mallard.abi
    # init symbol
    cleos --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaaj gamemallards "TES"
    cleos --wallet-url http://127.0.0.1:6666 get currency balance eosio.token gamemallards "SYS"
    cleos --wallet-url http://127.0.0.1:6666 push action gamemallards initsymbol '["useraaaaaaaj","TES","0.1000 TES"]' -p gamemallards
    cleos --wallet-url http://127.0.0.1:6666 push action gamemallards initsymbol '["eosio.token","SYS","0.1000 SYS"]' -p gamemallards
    cleos get table gamemallards gamemallards currencyinfo
    ;;
lizard)
    cleos --wallet-url http://127.0.0.1:6666 system newaccount useraaaaaaak game12lizard EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S --buy-ram "1000 SYS" --stake-net "1000 SYS" --stake-cpu "1000 SYS" --transfer
    cleos --wallet-url http://127.0.0.1:6666 transfer useraaaaaaab game12lizard "10.0000 SYS" -p useraaaaaaab
    cleos --wallet-url http://127.0.0.1:6666 push action useraaaaaaaj issue '["game12lizard","1.0000 TES","xxx"]' -p useraaaaaaai
    cleos --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaba active '{"threshold":1,"keys":[{"key":"EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaba
    cleos --wallet-url http://127.0.0.1:6666 set account permission useraaaaaabb active '{"threshold":1,"keys":[{"key":"EOS7WnhaKwHpbSidYuh2DF1qAExTRUtPEdZCaZqt75cKcixuQUtdA","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaabb
    cleos --wallet-url http://127.0.0.1:6666 set account permission useraaaaaabc active '{"threshold":1,"keys":[{"key":"EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaabc
    cleos --wallet-url http://127.0.0.1:6666 set account permission useraaaaaabd active '{"threshold":1,"keys":[{"key":"EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaabd
    cleos --wallet-url http://127.0.0.1:6666 set account permission game12lizard active '{"threshold":1,"keys":[{"key":"EOS69X3383RzBZj41k73CSjUNXM5MYGpnDxyPnWUKPEtYQmTBWz4D","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p game12lizard
    cleos --wallet-url http://127.0.0.1:6666 set contract game12lizard ./ lizard.wasm lizard.abi
    # init symbol
    cleos --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaaj game12lizard "TES"
    cleos --wallet-url http://127.0.0.1:6666 get currency balance eosio.token game12lizard "SYS"
    cleos --wallet-url http://127.0.0.1:6666 push action game12lizard initsymbol '["useraaaaaaaj","TES","0.1000 TES"]' -p game12lizard
    cleos --wallet-url http://127.0.0.1:6666 push action game12lizard initsymbol '["eosio.token","SYS","0.1000 SYS"]' -p game12lizard
    cleos get table game12lizard game12lizard currencyinfo
    ;;
esac