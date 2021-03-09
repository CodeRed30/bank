# Bank tech test

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Input/Output
| Input    | Output   |
| --- | --- |
| account.balance | 00.00 |
| account.deposit(1000, 10/01/2012) / account.statement | "date \|\| credit \|\| debit \|\| balance\n10/01/2012 \|\| 1000.00 \|\| \|\| 1000.00" |
| account.deposit(1000, 10/01/2012) / account.deposit(2000, 13/01/2012) / account.statement | "date \|\| credit \|\| debit \|\| balance/n13/01/2012 \|\| 2000.00 \|\| \|\| 3000.00/n10/01/2012 \|\| 1000.00 \|\| \|\| 1000.00" |
| account.deposit(1000, 10/01/2012) / account.deposit(2000, 13/01/2012) / account.withdraw(500, 14/01/2012) / account.statement | "date \|\| credit \|\| debit \|\| balance/n14/01/2012 \|\| \|\| 500.00 \|\| 2500.00/n13/01/2012 \|\| 2000.00 \|\| \|\| 3000.00/n10/01/2012 \|\| 1000.00 \|\| \|\| 1000.00" |

## Methodology
The bank account was initially built as one class with three methods.
A decision was made to extract the balance and the private methods associated with it into a separate class

## Run the program
Use IRB

## Run the tests
Use RSpec in the command line
Use Rubocop in the command line
