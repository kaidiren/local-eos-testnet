cleos set contract eosio contracts/eosio.bios
sleep 1
cleos create account eosio eosio.token EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.bpay EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.msig EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.names EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.ram EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.ramfee EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.saving EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.stake EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.upay EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos set contract eosio.token contracts/eosio.token
sleep 1
cleos push action eosio.token create '{"issuer":"eosio", "maximum_supply": "1000000000.0000 EOS", "can_freeze": 0, "can_recall": 0, "can_whitelist": 0}' -p eosio.token
sleep 1
cleos push action eosio.token issue '{"to":"eosio","quantity":"1000000000.0000 EOS","memo":"issue"}' -p eosio

cleos set contract eosio contracts/eosio.system
sleep 1

cleos system regproducer eosio EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV

cleos system newaccount eosio eosio112233 EOS78yrx7KJEvo7UWxosdSykJCcmSyEFeDzykuYBtTCwTvZir9Wn1 EOS6ZzHwHTHoehE2bFbydf2mSXxLksY8LYE2J5paf3iXyGsbuvtgX --stake-net "1000.0000 EOS" --stake-cpu "1000.0000 EOS" --buy-ram-kbytes "12800 KiB"
cleos system newaccount eosio eosio223344 EOS78yrx7KJEvo7UWxosdSykJCcmSyEFeDzykuYBtTCwTvZir9Wn1 EOS6ZzHwHTHoehE2bFbydf2mSXxLksY8LYE2J5paf3iXyGsbuvtgX --stake-net "1000.0000 EOS" --stake-cpu "1000.0000 EOS" --buy-ram-kbytes "12800 KiB"


cleos push action eosio.token transfer '{"from": "eosio", "to":"eosio112233","quantity":"10000.0000 EOS","memo":"give"}' -p eosio
cleos push action eosio.token transfer '{"from": "eosio", "to":"eosio223344","quantity":"10000.0000 EOS","memo":"give"}' -p eosio


cleos system newaccount eosio vote EOS78yrx7KJEvo7UWxosdSykJCcmSyEFeDzykuYBtTCwTvZir9Wn1 EOS6ZzHwHTHoehE2bFbydf2mSXxLksY8LYE2J5paf3iXyGsbuvtgX --stake-net "100000000.0000 EOS" --stake-cpu "100000000.0000 EOS" --buy-ram-kbytes "12800 KiB"
cleos system regproducer vote EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos system voteproducer prods eosio eosio
cleos system unregprod vote
cleos system undelegatebw eosio vote "100000000.0000 EOS" "100000000.0000 EOS"
cleos get table eosio eosio global
