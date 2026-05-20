= Zellio: Revenue & Business Model
<zellio-revenue-business-model>
#strong[Project Name:] Zellio #strong[Focus:] Institutional-grade RWA
tokenization engine for Southeast Asia

#line(length: 100%)

== Executive Summary
<executive-summary>
Zellio's business model is designed to capture value across the entire
lifecycle of a tokenized Real World Asset (RWA). By servicing both the
supply side (asset issuers) and the demand side (institutional and
retail investors), Zellio ensures sustainable revenue generation. Our
core monetization strategy relies on a combination of automated on-chain
transaction fees and B2B issuance services.

== 1. Secondary Market Trading Fees (On-Chain)
<secondary-market-trading-fees-on-chain>
The primary, automated revenue driver for Zellio is built directly into our
smart contract infrastructure, optimized for both agility and investor
protection.

- #strong[The Mechanism:] The `PermissionedDEX.sol` contract enforces a
  #strong[dynamic platform fee] (`platformFeeBps`), initialized at
  #strong[0.5%] (50 BPS). To provide absolute trust and investor protection,
  a security guardrail limits the maximum fee to #strong[5.0%]
  (`MAX_FEE_BPS = 500`), preventing any administrative abuse.
- #strong[How it Works:] Every time verified investors trade tokenized
  assets (such as our Solar Sukuk Series I) against stablecoins (USDC or
  MYRC), the platform fee (initially 0.5%) is automatically skimmed during
  the settlement process.
- #strong[Value Capture:] These fees are trustlessly routed to the
  protocol's designated `feeRecipient` treasury address, ensuring
  immediate and transparent revenue realization on every trade executed
  within our walled, compliant ecosystem.

== 2. Asset Tokenization & Issuance (B2B Services)
<asset-tokenization-issuance-b2b-services>
While trading fees provide continuous automated revenue, our primary
clients are traditional finance entities and asset issuers who require
our infrastructure to bring their assets on-chain.

- #strong[Origination & Structuring Fees:] We charge issuers a flat fee
  or a percentage of the total capital raised when they use our "Issuer
  Portal" to deploy a new ERC-3643 compliant Sukuk or private credit
  token. This covers the cost of legal structuring, KYC/AML integration,
  and smart contract deployment.
- #strong[Lifecycle & Management Fees:] We provide ongoing SaaS-like
  infrastructure for cap table management and automated yield
  distribution (via our `YieldDistributor.sol` contract). We charge a
  small percentage on the yields distributed or an annual maintenance
  fee for maintaining the compliance engine and registry updates.

== Summary Statement
<summary-statement>
#emph["Zellio monetizes institutional liquidity. We charge issuers a
premium service fee to securely digitize and manage their assets, and we
capture a 0.5% volume fee on all secondary market trading that occurs
within our compliant infrastructure."]
