// Meridian — RWA Tokenization Platform System Architecture
// Brand: Zellium | Prepared by: aiman.eth

#set document(title: "Meridian — RWA Tokenization Platform", author: "aiman.eth")
#set page(paper: "a4", margin: (x: 1.8cm, y: 2cm), fill: rgb("#0B0F1A"))
#set text(font: "Segoe UI", size: 10pt, fill: rgb("#E2E8F0"))
#set heading(numbering: none)

// --- Color Palette ---
#let navy = rgb("#0B0F1A")
#let card = rgb("#131A2B")
#let border = rgb("#1E293B")
#let gold = rgb("#D4A853")
#let gold-light = rgb("#F5DEB3")
#let emerald = rgb("#10B981")
#let sky = rgb("#38BDF8")
#let rose = rgb("#F43F5E")
#let slate = rgb("#94A3B8")
#let white = rgb("#F8FAFC")

// --- Helpers ---
#let divider() = line(length: 100%, stroke: 0.5pt + border)
#let spacer(h) = v(h)

#let badge(label, color) = box(
  fill: color.lighten(80%),
  radius: 4pt,
  inset: (x: 8pt, y: 3pt),
  text(fill: color.darken(20%), weight: "bold", size: 7pt, upper(label))
)

#let stat-card(icon, value, label) = box(
  width: 100%,
  fill: card,
  radius: 8pt,
  stroke: 0.5pt + border,
  inset: 14pt,
  [
    #text(size: 16pt, icon)
    #h(6pt)
    #text(fill: gold, weight: "bold", size: 18pt, value) \
    #text(fill: slate, size: 8pt, upper(label))
  ]
)

#let flow-arrow() = align(center, text(fill: gold, size: 14pt, "⬇"))

#let flow-step(num, title, desc) = box(
  width: 100%,
  fill: card,
  radius: 8pt,
  stroke: 0.5pt + border,
  inset: 14pt,
  [
    #box(fill: gold, radius: 12pt, inset: (x: 8pt, y: 4pt),
      text(fill: navy, weight: "bold", size: 9pt, num)
    )
    #h(8pt)
    #text(fill: white, weight: "bold", size: 11pt, title) \
    #spacer(4pt)
    #text(fill: slate, size: 9pt, desc)
  ]
)

#let module-card(icon, title, items, accent) = box(
  width: 100%,
  fill: card,
  radius: 8pt,
  stroke: 0.5pt + accent,
  inset: 14pt,
  [
    #text(size: 14pt, icon)
    #h(4pt)
    #text(fill: accent, weight: "bold", size: 11pt, title) \
    #spacer(6pt)
    #for item in items [
      #text(fill: slate, size: 8.5pt, "▸ " + item) \
    ]
  ]
)

// ============================================================
// COVER PAGE
// ============================================================

#align(center + horizon)[
  #spacer(20pt)
  #text(fill: gold, weight: "bold", size: 10pt, tracking: 6pt, upper("Zellium Presents"))
  #spacer(12pt)
  #text(fill: white, weight: "bold", size: 36pt, "MERIDIAN")
  #spacer(4pt)
  #text(fill: gold-light, size: 14pt, "RWA Tokenization Platform")
  #spacer(4pt)
  #text(fill: slate, size: 11pt, "Private Credit · Invoice Factoring · Trade Finance")
  #spacer(30pt)
  #divider()
  #spacer(14pt)

  #grid(columns: (1fr, 1fr, 1fr), gutter: 16pt,
    stat-card("💰", "$50B+", "RWA Market On-Chain"),
    stat-card("🌍", "3 Regions", "SEA · LATAM · Africa"),
    stat-card("⚡", "5 Modules", "Full-Stack Platform"),
  )

  #spacer(30pt)
  #text(fill: slate, size: 9pt, "System Architecture & Flow Document")
  #spacer(4pt)
  #text(fill: slate, size: 9pt, "v1.0 — May 2026")
  #spacer(8pt)
  #text(fill: gold, size: 9pt, "Prepared by aiman.eth")
]

#pagebreak()

// ============================================================
// PAGE 2: EXECUTIVE SUMMARY
// ============================================================

#text(fill: gold, weight: "bold", size: 8pt, tracking: 4pt, upper("Executive Summary"))
#spacer(6pt)
#text(fill: white, weight: "bold", size: 20pt, "The Opportunity")
#spacer(8pt)

#box(fill: card, radius: 8pt, stroke: 0.5pt + border, inset: 16pt, width: 100%)[
  #text(fill: slate, size: 9.5pt)[
    Tokenized Real-World Assets have crossed *\$50B+* on-chain (excluding stablecoins), yet the tooling to create, manage, and trade tokenized assets remains fragmented and enterprise-unfriendly.

    #spacer(6pt)
    *The massive gap:* Emerging market private credit — invoice factoring, trade finance, and SME lending — where traditional banks don't serve. Meridian fills this gap with a *full-stack tokenization platform* targeting traditional asset managers in Southeast Asia, LATAM, and Africa.
  ]
]

#spacer(14pt)
#text(fill: white, weight: "bold", size: 16pt, "What Meridian Delivers")
#spacer(8pt)

#grid(columns: (1fr, 1fr), gutter: 12pt,
  module-card("📋", "Issuer Dashboard", (
    "KYC-gated onboarding",
    "SPV legal wrapper generation",
    "Token minting & management",
    "Repayment tracking",
  ), gold),
  module-card("🛡️", "Compliance Engine", (
    "Automated KYC/AML checks",
    "Jurisdiction transfer restrictions",
    "Tax reporting & audit trails",
    "OFAC/sanctions screening",
  ), emerald),
  module-card("📊", "Secondary Market", (
    "Permissioned DEX (accredited only)",
    "Order book with depth charts",
    "Limit & market orders",
    "0.5% platform trading fee",
  ), sky),
  module-card("💎", "Yield Distribution", (
    "Automated coupon payments",
    "Push & pull claim models",
    "Distribution calendar",
    "On-chain settlement",
  ), gold-light),
)

#spacer(12pt)

#box(fill: card, radius: 8pt, stroke: 0.5pt + sky, inset: 14pt, width: 100%)[
  #text(size: 14pt, "🔗")
  #h(4pt)
  #text(fill: sky, weight: "bold", size: 11pt, "Oracle Integration") \
  #spacer(4pt)
  #text(fill: slate, size: 8.5pt)[
    ▸ Real-time repayment tracking from off-chain loan servicing systems \
    ▸ Chainlink-compatible data feeds for asset valuations \
    ▸ Automated default detection & notification triggers
  ]
]

#pagebreak()

// ============================================================
// PAGE 3: TECH STACK
// ============================================================

#text(fill: gold, weight: "bold", size: 8pt, tracking: 4pt, upper("Technology"))
#spacer(6pt)
#text(fill: white, weight: "bold", size: 20pt, "Tech Stack")
#spacer(12pt)

#table(
  columns: (2fr, 3fr, 4fr),
  fill: (_, row) => if row == 0 { rgb("#1a2235") } else if calc.odd(row) { card } else { navy },
  stroke: 0.5pt + border,
  inset: 10pt,
  align: left,
  table.header(
    text(fill: gold, weight: "bold", size: 9pt, "LAYER"),
    text(fill: gold, weight: "bold", size: 9pt, "TECHNOLOGY"),
    text(fill: gold, weight: "bold", size: 9pt, "PURPOSE"),
  ),
  text(fill: white, size: 9pt, "Blockchain"), text(fill: sky, size: 9pt, "Ethereum + Avalanche"), text(fill: slate, size: 9pt, "Institutional trust + permissioned subnets"),
  text(fill: white, size: 9pt, "Token Standard"), text(fill: sky, size: 9pt, "ERC-3643 (T-REX)"), text(fill: slate, size: 9pt, "Compliant security tokens with identity hooks"),
  text(fill: white, size: 9pt, "Identity"), text(fill: sky, size: 9pt, "On-chain DID + VCs"), text(fill: slate, size: 9pt, "Verifiable Credentials for KYC/accreditation"),
  text(fill: white, size: 9pt, "Legal Layer"), text(fill: sky, size: 9pt, "SPV Wrappers"), text(fill: slate, size: 9pt, "Centrifuge-style legal entity structure"),
  text(fill: white, size: 9pt, "Frontend"), text(fill: sky, size: 9pt, "Vite + React 18"), text(fill: slate, size: 9pt, "Premium dashboard with ethers.js v6"),
  text(fill: white, size: 9pt, "Contracts"), text(fill: sky, size: 9pt, "Hardhat + Solidity 0.8"), text(fill: slate, size: 9pt, "6 core smart contracts"),
  text(fill: white, size: 9pt, "Backend"), text(fill: sky, size: 9pt, "Node.js + Express"), text(fill: slate, size: 9pt, "API layer, oracle service, KYC mock"),
  text(fill: white, size: 9pt, "Charts"), text(fill: sky, size: 9pt, "Recharts"), text(fill: slate, size: 9pt, "Portfolio & yield data visualization"),
)

#spacer(16pt)
#text(fill: white, weight: "bold", size: 16pt, "Smart Contract Architecture")
#spacer(10pt)

#grid(columns: (1fr, 1fr, 1fr), gutter: 10pt,
  box(fill: card, radius: 8pt, stroke: 0.5pt + gold, inset: 12pt)[
    #text(fill: gold, weight: "bold", size: 9pt, "Identity Layer") \
    #spacer(4pt)
    #text(fill: slate, size: 8pt)[
      IdentityRegistry.sol \
      ClaimVerifier.sol
    ]
  ],
  box(fill: card, radius: 8pt, stroke: 0.5pt + emerald, inset: 12pt)[
    #text(fill: emerald, weight: "bold", size: 9pt, "Compliance Layer") \
    #spacer(4pt)
    #text(fill: slate, size: 8pt)[
      ComplianceModule.sol \
      TransferRestrictions.sol
    ]
  ],
  box(fill: card, radius: 8pt, stroke: 0.5pt + sky, inset: 12pt)[
    #text(fill: sky, weight: "bold", size: 9pt, "Token Layer") \
    #spacer(4pt)
    #text(fill: slate, size: 8pt)[
      CreditToken.sol \
      SPVFactory.sol
    ]
  ],
)
#spacer(8pt)
#grid(columns: (1fr, 1fr), gutter: 10pt,
  box(fill: card, radius: 8pt, stroke: 0.5pt + rose, inset: 12pt)[
    #text(fill: rose, weight: "bold", size: 9pt, "Market Layer") \
    #spacer(4pt)
    #text(fill: slate, size: 8pt, "PermissionedDEX.sol — Order matching with compliance gates")
  ],
  box(fill: card, radius: 8pt, stroke: 0.5pt + gold-light, inset: 12pt)[
    #text(fill: gold-light, weight: "bold", size: 9pt, "Yield Layer") \
    #spacer(4pt)
    #text(fill: slate, size: 8pt, "YieldDistributor.sol — Automated coupon/interest payments")
  ],
)

#pagebreak()

// ============================================================
// PAGE 4: USER FLOW — ISSUER
// ============================================================

#text(fill: gold, weight: "bold", size: 8pt, tracking: 4pt, upper("User Flows"))
#spacer(6pt)
#text(fill: white, weight: "bold", size: 20pt, "Flow 1 — Asset Issuer Journey")
#spacer(4pt)
#text(fill: slate, size: 9pt, "SMEs, lenders, and originators tokenizing private credit instruments")
#spacer(12pt)

#flow-step("01", "Onboarding & KYC", "Issuer registers on Meridian, submits entity docs (incorporation, tax ID, director KYC). Compliance Engine runs automated checks against OFAC, PEP lists, and jurisdiction rules.")
#flow-arrow()
#flow-step("02", "SPV Creation", "Platform generates a legal wrapper (Special Purpose Vehicle) for the asset pool. SPV isolates credit risk from the originator. Jurisdiction selected (Cayman, BVI, Singapore).")
#flow-arrow()
#flow-step("03", "Asset Configuration", "Issuer uploads invoice/loan details: debtor info, face value, maturity date, interest rate, risk rating. Documents stored in encrypted vault.")
#flow-arrow()
#flow-step("04", "Token Minting", "CreditToken.sol deploys an ERC-3643 compliant token representing the credit instrument. Transfer restrictions are encoded on-chain via ComplianceModule.")
#flow-arrow()
#flow-step("05", "Marketplace Listing", "Token appears on the Investor Marketplace. Accredited investors can browse, analyze risk metrics, and invest. Oracle begins tracking repayments.")
#flow-arrow()
#flow-step("06", "Yield & Maturity", "YieldDistributor.sol automates coupon payments to token holders. At maturity, tokens are redeemed (burned) and principal returned to investors.")

#pagebreak()

// ============================================================
// PAGE 5: USER FLOW — INVESTOR
// ============================================================

#text(fill: gold, weight: "bold", size: 8pt, tracking: 4pt, upper("User Flows"))
#spacer(6pt)
#text(fill: white, weight: "bold", size: 20pt, "Flow 2 — Investor Journey")
#spacer(4pt)
#text(fill: slate, size: 9pt, "Accredited investors deploying capital into tokenized private credit")
#spacer(12pt)

#flow-step("01", "Wallet Connect & KYC", "Investor connects MetaMask/WalletConnect. Completes KYC verification — proof of identity, accreditation status, and jurisdiction. On-chain DID credential issued.")
#flow-arrow()
#flow-step("02", "Browse Marketplace", "Explore available credit instruments with filters: yield range, risk rating, maturity, jurisdiction. Each listing shows SPV details, debtor profile, and projected cash flows.")
#flow-arrow()
#flow-step("03", "Due Diligence", "Deep-dive into asset details: legal documents, credit scores, repayment history, oracle data feeds. Investment calculator shows projected returns.")
#flow-arrow()
#flow-step("04", "Invest (Primary Market)", "Investor commits USDC/USDT to purchase credit tokens. Smart contract verifies identity compliance before executing the transfer. Tokens appear in portfolio.")
#flow-arrow()
#flow-step("05", "Trade (Secondary Market)", "Investor can list tokens on the Permissioned DEX. Only verified investors can place buy/sell orders. Order book matching with 0.5% platform fee.")
#flow-arrow()
#flow-step("06", "Yield Collection", "Automated coupon payments distributed to wallet. Investor tracks yield on the dashboard. At maturity, principal is returned and tokens are burned.")

#pagebreak()

// ============================================================
// PAGE 6: COMPLIANCE FLOW
// ============================================================

#text(fill: gold, weight: "bold", size: 8pt, tracking: 4pt, upper("Compliance"))
#spacer(6pt)
#text(fill: white, weight: "bold", size: 20pt, "Flow 3 — Compliance & Transfer Logic")
#spacer(12pt)

#box(fill: card, radius: 8pt, stroke: 0.5pt + emerald, inset: 16pt, width: 100%)[
  #text(fill: emerald, weight: "bold", size: 12pt, "🛡️ Every Token Transfer Passes Through This Pipeline")
  #spacer(8pt)
  #text(fill: slate, size: 9pt)[
    The ERC-3643 standard enforces compliance at the smart contract level. No transfer can occur without passing all checks — this is enforced on-chain and cannot be bypassed.
  ]
]

#spacer(12pt)

#grid(columns: (1fr, 1fr), gutter: 10pt,
  flow-step("①", "Identity Check", "IdentityRegistry verifies both sender and receiver have valid on-chain DIDs with active KYC credentials."),
  flow-step("②", "Jurisdiction Check", "ComplianceModule validates that the transfer doesn't violate country-to-country restrictions (e.g., US → sanctioned nations)."),
  flow-step("③", "Investor Type Check", "Verifies receiver is accredited / qualified for the specific asset class and meets minimum investment thresholds."),
  flow-step("④", "Holding Period Check", "Enforces lock-up periods — tokens cannot be transferred before the minimum holding duration expires."),
  flow-step("⑤", "Max Holders Check", "Ensures the token doesn't exceed the maximum number of holders (regulatory cap for certain security types)."),
  flow-step("⑥", "Transfer Executes ✓", "All checks pass → token transfer is executed atomically on-chain. Full audit trail recorded."),
)

#spacer(14pt)
#text(fill: white, weight: "bold", size: 14pt, "Forced Transfer (Regulatory Override)")
#spacer(8pt)
#box(fill: card, radius: 8pt, stroke: 0.5pt + rose, inset: 14pt, width: 100%)[
  #text(fill: slate, size: 9pt)[
    In cases of court orders, lost keys, or regulatory action, authorized agents can execute *forced transfers* — moving tokens between wallets without standard compliance checks. This is a critical feature for regulated securities that standard ERC-20 tokens lack.
  ]
]

#pagebreak()

// ============================================================
// PAGE 7: MONETIZATION & MARKET
// ============================================================

#text(fill: gold, weight: "bold", size: 8pt, tracking: 4pt, upper("Business Model"))
#spacer(6pt)
#text(fill: white, weight: "bold", size: 20pt, "Revenue Streams")
#spacer(12pt)

#table(
  columns: (3fr, 2fr, 4fr),
  fill: (_, row) => if row == 0 { rgb("#1a2235") } else if calc.odd(row) { card } else { navy },
  stroke: 0.5pt + border,
  inset: 10pt,
  table.header(
    text(fill: gold, weight: "bold", size: 9pt, "REVENUE STREAM"),
    text(fill: gold, weight: "bold", size: 9pt, "RATE"),
    text(fill: gold, weight: "bold", size: 9pt, "DESCRIPTION"),
  ),
  text(fill: white, size: 9pt, "Issuance Fee"), text(fill: emerald, size: 9pt, "0.5 — 1%"), text(fill: slate, size: 9pt, "One-time fee on total token issuance volume"),
  text(fill: white, size: 9pt, "Management Fee"), text(fill: emerald, size: 9pt, "0.25% / yr"), text(fill: slate, size: 9pt, "Annual fee on assets under management"),
  text(fill: white, size: 9pt, "Trading Fee"), text(fill: emerald, size: 9pt, "0.5%"), text(fill: slate, size: 9pt, "Per-trade fee on secondary market transactions"),
  text(fill: white, size: 9pt, "Compliance SaaS"), text(fill: emerald, size: 9pt, "Subscription"), text(fill: slate, size: 9pt, "Monthly compliance-as-a-service for issuers"),
)

#spacer(16pt)
#text(fill: white, weight: "bold", size: 16pt, "Target Market")
#spacer(10pt)

#grid(columns: (1fr, 1fr, 1fr), gutter: 10pt,
  box(fill: card, radius: 8pt, stroke: 0.5pt + gold, inset: 14pt)[
    #text(fill: gold, weight: "bold", size: 11pt, "🌏 Southeast Asia") \
    #spacer(6pt)
    #text(fill: slate, size: 8.5pt)[
      Invoice factoring for SMEs \
      Trade finance corridors \
      Malaysia, Singapore, Philippines
    ]
  ],
  box(fill: card, radius: 8pt, stroke: 0.5pt + emerald, inset: 14pt)[
    #text(fill: emerald, weight: "bold", size: 11pt, "🌎 LATAM") \
    #spacer(6pt)
    #text(fill: slate, size: 8.5pt)[
      SME lending markets \
      Cross-border trade finance \
      Brazil, Mexico, Colombia
    ]
  ],
  box(fill: card, radius: 8pt, stroke: 0.5pt + sky, inset: 14pt)[
    #text(fill: sky, weight: "bold", size: 11pt, "🌍 Africa") \
    #spacer(6pt)
    #text(fill: slate, size: 8.5pt)[
      Agricultural trade finance \
      Microfinance tokenization \
      Nigeria, Kenya, South Africa
    ]
  ],
)

#spacer(16pt)
#text(fill: white, weight: "bold", size: 16pt, "Competitive Advantage")
#spacer(10pt)

#box(fill: card, radius: 8pt, stroke: 0.5pt + gold, inset: 16pt, width: 100%)[
  #text(fill: slate, size: 9.5pt)[
    *Centrifuge, Maple, and Goldfinch* focus on DeFi-native users. Meridian targets *traditional asset managers* in emerging markets who want to tokenize but need hand-holding. Our platform abstracts blockchain complexity behind familiar financial workflows — no crypto expertise required.
  ]
]

#spacer(20pt)
#divider()
#spacer(8pt)
#align(center)[
  #text(fill: gold, weight: "bold", size: 8pt, tracking: 4pt, upper("Zellium"))
  #h(8pt)
  #text(fill: slate, size: 8pt, "·")
  #h(8pt)
  #text(fill: slate, size: 8pt, "Prepared by aiman.eth")
  #h(8pt)
  #text(fill: slate, size: 8pt, "·")
  #h(8pt)
  #text(fill: slate, size: 8pt, "May 2026")
  #h(8pt)
  #text(fill: slate, size: 8pt, "·")
  #h(8pt)
  #text(fill: slate, size: 8pt, "Confidential")
]
