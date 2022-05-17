module github.com/dojimanetwork/binance-sdk

require (
	github.com/binance-chain/ledger-cosmos-go v0.9.9-binance.1
	github.com/btcsuite/btcd v0.21.0-beta
	github.com/btcsuite/btcutil v1.0.2
	github.com/cosmos/go-bip39 v0.0.0-20180819234021-555e2067c45d
	github.com/gorilla/websocket v1.4.2
	github.com/pkg/errors v0.9.1
	github.com/stretchr/testify v1.6.1
	github.com/tendermint/btcd v0.0.0-20180816174608-e5840949ff4f
	github.com/tendermint/go-amino v0.14.1
	github.com/tendermint/tendermint v0.34.0
	github.com/zondax/hid v0.9.0 // indirect
	github.com/zondax/ledger-go v0.12.1 // indirect
	golang.org/x/crypto v0.0.0-20201016220609-9e8e0b390897
	gopkg.in/resty.v1 v1.12.0
)

replace github.com/tendermint/go-amino => github.com/binance-chain/bnc-go-amino v0.14.1-binance.1

replace github.com/zondax/ledger-go => github.com/binance-chain/ledger-go v0.9.1

go 1.14
