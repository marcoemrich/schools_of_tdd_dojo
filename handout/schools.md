# Die Schulen der testgetriebenen Softwareentwicklung (TDD) - Zusammenfassung

Der Begriff Schule ist nicht perfekt. 

Es gibt keine "beste", "wahre" oder "einzige" Schule.

## Chicago (classy) 
- Inside-out
- No Test Doubles

*Anmerkung*: Vermutlich wird das so heute keiner mehr machen.

## Chicago (modern)
Motivation: Decoupling, Maintenance
* Inside-Out
* Solitary/Isolated Tests
* Many Stubs
* Mocks only if needed

## London
Motivation: YAGNI
* Outside-In
* Solitary/Isolated Tests
* Mocks for Verification

## Munich
Motivation: Avoids Mocks
* Outside-In
* temporary in-production Stubs/Fakes
* Refactoring-based
* Complex Acceptance Test

## Hamburg
Motivation: Think Before Coding
* Design Up Front (BDUF vs. DUF)
* Analyze->Design->Code

## St. Pauli
Motivation: Simple Starter-Test
* Outside-In
* Avoids Mocks
* Triangulation/Refactoring-based
* Append Only

## TDD as if you meant it...
Motivation: Feedback-Driven Design
* Inside-Out
* Write Production Code in Tests as long as possible
→ Delay Design Decisions
* Refactor to Structure

## TCR, revert, commit, auto...
Motivation: ?

## Portland
Motivation: ?