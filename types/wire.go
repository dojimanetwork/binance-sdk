package types

import (
	"github.com/tendermint/go-amino"

	ntypes "github.com/dojimanetwork/binance-sdk/common/types"
	"github.com/dojimanetwork/binance-sdk/types/tx"
)

func NewCodec() *amino.Codec {
	cdc := amino.NewCodec()

	ntypes.RegisterWire(cdc)
	tx.RegisterCodec(cdc)
	return cdc
}
