# Zellio: Token-X Accelerator Pitch Guide

This document outlines the ideal demonstration flow to present Zellio to the **Token-X accelerator judges**, focusing heavily on the newly integrated Malaysian localization and Shariah-compliant features.

> [!TIP]
> **The Key Narrative:** Zellio is not just another tokenization platform; it is an **institutional-grade, compliance-first engine** built explicitly for the unique regulatory landscape of Southeast Asia and Islamic Finance.

---

## The Demo Flow (3-Minute Walkthrough)

### 1. The Hook (Landing Page)
**Action:** Start on the landing page. Point out the hero text.
**Script:** 
*“Zellio is a full-stack platform that tokenizes private credit and, crucially, **Shariah-compliant Sukuk**. We bridge traditional finance with global on-chain capital, with a compliance engine built specifically for the Malaysian capital markets.”*

### 2. The Onboarding (Verification / KYC)
**Action:** Navigate to the Onboarding/Verification flow. Select **"Malaysia"** as the country.
**Script:** 
*“Our platform adapts to local jurisdictions. When an investor selects Malaysia, Zellio automatically configures the KYC flow to adhere to **Bank Negara Malaysia (BNM) e-KYC standards**. Watch as the system prompts for MyKad validation and performs a biometric liveness detection scan, ensuring we meet strict AML requirements before any capital moves.”*
**(Demonstrate the new scanning animation)**

### 3. The Marketplace (Explore)
**Action:** Complete onboarding and navigate to the `Explore` page.
**Script:**
*“Once verified, the marketplace dynamically localizes. For Malaysian users, you'll immediately see the **‘SC IEO Approved’** badges, assuring investors that the assets comply with the Securities Commission's guidelines. Notice how our stablecoin pairs automatically switch to **MYRC**, the local stablecoin on the Base network.”*

### 4. The Sukuk Asset Detail
**Action:** Click on the **"Solar Sukuk Series I"** asset.
**Script:**
*“A massive differentiator for Zellio is our native support for Islamic Finance. Here is our tokenized Green Energy Sukuk. Our platform automatically recognizes Shariah-compliant instruments and adapts the terminology: instead of 'Interest' or 'Dividend Yield', investors see **‘Expected Profit Rate’**. We also integrate **Shariah Oversight** data directly into the tokenholder protections, providing complete transparency.”*

### 5. Issuance & Distribution (Issuer Portal & Portfolio)
**Action:** Briefly show the `IssuerPortal`, then open the `Portfolio`.
**Script:**
*“Issuers can effortlessly spin up these Sukuk SPVs from our Issuer Portal. And when distributions happen, the backend settles via smart contracts. Looking at our Portfolio activity, you can see a recent **Sukuk Profit Distribution settled in RM**. Zellio handles the entire lifecycle end-to-end.”*

---

## Questions You Might Get from Judges (And How to Answer)

> [!IMPORTANT]  
> **Q: How are these Sukuk tokens legally enforceable?**
> **A:** The tokens are deployed using the **ERC-3643** standard, which forces on-chain transfers to pass through a `ComplianceModule`. This module checks our `IdentityRegistry`—so a tokenized Sukuk cannot physically be transferred to a wallet that hasn't passed the BNM-compliant KYC.

> [!IMPORTANT]  
> **Q: Why use MYRC instead of USDC?**
> **A:** Using MYRC (Malaysian Ringgit stablecoin) completely removes FX risk for local issuers and retail investors, aligning with BNM's preference to avoid local currency displacement while maximizing the efficiency of the Base network.
