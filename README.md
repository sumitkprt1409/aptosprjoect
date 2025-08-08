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
{
  "Result": "Added 100000000 Octas to account 0xa7e18a930c13e6abd2d17e07c333ffdb0e0dc96ce682c4be09959807a72633b0"
    "version": 27893343,
    "vm_status": "Executed successfully"
  }
}
PS C:\Users\praja\OneDrive\Desktop\Aptos file> aptos account fund-with-faucet
{
    "version": 27893343,
    "vm_status": "Executed successfully"
  }
}
PS C:\Users\praja\OneDrive\Desktop\Aptos file> aptos account fund-with-faucet
    "version": 27893343,
    "vm_status": "Executed successfully"
  }
}
    "version": 27893343,
    "vm_status": "Executed successfully"
  }
}
    "version": 27893343,
    "vm_status": "Executed successfully"
  }
}
    "version": 27893343,
    "vm_status": "Executed successfully"
    "version": 27893343,
    "vm_status": "Executed successfully"
    "version": 27893343,
    "vm_status": "Executed successfully"
    "vm_status": "Executed successfully"
  }
  }
}
}
