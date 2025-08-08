module MyModule::Voting {

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
