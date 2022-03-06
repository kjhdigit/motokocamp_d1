// import needed packages/functions
import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {

 
// c1 
     public func add(m : Nat, n : Nat) : async Nat { 
        return m + n; 
    };

// c2
    public func square(n : Nat) : async Nat {
        return n * n;
    };

// c3
    public func days_to_second(n : Nat) : async Nat {
        return n * 24 * 60 * 60;
    };

// c4
    var counter : Nat = 0;
    public func increment_counter(n : Nat) : async Nat {
        counter += n;
        return counter; 
    };
    public func clear_counter() : async Nat {
        counter := 0;
        return counter;
    };

// c5
    public func divide(m : Nat, n : Nat) : async Bool {
        if (n != 0) {
            if (m % n == 0) {
                return true;
            };
        };
        return false;
    };

// c6
    public func is_even(n : Nat) : async Bool {
        if (n % 2 == 0) {
            return true;
        };
        return false;
    };

// c7
    public func sum_of_array(nums : [Nat]) : async Nat {
        if (nums.size() != 0) {
            var sum = 0;
            for (num in nums.vals()){
                sum += num;
            };
            return sum;
        };
        return 0;
    };

// c8
    public func maximum(nums : [Nat]) : async Nat {
        var max = nums[0];
        for (num in nums.vals()){
            if (num > max) {
                max := num;
            };
        };
        return max;
    };

// c9
    public func remove_from_array(nums : [Nat], n : Nat) : async [Nat] {
        var newArr : [Nat] = [];
        for (num in nums.vals()) {
            if (n != num) {
                newArr := Array.append<Nat>(newArr, [num]);
            };
        };
        return newArr;
    };

// c10
    public func selection_sort(nums : [Nat]) : async [Nat] {
        return Array.sort(nums, Nat.compare);
    };


// hello default func
    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
};


//testing commands for the above, tested
// dfx canister call motokocamp_d1 add '(3, 2)'
// dfx canister call motokocamp_d1 square '(2)'
// dfx canister call motokocamp_d1 days_to_second '(2)'
// dfx canister call motokocamp_d1 increment_counter '(12)'
// dfx canister call motokocamp_d1 clear_counter '(12)'
// dfx canister call motokocamp_d1 divide '(3, 2)'
// dfx canister call motokocamp_d1 is_even '(10)'
// dfx canister call motokocamp_d1 sum_of_array '(vec { 1 ; 3 ; 5 })'
// dfx canister call motokocamp_d1 maximum '(vec { 1 ; 3 ; 5 })'
// dfx canister call motokocamp_d1 selection_sort '(vec { 3 ; 1 ; 5 })'
