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
Code: module MyModule::Voting {

    use aptos_framework::signer;

    struct Poll has key, store {
        question: vector<u8>,
        option1: vector<u8>,
        option2: vector<u8>,
        votes1: u64,
        votes2: u64,
    }

    /// Function to create a poll with two options.
    public fun create_poll(admin: &signer, question: vector<u8>, option1: vector<u8>, option2: vector<u8>) {
        let poll = Poll {
            question,
            option1,
            option2,
            votes1: 0,
            votes2: 0,
        };
        move_to(admin, poll);
    }

    /// Function to vote for an option in a poll.
    public fun vote(voter: &signer, admin_address: address, option: u8) acquires Poll {
        let poll = borrow_global_mut<Poll>(admin_address);

        if (option == 1) {
            poll.votes1 = poll.votes1 + 1;
        } else if (option == 2) {
            poll.votes2 = poll.votes2 + 1;
        } else {
            // Invalid option (you can raise an error here in a real contract)
        };
    }
}

<img width="1896" height="902" alt="image" src="https://github.com/user-attachments/assets/691e4fa2-95cd-4dde-8219-0bfa9e80f8d9" />


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
