#!/bin/bash
case $1 in
token)
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 system buyram useraaaaaaag useraaaaaaai "10 SYS"
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set contract useraaaaaaai eosio.token eosio.token.wasm eosio.token.abi
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action useraaaaaaai create '["useraaaaaaai","1000000000.0000 EOS"]' -p useraaaaaaai
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action useraaaaaaai issue '["useraaaaaaab","100000000.0000 EOS","xxx"]' -p useraaaaaaai
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action useraaaaaaai issue '["useraaaaaaac","100000000.0000 EOS","xxx"]' -p useraaaaaaai
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action useraaaaaaai issue '["useraaaaaaad","100000000.0000 EOS","xxx"]' -p useraaaaaaai
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaai useraaaaaaab "EOS"
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaai useraaaaaaac "EOS"
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaai useraaaaaaad "EOS"
    ;;
mallard)
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 system newaccount useraaaaaaak gamemallards EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S --buy-ram "100 SYS" --stake-net "100 SYS" --stake-cpu "100 SYS" --transfer
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 transfer useraaaaaaab gamemallards "10.0000 SYS" -p useraaaaaaab
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action useraaaaaaai issue '["gamemallards","1.0000 EOS","xxx"]' -p useraaaaaaai
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaab active '{"threshold":1,"keys":[{"key":"EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaab
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaac active '{"threshold":1,"keys":[{"key":"EOS7WnhaKwHpbSidYuh2DF1qAExTRUtPEdZCaZqt75cKcixuQUtdA","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaac
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaad active '{"threshold":1,"keys":[{"key":"EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaad
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaae active '{"threshold":1,"keys":[{"key":"EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaae
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission gamemallards active '{"threshold":1,"keys":[{"key":"EOS69X3383RzBZj41k73CSjUNXM5MYGpnDxyPnWUKPEtYQmTBWz4D","weight":1}],"accounts":[{"permission":{"actor":"gamemallards","permission":"eosio.code"},"weight":1}]}' owner -p gamemallards
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set contract gamemallards ./ gamemallards.wasm gamemallards.abi
    # init symbol
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 get currency balance eosio.token gamemallards "SYS"
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaai gamemallards "EOS"
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action gamemallards initsymbol '["eosio.token","SYS","0.1000 SYS"]' -p gamemallards
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action gamemallards initsymbol '["useraaaaaaai","EOS","0.1000 EOS"]' -p gamemallards
    cleos --url http://127.0.0.1:51043 get table gamemallards gamemallards currencyinfo
    ;;
lizard)
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 system newaccount useraaaaaaak game12lizard EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S --buy-ram "1000 SYS" --stake-net "1000 SYS" --stake-cpu "1000 SYS" --transfer
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 transfer useraaaaaaab game12lizard "10.0000 SYS" -p useraaaaaaab
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action useraaaaaaai issue '["game12lizard","1.0000 EOS","xxx"]' -p useraaaaaaai
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission useraaaaaaba active '{"threshold":1,"keys":[{"key":"EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaaba
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission useraaaaaabb active '{"threshold":1,"keys":[{"key":"EOS7WnhaKwHpbSidYuh2DF1qAExTRUtPEdZCaZqt75cKcixuQUtdA","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaabb
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission useraaaaaabc active '{"threshold":1,"keys":[{"key":"EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaabc
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission useraaaaaabd active '{"threshold":1,"keys":[{"key":"EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p useraaaaaabd
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set account permission game12lizard active '{"threshold":1,"keys":[{"key":"EOS69X3383RzBZj41k73CSjUNXM5MYGpnDxyPnWUKPEtYQmTBWz4D","weight":1}],"accounts":[{"permission":{"actor":"game12lizard","permission":"eosio.code"},"weight":1}]}' owner -p game12lizard
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 set contract game12lizard ./ game12lizard.wasm game12lizard.abi
    # init symbol
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 get currency balance useraaaaaaai game12lizard "EOS"
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 get currency balance eosio.token game12lizard "SYS"
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action game12lizard initsymbol '["useraaaaaaai","EOS","0.1000 EOS"]' -p game12lizard
    cleos --url http://127.0.0.1:51043 --wallet-url http://127.0.0.1:6666 push action game12lizard initsymbol '["eosio.token","SYS","0.1000 SYS"]' -p game12lizard
    cleos --url http://127.0.0.1:51043 get table game12lizard game12lizard currencyinfo
    ;;
esac