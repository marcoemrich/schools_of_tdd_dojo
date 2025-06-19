
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

Step 0: Start with a (simpler, more specific) business test from an outer perspective

Step 1: Implement whats needed, add another business test

Step 2: Implement whats needed, add another business test

Step 3: TODO, Marco?

# Munich

Motivation: Outside-In, No Mocks, strong YAGNI and everything Backward

Step 0: Start with a complex business test from an outer perspective

Step 1: Green with the simplest possible effort

Step 2: Introduce backwards "naive" logic steps from command FRLFB -> use methods right, left in getHeading

-> alternative FFB -> use methods forward, forward, backward

Step 3: Backwards to commands -> instead of call to methods, use command array in 

# Hamburg

Motivation: Don't follow any schools. Just think a lot before coding ;), Choose the right thing todo...
 
# TDD as if you meant it

Motivation: Feedback-Driven Design

# Portland

Motivation: Overlapping sociable testing without Mocks: no integration tests, Explicitly "nullable" or "controllable" infrastructure

Step 0: Show a simple rover implementation, that can turn

Step 1: Requirement: Telemetry, add TelementryData and a nasty CommunicationSystem to send the Telemetry data. NO TEST, because its infrastructure and covery low.
- What would Mocking do? It would cover breaking things 

Step 2: Create a Test for the CommunicationSystem to send telemetry: ObservableOutput
- Observe payload instead of data? -> No implementation detail.

Step 3: Isolate the "problem" piece in an interface: SMCDPClient

Step 4: Introduce CreateNull und RoverTelemetryTest
- Think of RoverTest with Rover.create(CommunicationSystem.createNull())