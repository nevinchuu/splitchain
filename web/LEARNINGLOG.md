Learning Log
Day 1: Setup of WSL, Node, Git, Foundry and a dev wallet on Base Sepolia, initalised the Splitchain Repo

Day 2: Sent my first Base Sepolia Transaction
<https://sepolia.basescan.org/tx/0x9fff75d093f486f343c00ebda0797d74a04615d1978a9b199a9a242126544640>

Gas is transaction fees
My transfer used 21000 at 0.006 Gwei, so the fee was 0.000000126 ETH, including the fee from L1

A plain ETH Transfer always uses 21000 gas because no contracts are being executed.

The nonce went from 0 to 1 because nounce is linked to the number of transactions sent from my address

On anvil the fee didnt matter because it was local test chain with fake prefunded ETH. The fees there cost nothing real.

