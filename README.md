# Zellio Finance — Research & Whitepapers

<div align="center">
  <img src="https://img.shields.io/badge/Document-Whitepapers-brightgreen?style=for-the-badge&logo=read-the-docs" alt="Whitepapers" />
  <img src="https://img.shields.io/badge/Design-Typst-orange?style=for-the-badge" alt="Typst" />
  <img src="https://img.shields.io/badge/Standard-ERC--3643-blue?style=for-the-badge" alt="ERC-3643" />
</div>

<br>

Welcome to the central repository for **Zellio Finance's** academic, financial, and technical publications. This repository hosts our official whitepapers, institutional pitch decks, systemic specifications, and revenue models.

To ensure pristine typography and high-fidelity rendering, our documents are authored using [Typst](https://typst.app/) and compiled directly to standard PDFs.

---

## 📚 Document Index & Abstracts

### 1. 📄 [Zellio Whitepaper](./Zellio_Whitepaper.pdf)
* **Format:** [PDF](./Zellio_Whitepaper.pdf) | [Typst Source](./Zellio_Whitepaper.typ)
* **Abstract:** The core architectural and conceptual guide for Zellio Finance. This document introduces our compliant tokenization engine built on Base, explaining the integration of ERC-3643 identity structures, compliant secondary market DEX liquidity, and our risk-isolated Special Purpose Vehicle (SPV) structures.
* **Key Topics:** 
  * The RWA Liquidity Trilemma
  * Hybrid ERC-20 / ERC-3643 identity registries
  * Yield distribution mechanics for tokenized debt and equities

### 2. 📊 [Institutional Pitch Deck](./pitch-deck.pdf)
* **Format:** [PDF](./pitch-deck.pdf) | [Typst Source](./pitch-deck.typ)
* **Abstract:** A slide-based overview tailored for institutional allocators, venture capitalists, and strategic partners. It highlights market pain points (compliance bottlenecks, illiquidity of private assets), Zellio's solution, unit economics, market size (TAM/SAM), and our immediate go-to-market roadmap.
* **Key Topics:**
  * Market validation and competitive analysis
  * Product-Market fit on Base network
  * Traction, milestones, and capital raising details

### 3. 🌐 [Meridian System Technical Spec](./meridian_system.pdf)
* **Format:** [PDF](./meridian_system.pdf) | [Typst Source](./meridian_system.typ) | [Markdown Source](./meridian_system.md)
* **Abstract:** Deep-dive technical specifications of the **Meridian Compliance and Automation Engine**—Zellio's proprietary background orchestrator. This system bridges off-chain compliance state updates with on-chain identity registry states, managing high-throughput KYC updates and automated investor whitelisting.
* **Key Topics:**
  * System architecture and state flow diagram
  * API-driven identity synchronization
  * Fault tolerance, security isolation, and event listening in high-traffic environments

### 4. 📈 [TokenX Revenue Model](./TokenX_Revenue_Model.pdf)
* **Format:** [PDF](./TokenX_Revenue_Model.pdf) | [Typst Source](./TokenX_Revenue_Model.typ) | [Markdown Source](./TokenX_Revenue_Model.md)
* **Abstract:** Comprehensive financial model mapping out the revenue generation channels of Zellio Finance. Focuses on SPV issuance fees, DEX trading commissions, platform subscription tiers for issuers, and yield distribution fees.
* **Key Topics:**
  * Core Revenue Streams (Issuance, DEX, Automation SaaS)
  * Five-year volume and revenue projections
  * Utility and fee-burn economics

### 5. 📋 [TokenX Investor Screening Brief](./TokenX_Screening_Brief.pdf)
* **Format:** [PDF](./TokenX_Screening_Brief.pdf) | [Typst Source](./TokenX_Screening_Brief.typ) | [Markdown Source](./TokenX_Screening_Brief.md)
* **Abstract:** Standard operating procedures and screening questionnaires for onboarding high-net-worth individuals and institutional clients under global compliance standards.
* **Key Topics:**
  * Accredited investor classification mapping
  * Jurisdictional regulatory compliance checklists (US, EU, offshore)
  * KYC/AML verification protocols

### 6. 🎙️ [TokenX Pitch Script](./TokenX_Pitch_Script.pdf)
* **Format:** [PDF](./TokenX_Pitch_Script.pdf) | [Typst Source](./TokenX_Pitch_Script.typ) | [Markdown Source](./TokenX_Pitch_Script.md)
* **Abstract:** The structured presentation script accompanying our Institutional Pitch Deck, engineered to outline Zellio's unique value proposition concisely in under 10 minutes.

---

## 🛠 Compilation and Contribution

If you would like to edit or rebuild these documents from source, you must install the [Typst compiler](https://github.com/typst/typst):

```bash
# Using Homebrew (macOS/Linux)
brew install typst

# Using Cargo (Rust toolchain)
cargo install --locked typst-cli
```

To compile any document to PDF, run:

```bash
typst compile DocumentName.typ DocumentName.pdf
```

## Security

If you discover a security concern regarding our systems or documents, please read our [Security Policy](https://github.com/Zellio-Finance/.github/blob/main/SECURITY.md).

## License

All content is the property of Zellio Finance. PDF and source distributions are under copyright except where noted.
