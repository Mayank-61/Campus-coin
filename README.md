# Campus Coin

## Project Title
Campus Coin

## Project Description
Campus Coin is a lightweight on-chain rewards token designed for universities and student communities. Admins can issue coins to students for participating in campus events, volunteering, or achieving milestones. Students can transfer coins peer-to-peer and redeem (burn) them for perks, merch, or event access.

## Project Vision
To make campus engagement more fun, fair, and transparent by introducing a simple, blockchain-powered participation currency that’s easy to issue, share, and redeem—without the complexity of a full ERC-20 stack.

## Key Features
- 🔐 Admin-controlled issuance: Only the deployer (owner) can mint coins.
- 🔁 Peer-to-peer transfers: Students can send coins to each other.
- 🔥 Redeem/burn: Reduce supply by redeeming coins for rewards.
- 📢 Event logs: On-chain events for issuance, transfers, and redemption.
- 🧩 Minimal footprint: Single, self-contained Solidity contract with no external deps.

Core Contract Functions:
- `issue(address to, uint256 amount)` — Mint coins (owner-only)
- `transferCoin(address to, uint256 amount)` — Send coins to another user
- `redeem(uint256 amount)` — Burn your coins (e.g., for perks)

Note: This is a minimal, non-ERC20 implementation intended for simple reward flows.
<img width="989" height="636" alt="image" src="https://github.com/user-attachments/assets/d75183ce-9c5f-49bf-a713-573d34d6fa64" />
