// ══════════════════════════════════════════
// ZELLIO — Investor Pitch Deck
// Tokenize Private Credit. Unlock Global Capital.
// ══════════════════════════════════════════

#set page(
  paper: "presentation-16-9",
  margin: (x: 60pt, y: 50pt),
  fill: white,
)

#set text(font: ("Segoe UI", "Helvetica", "Arial"), size: 11pt, fill: rgb("#1e293b"))

// ── Helpers ──
#let accent = rgb("#000000")
#let muted = rgb("#64748b")
#let light-bg = rgb("#f8fafc")
#let brand-indigo = rgb("#4f46e5")
#let brand-violet = rgb("#8b5cf6")
#let brand-emerald = rgb("#10b981")

#let slide-title(body) = {
  text(size: 13pt, weight: 700, fill: muted, tracking: 0.12em, upper(body))
}

#let big-number(num, label) = {
  box(width: 1fr)[
    #text(size: 36pt, weight: 800, fill: accent, num) \
    #text(size: 10pt, fill: muted, label)
  ]
}

// ════════════════════════════════════════
// SLIDE 1 — COVER
// ════════════════════════════════════════
#align(center + horizon)[
  #text(size: 14pt, weight: 700, fill: muted, tracking: 0.15em)[ZELLIO]

  #v(16pt)

  #text(size: 42pt, weight: 800, fill: accent, tracking: -0.03em)[
    Tokenize Private Credit. \
    Unlock Global Capital.
  ]

  #v(20pt)

  #text(size: 13pt, fill: muted, weight: 500)[
    The full-stack platform to issue, trade, and service \
    compliant security tokens for real-world assets.
  ]

  #v(40pt)

  #text(size: 10pt, fill: muted)[
    Prepared by *aiman.eth* · May 2026 · Confidential
  ]
]

// ════════════════════════════════════════
// SLIDE 2 — THE PROBLEM
// ════════════════════════════════════════
#pagebreak()

#slide-title[The Problem]
#v(12pt)

#text(size: 28pt, weight: 800, fill: accent)[
  \$10 Trillion in Private Credit is Locked Behind Paper.
]

#v(20pt)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 24pt,
  [
    #text(size: 14pt, weight: 700)[Illiquid Markets]
    #v(6pt)
    #text(size: 10pt, fill: muted)[
      Private credit instruments have no secondary market. Investors are locked in for years with zero exit options.
    ]
  ],
  [
    #text(size: 14pt, weight: 700)[Fragmented Infrastructure]
    #v(6pt)
    #text(size: 10pt, fill: muted)[
      Issuance, compliance, custody, and distributions are handled by 5+ vendors. Costs are prohibitive for emerging-market originators.
    ]
  ],
  [
    #text(size: 14pt, weight: 700)[Excluded Investors]
    #v(6pt)
    #text(size: 10pt, fill: muted)[
      Accredited investors in SEA, LATAM, and Africa cannot access institutional-grade yields because of jurisdictional gatekeeping.
    ]
  ],
)

#v(28pt)

#align(center)[
  #rect(fill: light-bg, radius: 12pt, inset: 20pt)[
    #text(size: 11pt, fill: muted)[
      *Result:* Originators overpay for capital. Investors miss 12–22% APY opportunities. \$10T+ sits uninvestable.
    ]
  ]
]


// ════════════════════════════════════════
// SLIDE 3 — THE SOLUTION
// ════════════════════════════════════════
#pagebreak()

#slide-title[The Solution]
#v(12pt)

#text(size: 28pt, weight: 800, fill: accent)[
  One Platform. Full Stack. Fully Compliant.
]

#v(20pt)

#text(size: 12pt, fill: muted, weight: 500)[
  Zellio replaces fragmented vendors with a single protocol that handles the entire lifecycle of a tokenized private credit instrument.
]

#v(24pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  rect(fill: light-bg, radius: 12pt, inset: 20pt)[
    #text(size: 12pt, weight: 700)[🏦 SPV Factory & Issuance Engine] \
    #v(4pt)
    #text(size: 10pt, fill: muted)[
      Issuers create legal SPV wrappers, configure token parameters (supply, maturity, yield, jurisdiction restrictions), and deploy ERC-3643 compliant security tokens in minutes.
    ]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 20pt)[
    #text(size: 12pt, weight: 700)[🛡️ On-Chain Identity & Compliance] \
    #v(4pt)
    #text(size: 10pt, fill: muted)[
      KYC/AML via Sumsub, OFAC screening via Chainalysis, DID-based accredited investor credentials. Every transfer is compliance-gated at the smart contract level.
    ]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 20pt)[
    #text(size: 12pt, weight: 700)[📈 Permissioned Secondary Exchange] \
    #v(4pt)
    #text(size: 10pt, fill: muted)[
      The first DEX purpose-built for security tokens. Only verified investors can trade. Real-time order book with institutional-grade matching.
    ]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 20pt)[
    #text(size: 12pt, weight: 700)[⚡ Automated Yield Distribution] \
    #v(4pt)
    #text(size: 10pt, fill: muted)[
      Smart-contract-driven coupon payments. On-schedule USDC distributions to verified holders. Full repayment tracking and audit trail.
    ]
  ],
)


// ════════════════════════════════════════
// SLIDE 4 — MARKET OPPORTUNITY
// ════════════════════════════════════════
#pagebreak()

#slide-title[Market Opportunity]
#v(12pt)

#text(size: 28pt, weight: 800, fill: accent)[
  RWA Tokenization is the Fastest-Growing DeFi Sector.
]

#v(28pt)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 16pt,
  big-number[\$50B+][On-Chain RWA TVL (2026)],
  big-number[\$16T][Global Private Credit TAM],
  big-number[30%][YoY RWA Market Growth],
  big-number[\$1.3T][Tokenized by 2030 (BCG)],
)

#v(28pt)

#rect(fill: rgb("#f0fdf4"), radius: 12pt, inset: 20pt, width: 100%)[
  #text(size: 11pt, weight: 600, fill: rgb("#166534"))[
    Zellio's Beachhead: Southeast Asia, LATAM & Africa
  ]
  #v(4pt)
  #text(size: 10pt, fill: muted)[
    These regions have the highest private credit demand (12–22% APY) but the worst capital market infrastructure. Zellio bridges this gap by enabling cross-border tokenized lending with on-chain compliance.
  ]
]


// ════════════════════════════════════════
// SLIDE 5 — PRODUCT ARCHITECTURE
// ════════════════════════════════════════
#pagebreak()

#slide-title[Product Architecture]
#v(12pt)

#text(size: 24pt, weight: 800, fill: accent)[
  Six Smart Contracts. One Unified Platform.
]

#v(20pt)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 16pt,
  rect(fill: light-bg, radius: 12pt, inset: 16pt)[
    #text(size: 11pt, weight: 700)[IdentityRegistry.sol]
    #v(4pt)
    #text(size: 9pt, fill: muted)[DID-based KYC registry. Stores verified investor claims on-chain. Gates all token interactions.]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 16pt)[
    #text(size: 11pt, weight: 700)[ComplianceModule.sol]
    #v(4pt)
    #text(size: 9pt, fill: muted)[Enforces jurisdiction rules, investor limits, holding periods, and transfer restrictions per asset.]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 16pt)[
    #text(size: 11pt, weight: 700)[CreditToken.sol]
    #v(4pt)
    #text(size: 9pt, fill: muted)[ERC-3643 security token with compliance-gated transfers, forced transfers, and pause capability.]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 16pt)[
    #text(size: 11pt, weight: 700)[SPVFactory.sol]
    #v(4pt)
    #text(size: 9pt, fill: muted)[Deploys legal-wrapper SPV contracts linked to each credit instrument. Configures parameters on creation.]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 16pt)[
    #text(size: 11pt, weight: 700)[PermissionedDEX.sol]
    #v(4pt)
    #text(size: 9pt, fill: muted)[Order-book exchange that only allows verified investors. Supports limit orders with compliance checks.]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 16pt)[
    #text(size: 11pt, weight: 700)[YieldDistributor.sol]
    #v(4pt)
    #text(size: 9pt, fill: muted)[Automates coupon and principal repayments in USDC to verified token holders on schedule.]
  ],
)

#v(16pt)
#align(center)[
  #text(size: 10pt, fill: muted)[
    *Stack:* Solidity · Foundry · ERC-3643 · OpenZeppelin · Ethereum / Polygon / Base / Arbitrum
  ]
]


// ════════════════════════════════════════
// SLIDE 6 — BUSINESS MODEL
// ════════════════════════════════════════
#pagebreak()

#slide-title[Business Model]
#v(12pt)

#text(size: 28pt, weight: 800, fill: accent)[
  Revenue From Every Layer of the Stack.
]

#v(24pt)

#table(
  columns: (2fr, 3fr, 1.5fr),
  inset: 12pt,
  stroke: none,
  fill: (_, y) => if y == 0 { light-bg } else { none },

  [*Revenue Stream*], [*Description*], [*Target Rate*],

  [Issuance Fee], [One-time fee per tokenized instrument deployment], [0.5–1.0% of raise],
  [Trading Fee], [Per-trade commission on secondary market volume], [0.10–0.25%],
  [Yield Spread], [Spread on automated yield distribution flows], [5–15 bps],
  [SaaS License], [Monthly platform fee for issuer dashboard access], [\$2K–10K / mo],
  [Fiat On/Off Ramp], [Commission on USDC ↔ Fiat conversions (Plaid integration)], [0.5–1.0%],
  [Compliance-as-a-Service], [KYC/AML screening and DID credential issuance], [\$5–15 per check],
)

#v(20pt)

#rect(fill: rgb("#eff6ff"), radius: 12pt, inset: 16pt, width: 100%)[
  #text(size: 10pt, fill: rgb("#1e40af"), weight: 600)[
    Unit Economics: At \$100M TVL with 8% avg yield, annual platform revenue = \$500K issuance + \$250K trading + \$400K yield spread + \$120K SaaS = *\~\$1.27M ARR*
  ]
]


// ════════════════════════════════════════
// SLIDE 7 — TRACTION & DEMO
// ════════════════════════════════════════
#pagebreak()

#slide-title[Current Traction]
#v(12pt)

#text(size: 28pt, weight: 800, fill: accent)[
  Live Product. Real Infrastructure.
]

#v(24pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 24pt,
  [
    #text(size: 13pt, weight: 700)[Platform Built ✅]
    #v(8pt)
    #text(size: 10pt, fill: muted)[
      - Full React frontend with institutional-grade UX \
      - 6 auditable Solidity smart contracts (Foundry) \
      - Live marketplace with real-time price feeds \
      - Plaid-style bank integration (US + Malaysia) \
      - Permissioned DEX with order book \
      - Automated yield distribution engine \
      - KYC/AML onboarding with DID issuance
    ]
  ],
  [
    #text(size: 13pt, weight: 700)[Asset Classes Supported ✅]
    #v(8pt)
    #text(size: 10pt, fill: muted)[
      - *Tokenized Equities* — NVDA, INTC, NIO, Ford, Plug \
      - *Tokenized ETFs* — KWEB, FXI, TQQQ \
      - *Private Credit* — Trade Finance, Invoice Factoring \
      - *SME Lending* — Emerging market microfinance \
      - *Property Receivables* — Real estate-backed instruments
    ]

    #v(16pt)
    #text(size: 13pt, weight: 700)[Regions Targeted 🌍]
    #v(8pt)
    #text(size: 10pt, fill: muted)[
      - Southeast Asia (Malaysia, Indonesia, Philippines) \
      - Latin America (Brazil, Colombia) \
      - East Africa (Kenya)
    ]
  ],
)


// ════════════════════════════════════════
// SLIDE 8 — COMPETITIVE LANDSCAPE
// ════════════════════════════════════════
#pagebreak()

#slide-title[Competitive Landscape]
#v(12pt)

#text(size: 24pt, weight: 800, fill: accent)[
  Zellio vs. Existing Players
]

#v(20pt)

#table(
  columns: (2fr, 1fr, 1fr, 1fr, 1fr),
  inset: 10pt,
  stroke: none,
  fill: (_, y) => if y == 0 { light-bg } else if calc.rem(y, 2) == 0 { rgb("#fafafa") } else { none },

  [*Feature*], [*Zellio*], [*Ondo*], [*Centrifuge*], [*Securitize*],

  [Full-Stack (Issue→Trade→Yield)], [✅], [❌], [Partial], [Partial],
  [ERC-3643 Compliance], [✅], [❌], [❌], [✅],
  [Permissioned DEX], [✅], [❌], [❌], [❌],
  [Emerging Market Focus], [✅], [❌], [✅], [❌],
  [Fiat On/Off Ramp], [✅], [❌], [❌], [✅],
  [Automated Yield Distribution], [✅], [✅], [✅], [Partial],
  [Open Source Contracts], [✅], [❌], [✅], [❌],
  [Self-Custody Wallet Support], [✅], [✅], [✅], [❌],
)

#v(16pt)

#rect(fill: rgb("#fefce8"), radius: 12pt, inset: 14pt, width: 100%)[
  #text(size: 10pt, fill: rgb("#854d0e"), weight: 600)[
    Key Differentiator: Zellio is the only platform that vertically integrates issuance, compliance, trading, and yield for *emerging-market private credit* with full ERC-3643 compliance.
  ]
]


// ════════════════════════════════════════
// SLIDE 9 — GO-TO-MARKET
// ════════════════════════════════════════
#pagebreak()

#slide-title[Go-To-Market Strategy]
#v(12pt)

#text(size: 28pt, weight: 800, fill: accent)[
  Land with Issuers. Expand with Investors.
]

#v(24pt)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 20pt,
  rect(fill: light-bg, radius: 12pt, inset: 20pt)[
    #text(size: 28pt, weight: 800, fill: brand-indigo)[Phase 1]
    #v(4pt)
    #text(size: 11pt, weight: 700)[Anchor Issuers]
    #v(6pt)
    #text(size: 9pt, fill: muted)[
      Onboard 3–5 originator partners in Malaysia, Indonesia & Brazil. Deploy first \$5M in tokenized credit instruments. Prove unit economics.
    ]
    #v(8pt)
    #text(size: 9pt, weight: 600)[Q3–Q4 2026]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 20pt)[
    #text(size: 28pt, weight: 800, fill: brand-violet)[Phase 2]
    #v(4pt)
    #text(size: 11pt, weight: 700)[Investor Network]
    #v(6pt)
    #text(size: 9pt, fill: muted)[
      Launch accredited investor onboarding at scale. Enable secondary trading. Integrate fiat on/off ramps for non-crypto-native allocators.
    ]
    #v(8pt)
    #text(size: 9pt, weight: 600)[Q1–Q2 2027]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 20pt)[
    #text(size: 28pt, weight: 800, fill: brand-emerald)[Phase 3]
    #v(4pt)
    #text(size: 11pt, weight: 700)[Protocol Scale]
    #v(6pt)
    #text(size: 9pt, fill: muted)[
      Multi-chain deployment (Polygon, Base, Arbitrum). API-first platform for third-party integrations. Target \$500M+ TVL.
    ]
    #v(8pt)
    #text(size: 9pt, weight: 600)[H2 2027+]
  ],
)


// ════════════════════════════════════════
// SLIDE 10 — TEAM
// ════════════════════════════════════════
#pagebreak()

#slide-title[Team]
#v(12pt)

#text(size: 28pt, weight: 800, fill: accent)[
  Built by Builders.
]

#v(28pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 24pt,
  rect(fill: light-bg, radius: 12pt, inset: 24pt)[
    #text(size: 14pt, weight: 700)[Aiman (aiman.eth)]
    #v(4pt)
    #text(size: 10pt, weight: 600, fill: brand-indigo)[Founder & Full-Stack Engineer]
    #v(8pt)
    #text(size: 10pt, fill: muted)[
      Solidity smart contract architecture, React frontend development, institutional UX design. Built multiple Web3 platforms across DeFi, RWA, and AI-agent infrastructure.
    ]
  ],
  rect(fill: light-bg, radius: 12pt, inset: 24pt)[
    #text(size: 14pt, weight: 700)[Hiring]
    #v(4pt)
    #text(size: 10pt, weight: 600, fill: brand-violet)[Key Roles Open]
    #v(8pt)
    #text(size: 10pt, fill: muted)[
      - Head of Compliance & Legal \
      - Business Development (SEA) \
      - Senior Solidity Engineer \
      - Institutional Sales Lead
    ]
  ],
)


// ════════════════════════════════════════
// SLIDE 11 — THE ASK
// ════════════════════════════════════════
#pagebreak()

#slide-title[The Ask]
#v(12pt)

#text(size: 28pt, weight: 800, fill: accent)[
  Pre-Seed: \$500K to Go Live.
]

#v(24pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 24pt,
  [
    #text(size: 13pt, weight: 700)[Use of Funds]
    #v(12pt)

    #table(
      columns: (2fr, 1fr),
      inset: 10pt,
      stroke: none,
      fill: (_, y) => if y == 0 { light-bg } else { none },

      [*Category*], [*Allocation*],
      [Engineering & Audit], [40%],
      [Legal & Compliance], [25%],
      [Business Development], [20%],
      [Operations & Infra], [15%],
    )
  ],
  [
    #text(size: 13pt, weight: 700)[Key Milestones]
    #v(12pt)
    #text(size: 10pt, fill: muted)[
      - ✅ *Done:* Full platform built & functional \
      - 🔄 *Month 1–2:* Smart contract audit (Trail of Bits / OpenZeppelin) \
      - 🔄 *Month 3:* Legal entity setup (SPV structure, Labuan IBFC) \
      - 🔄 *Month 4–5:* First 3 originator partners live \
      - 🔄 *Month 6:* First \$5M in tokenized credit deployed \
      - 🎯 *Month 12:* \$50M TVL, \$500K+ ARR
    ]
  ],
)

#v(20pt)

#align(center)[
  #rect(fill: accent, radius: 12pt, inset: 20pt, width: 80%)[
    #text(size: 14pt, weight: 700, fill: white)[
      Raising \$500K Pre-Seed · SAFE · \$5M Post-Money Cap
    ]
  ]
]


// ════════════════════════════════════════
// SLIDE 12 — CLOSING
// ════════════════════════════════════════
#pagebreak()

#align(center + horizon)[
  #text(size: 14pt, weight: 700, fill: muted, tracking: 0.15em)[ZELLIO]

  #v(16pt)

  #text(size: 36pt, weight: 800, fill: accent, tracking: -0.03em)[
    The Future of Private Credit \
    is On-Chain.
  ]

  #v(24pt)

  #text(size: 13pt, fill: muted)[
    aiman.eth · zellio.io · github.com/aimaneth/zellio-rwa
  ]

  #v(32pt)

  #rect(fill: accent, radius: 10pt, inset: (x: 32pt, y: 14pt))[
    #text(size: 12pt, weight: 600, fill: white)[Let's Talk →]
  ]
]
