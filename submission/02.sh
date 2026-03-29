# Create a native segwit address and get the public key from the address.

#!/bin/bash


address=$(bitcoin-cli -regtest -rpcwallet=builderswallet -named getnewaddress)

pubkey=$(bitcoin-cli -regtest -rpcwallet=builderswallet -named getaddressinfo address="$address" | jq -r '.pubkey')

echo $pubkey