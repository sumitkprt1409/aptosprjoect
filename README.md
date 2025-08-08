# Tipping Module for Aptos Blockchain

This Move module implements a simple **Tipping System** on the Aptos blockchain, allowing users to receive and send tips using AptosCoin.

---

## 📦 Module: `MyModule::Tipping`

### ✅ Features
- Users can initialize a personal **TipBox** to receive tips.
- Any user can send tips (in AptosCoin) to another user who has a TipBox.
- The TipBox keeps track of the total amount received.

---

## 📌 Functions

### 1. `initialize_tipbox(account: &signer)`

Initializes a TipBox for the given account to receive tips.

#### Usage:
```move
initialize_tipbox(&signer);
