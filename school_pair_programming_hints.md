
# Chicago Classic

Step 0: Start with a small useful detail? What is a useful test?

Step 1: HeadingTest that
-> uses a Heading class
-> calls a turnRight method, with String parameter and String as return value
-> asserts that "NORTH" given to turnRight returns "EAST"
-> implement method

Step 2: Introduce ENUM for Strings: CardinalDirection

Step 3: Complete ENUM add SOUTH, add to turnRight

Step 4: Complete ENUM add WEST, add to turnRight using a switch

Step 5: Introduce RoverTest and Start


# Chicago Modern

Motivation: Decoupling, Maintenance

Step 0: Use branch: chicago_modern_start and describe the situation
-> Heading class, Rover class and CardinalDirectionEnum
-> Show problem through coverage: everything is tested together

Step 1: Use branch: chicago_modern_iter_I
-> Show problem with hard to spot failed test

Step 2: Introduce a stub (Mockito.mock, or create your own class)
-> Result in branch: chicago_modern_II

# London

Motivation: Outside In, YAGNI, Mocks

Step 0: Start with a business test from an outer perspective

Step 1: Create all necessary items with the smallest possible content

Step 2: Add more Tests for specific aspects

Step 3: Use Mock to verify interface/behaviour between outer and inner part

Step 4: Verify found parts via additional tests

# St. Pauli

Motivation: Simple Starter, Outside In, No Mocks

Step 0: Start with a (simpler) business test from an outer perspective

Step 1: 

# Munich

Motivation: Outside-In without Mocks

Step 0: Start with a complex business test from an outer perspective

Step 1: Green with the simplest possible effort

Step 2: Introduce backwards "naive" logic steps from command FRLFB -> use methods right, left in getHeading

-> alternative FFB -> use methods forward, forward, backward

Step 3: Backwards to commands -> instead of call to methods, use command array in 

# Hamburg

just think a lot before coding ;)
 
# TDD as if you meant it

Motivation: Feedback-Driven Design

# Portland

Motivation: Testing without Mocks, Explicitly "nullable" or "controllable" infrastructure, no extra e2e integration tests

Step 0: Show a simple rover implementation, that can turn

Step 1: Requirement: Telemetry, add TelementryData and a nasty CommunicationSystem to send the Telemetry data. NO TEST, because its infrastructure and covery low.

Step 2: Create a Test for the CommunicationSystem to send telemetry: ObservableOutput
-> observe payload instead of data?

Step 3: Isolate the "problem" piece in an interface: SMCDPClient
-> observe payload instead of data?

Step 4: Introduce CreateNull und TelemetryTest
-> observe payload instead of data?