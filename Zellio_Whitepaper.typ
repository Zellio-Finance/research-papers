#set document(title: "Zellio: Institutional Grade Real World Asset Tokenization", author: ("Aiman Asyraf", "Solahuddin"))
#set page(
  paper: "a4",
  margin: (x: 1.25in, y: 1.25in),
  numbering: "1",
)
#set text(font: "Arial", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")

#show heading: it => [
  #v(1.2em)
  #text(weight: "bold", size: 1.1em)[#it]
  #v(0.6em)
]

#align(center)[
  #grid(
    columns: (auto, auto),
    gutter: 0.6em,
    align: horizon,
    image("packages/frontend/public/logo-black.png", height: 3.5em),
    text(26pt, weight: "bold", font: "Arial")[Zellio]
  )
  #v(1em)
  #text(18pt, weight: "bold")[Zellio Global Markets: An Institutional Framework for Programmable Real World Assets and Islamic Finance]
  
  #v(1.5em)
  #text(12pt)[
    *Solahuddin* (Co Founder, CEO) $space$ and $space$ *Aiman Asyraf* (Co Founder, CTO)
  ]
  #v(1em)
  Zellio Research \
  #datetime.today().display()
  #v(2.5em)
]

#align(center)[
  *Abstract*
]
#pad(x: 2em)[
  _The fragmentation of traditional financial (TradFi) markets creates immense capital inefficiencies, characterized by high settlement times, jurisdictional siloing, and exorbitant intermediary fees. This paper introduces the Zellio protocol, a decentralized, institutional grade Real World Asset (RWA) tokenization layer designed to bridge traditional securities with programmable Web3 infrastructure. We present a legally robust, bankruptcy remote architecture utilizing the ERC 3643 (T REX) standard to ensure strict jurisdictional compliance and on chain identity verification (eKYC). Furthermore, we detail the novel implementation of tokenized Shariah compliant Sukuk, executing Mudarabah (profit sharing) logic via immutable smart contracts to eliminate Riba (usury) and Gharar (uncertainty). Finally, we formalize the mathematics behind zUSD, a yield bearing stablecoin backed by short duration US Treasuries, demonstrating algorithmic rebasing mechanics for frictionless yield distribution. Zellio establishes a comprehensive blueprint for the tokenized future of Asian and global capital markets._
]

#v(2em)

= Introduction
The global financial system operates on antiquated infrastructure. Settlement times for traditional equities remain heavily reliant on the T+2 (or optimally T+1) standard, trapping billions of dollars in counterparty risk. The emergence of blockchain technology and Decentralized Finance (DeFi) introduced atomic settlement and 24/7 liquidity; however, the lack of regulatory compliance has prevented institutional adoption. 

Zellio Global Markets solves this dichotomy by deploying permissioned, compliant tokens on public, permissionless infrastructure (Base, Ethereum, Solana). By wrapping highly liquid traditional assets such as US equities (e.g., NVDA, TSLA) and sovereign debt into ERC 3643 standard security tokens, Zellio provides institutions with the regulatory guarantees of TradFi combined with the composability of DeFi.

= System Architecture and Legal Framework
To ensure absolute protection of tokenholder capital, Zellio operates under a "defense in depth" legal structure.

== The Special Purpose Vehicle (SPV) Model
All underlying physical and financial assets are held by a legally isolated Special Purpose Vehicle (SPV). The SPV serves exclusively to hold assets on behalf of the tokenholders. In the event of Zellio's insolvency, the SPV is bankruptcy remote; creditors cannot access the assets backing the tokens. 

== Custody and Attestation
Digital assets and protocol administration keys are secured using multi party computation (MPC) infrastructure. The physical assets are custodied by tier 1 regulated financial institutions. A 1:1 backing ratio is strictly maintained and verified through monthly attestations performed by independent auditing firms, ensuring transparency on chain via decentralized oracle networks.

= Identity Protocol and ERC 3643
A core tenet of the Zellio architecture is the integration of the ERC 3643 Token for Regulated Exchanges (T REX) standard. Unlike permissionless ERC 20 tokens, ERC 3643 restricts token transfers based on an on chain Identity Registry.

== On Chain eKYC and Verifiable Credentials
Before interacting with the primary minting portal or the secondary AMM, users must undergo a rigorous Know Your Customer (eKYC) process conforming to Bank Negara Malaysia (BNM) standards. Upon successful verification via providers such as Sumsub, a zero knowledge Verifiable Credential (VC) is minted to the user's wallet. 

When a transaction is initiated, the token contract queries the Identity Registry. The transfer $T$ from sender $A$ to receiver $B$ is only executed if:
$ "IdentityRegistry"(A) = "Verified" and "IdentityRegistry"(B) = "Verified" $
This deterministic restriction completely eliminates the risk of tokenized securities entering sanctioned or non compliant wallets.

= On Chain Shariah Compliance: Sukuk Tokenization
Zellio pioneers the integration of Islamic Finance into the Web3 ecosystem via tokenized Sukuk (Islamic bonds). Traditional interest bearing bonds violate the Islamic prohibition of _Riba_ (usury). A Sukuk, conversely, represents partial ownership of a tangible asset, with yield derived from the profit generated by that asset.

== The Mudarabah Smart Contract Model
Zellio implements a _Mudarabah_ (profit sharing) partnership model on chain. The tokenholders provide the capital (Rab al Maal), while Zellio (or a designated partner) acts as the manager (Mudarib). 

Let $P$ be the total profit generated by the underlying physical asset over period $t$. The smart contract automatically distributes this profit based on a pre defined, immutable ratio $R_h$ for tokenholders and $R_m$ for the manager, where $R_h + R_m = 1$. The yield $Y_i$ distributed to tokenholder $i$ holding balance $B_i$ out of total supply $S$ is executed atomically as:
$ Y_i = (B_i / S) times (P times R_h) $
This logic eliminates the opacity of traditional profit distribution and ensures strict adherence to Shariah principles, overseen by an independent Shariah Advisory Board.

= Algorithmic Yield: The zUSD Rebasing Token
zUSD is Zellio's native yield bearing stablecoin, backed 1:1 by highly liquid cash equivalents and short duration US Treasuries. It operates as a rebasing token, meaning the balance in a user's wallet automatically increases to reflect accrued yield.

== Rebasing Mathematics
The supply of zUSD expands algorithmically to mirror the yield generated by the off chain treasury assets. Let $B_0$ be the initial balance, $r$ be the annualized yield rate (APY), and $t$ be the time elapsed in days. The new balance $B_t$ is calculated block by block as:
$ B_t = B_0 times (1 + r / 365)^t $
Because the token balance itself increases, zUSD acts as a drop in replacement for traditional stablecoins in DeFi protocols while providing users with the "risk free rate."

= Conclusion
Zellio Global Markets represents the necessary evolution of institutional finance. By combining the bankruptcy remote security of traditional capital markets with the programmatic efficiency of the ERC 3643 standard, algorithmic rebasing, and immutable Shariah compliant smart contracts, Zellio is uniquely positioned to capture the multi trillion dollar Real World Asset tokenization opportunity in Asia and beyond.
