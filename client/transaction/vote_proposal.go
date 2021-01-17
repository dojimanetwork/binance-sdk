package transaction

import (
	"gitlab.com/thorchain/binance-sdk/types/msg"
	"gitlab.com/thorchain/binance-sdk/types/tx"
)

type VoteProposalResult struct {
	tx.TxCommitResult
}

func (c *client) VoteProposal(proposalID int64, option msg.VoteOption, sync bool, options ...Option) (*VoteProposalResult, error) {
	fromAddr := c.keyManager.GetAddr()
	voteMsg := msg.NewMsgVote(fromAddr, proposalID, option)
	commit, err := c.broadcastMsg(voteMsg, sync, options...)
	if err != nil {
		return nil, err
	}

	return &VoteProposalResult{*commit}, err

}
