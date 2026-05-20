# MERIDIAN — RWA Tokenization Platform

**Private Credit · Invoice Factoring · Trade Finance**

> **Brand:** Zellium
> **Prepared by:** aiman.eth
> **Version:** 1.0 — May 2026
> **Classification:** Confidential

---

## Executive Summary

| Metric | Value |
|--------|-------|
| 💰 RWA Market On-Chain | **$50B+** (excl. stablecoins) |
| 🌍 Target Regions | Southeast Asia · LATAM · Africa |
| ⚡ Platform Modules | 5 Full-Stack Modules |
| 🔴 Difficulty Rating | Hard |

Tokenized Real-World Assets have crossed **$50B+** on-chain, yet the tooling to create, manage, and trade tokenized assets remains fragmented and enterprise-unfriendly.

**The massive gap:** Emerging market private credit — invoice factoring, trade finance, and SME lending — where traditional banks don't serve. Meridian fills this gap with a **full-stack tokenization platform** targeting traditional asset managers in Southeast Asia, LATAM, and Africa.

---

## Platform Modules

### 📋 Module 1: Issuer Dashboard
- KYC-gated onboarding for asset originators
- SPV (Special Purpose Vehicle) legal wrapper generation
- Token minting & lifecycle management
- Real-time repayment tracking via oracle integration

### 🛡️ Module 2: Compliance Engine
- Automated KYC/AML verification checks
- Jurisdiction-specific transfer restrictions (encoded on-chain)
- Tax reporting & downloadable audit trails
- OFAC/PEP/sanctions screening

### 📊 Module 3: Secondary Market (Permissioned DEX)
- Order book with bid/ask depth visualization
- Only accredited/verified investors can trade
- Limit & market order types
- 0.5% platform trading fee

### 💎 Module 4: Yield Distribution
- Automated coupon/interest payments via smart contract
- Push model (auto-distribute) & pull model (user claims)
- Distribution calendar with upcoming payment schedules
- Full on-chain settlement with tx hash audit trail

### 🔗 Module 5: Oracle Integration
- Real-time repayment tracking from off-chain loan servicing
- Chainlink-compatible data feeds for asset valuations
- Automated default detection & notification triggers

---

## Tech Stack

| Layer | Technology | Purpose |
|-------|-----------|---------|
| **Blockchain** | Ethereum + Avalanche Subnets | Institutional trust + permissioned environments |
| **Token Standard** | ERC-3643 (T-REX) | Compliant security tokens with identity hooks |
| **Identity** | On-chain DID + Verifiable Credentials | KYC/accreditation without exposing PII |
| **Legal** | SPV Wrappers (Centrifuge-style) | Off-chain legal entity structure |
| **Frontend** | Vite + React 18 + ethers.js v6 | Premium dashboard application |
| **Contracts** | Hardhat + Solidity 0.8.24 | 6 core smart contracts |
| **Backend** | Node.js + Express | API layer, oracle service, KYC mock |
| **Charts** | Recharts | Portfolio & yield data visualization |

---

## Smart Contract Architecture

### Identity Layer
| Contract | Purpose |
|----------|---------|
| `IdentityRegistry.sol` | Register/verify on-chain identities with country & investor type |
| `ClaimVerifier.sol` | Validate credential claims (KYC, accreditation, jurisdiction) |

### Compliance Layer
| Contract | Purpose |
|----------|---------|
| `ComplianceModule.sol` | Modular rule engine — `canTransfer()` checks before every transfer |
| `TransferRestrictions.sol` | Jurisdiction blocks, holding periods, max holders |

### Token Layer
| Contract | Purpose |
|----------|---------|
| `CreditToken.sol` | ERC-3643 compliant token with mint/burn/forcedTransfer |
| `SPVFactory.sol` | Factory pattern to deploy new SPV-backed token instances |

### Market Layer
| Contract | Purpose |
|----------|---------|
| `PermissionedDEX.sol` | Order matching with compliance gates, 0.5% fee collection |

### Yield Layer
| Contract | Purpose |
|----------|---------|
| `YieldDistributor.sol` | Automated coupon payments (push + pull distribution models) |

---

## User Flow 1 — Asset Issuer Journey

> SMEs, lenders, and originators tokenizing private credit instruments

```
┌─────────────────────────────────────────────────────┐
│  STEP 1: Onboarding & KYC                          │
│  Issuer registers, submits entity docs.             │
│  Compliance Engine runs OFAC/PEP/jurisdiction       │
│  checks automatically.                             │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 2: SPV Creation                               │
│  Legal wrapper generated for the asset pool.        │
│  Jurisdiction selected (Cayman, BVI, Singapore).    │
│  SPV isolates credit risk from originator.          │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 3: Asset Configuration                        │
│  Upload invoice/loan details: debtor info, face     │
│  value, maturity, interest rate, risk rating.       │
│  Documents stored in encrypted vault.               │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 4: Token Minting                              │
│  CreditToken.sol deploys ERC-3643 compliant token.  │
│  Transfer restrictions encoded on-chain via         │
│  ComplianceModule.                                  │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 5: Marketplace Listing                        │
│  Token listed on Investor Marketplace. Accredited   │
│  investors browse & analyze. Oracle begins          │
│  tracking repayments.                               │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 6: Yield & Maturity                           │
│  YieldDistributor.sol automates coupon payments.    │
│  At maturity: tokens burned, principal returned.    │
└─────────────────────────────────────────────────────┘
```

---

## User Flow 2 — Investor Journey

> Accredited investors deploying capital into tokenized private credit

```
┌─────────────────────────────────────────────────────┐
│  STEP 1: Wallet Connect & KYC                       │
│  Connect MetaMask/WalletConnect. Complete KYC       │
│  verification. On-chain DID credential issued.      │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 2: Browse Marketplace                         │
│  Filter by: yield, risk rating, maturity,           │
│  jurisdiction. View SPV details & debtor profile.   │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 3: Due Diligence                              │
│  Review legal docs, credit scores, repayment        │
│  history, oracle data. Run investment calculator.   │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 4: Invest (Primary Market)                    │
│  Commit USDC/USDT to purchase credit tokens.        │
│  Smart contract verifies identity compliance.       │
│  Tokens appear in portfolio.                        │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 5: Trade (Secondary Market)                   │
│  List tokens on Permissioned DEX. Only verified     │
│  investors can trade. Order book matching.          │
└──────────────────────┬──────────────────────────────┘
                       ▼
┌─────────────────────────────────────────────────────┐
│  STEP 6: Yield Collection                           │
│  Automated coupon payments to wallet. Track yield   │
│  on dashboard. At maturity, principal returned.     │
└─────────────────────────────────────────────────────┘
```

---

## Flow 3 — Compliance & Transfer Logic

> Every token transfer passes through this on-chain pipeline

The ERC-3643 standard enforces compliance at the smart contract level. **No transfer can occur without passing all checks** — this is enforced on-chain and cannot be bypassed.

| Step | Check | Description |
|------|-------|-------------|
| ① | **Identity Check** | IdentityRegistry verifies both sender and receiver have valid on-chain DIDs |
| ② | **Jurisdiction Check** | ComplianceModule validates no country-to-country restriction violations |
| ③ | **Investor Type Check** | Verifies receiver is accredited/qualified for the asset class |
| ④ | **Holding Period Check** | Enforces lock-up periods — no transfers before minimum duration |
| ⑤ | **Max Holders Check** | Ensures token doesn't exceed regulatory holder cap |
| ⑥ | **Transfer Executes ✓** | All checks pass → atomic on-chain execution with full audit trail |

### Forced Transfer (Regulatory Override)
In cases of court orders, lost keys, or regulatory action, authorized agents can execute **forced transfers** — moving tokens between wallets without standard compliance checks. This is a critical feature for regulated securities that standard ERC-20 tokens lack.

---

## Revenue Model

| Revenue Stream | Rate | Description |
|---------------|------|-------------|
| **Issuance Fee** | 0.5 — 1% | One-time fee on total token issuance volume |
| **Management Fee** | 0.25% / year | Annual fee on assets under management |
| **Trading Fee** | 0.5% | Per-trade fee on secondary market transactions |
| **Compliance SaaS** | Subscription | Monthly compliance-as-a-service for issuers |

---

## Target Markets

### 🌏 Southeast Asia
- Invoice factoring for SMEs
- Trade finance corridors
- Malaysia, Singapore, Philippines

### 🌎 LATAM
- SME lending markets
- Cross-border trade finance
- Brazil, Mexico, Colombia

### 🌍 Africa
- Agricultural trade finance
- Microfinance tokenization
- Nigeria, Kenya, South Africa

---

## Competitive Advantage

**Centrifuge, Maple, and Goldfinch** focus on DeFi-native users. Meridian targets **traditional asset managers** in emerging markets who want to tokenize but need hand-holding. Our platform abstracts blockchain complexity behind familiar financial workflows — no crypto expertise required.

> *"BlackRock's BUIDL fund proved institutions are ready. The next wave is mid-market firms tokenizing illiquid assets. Regulatory clarity in 2026 makes this finally viable."*

---

**Zellium** · Prepared by aiman.eth · May 2026 · Confidential
