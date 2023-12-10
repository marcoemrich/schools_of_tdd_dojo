
0. Branch: chicago_classic_start (to actually start)
    1. Next: Unit/UnitTest: minimal structure of a Heading and Test
    2. Next: make it compile, start implementing turn right
1. Branch: chicago_classic_iter_I (have done left, right on Heading)
    1. Next: Coordinate, etc. all the pieces (NOT TODAY)
    2. Next: Rover with using turn left, turn right from heading
2. Branch: chicago_classic_iter_II (have rover with testing)
    1. Next: Move forward?
    2. ?

----


0. Branch: chicago_modern_start (same as chicago iter II before)
    2. Refactor to isolate test, 2nd constructor
1. Branch: chicago_modern_iter_I (have done one refactoring)
    1. Show Problem: two tests are broken!
    3. Next: Insert Mock for Heading
2. Branch: chicago_modern_iter_II (have done mocking)
    1. Next: fill in position using Coordinate

----

0. Branch: london_start (have an AcceptanceTest, nothing else)
    1. TODO Acceptance Test is heavy enough?
    2. We only have the test!
    2. Next: Rover mit Schnittstelle für command
    3. Schritt: Rover, Coordinate, ... DESIGN!
1. Branch: london_iter_I (have the working AcceptanceTest, just fake impl.)
    1. Test is not important and allowed to be red during our journey
    2. Next: Simple test for Rover: eg. init
    3. Next: Simple test for Rover command: eg. command execution?
2. Branch: london_iter_II (hava a simple init test and some new test for command)
    1. Next: Introduce CommandTranslator
    2. Next: Make sure translate is executed
3. Branch: london_iter_III (command translator, test that translate is executed)
    1. Next: make command.translate work with the rover
    2. Next: introduce interface
    3. Next: Test for commandTranslate single command
    3. Next: Test for commandTranslate multiple command
4. Branch: london_iter_IV (command translate, ...)
    1. Next: ?

---

1. Branch: st_pauli_start (have a simple green AcceptanceTest, green)
   0. Hunting for a position implementation
   1. Have a test, that checks for not changing the position on command L
   2. Next: Add test with moving Forward, fake the result
   3. Next: Add another Test movingForward (starting NORTH) and force getPosition to change
   4. Next: Make getPosition somehow work
2. Branch: st_pauli_iter_I (nothing changed)
    1. Next: Add another Test movingForward starting EAST and force getPosition to change
    2. Next: Add 'inDirection' to Coordinate with  
    2. Next: Make getPosition somehow work
3. Branch: st_pauli_iter_II (have two acceptance tests, getHeading faked)
    1. Next: Add CoordinateTest as discovered Coordinate and its functionality
    2. Next: Complete Coordinate inDirection Method 
4. Branch: st_pauli_iter_III (have real turn left and command check)

----

0. Branch: munich_start (have an AcceptanceTest, nothing else)
   1. Next: Acceptance Test grün
1. Branch: munich_iter_I (have the working AcceptanceTest, just fake impl.)
   1. Next: Heading turnLeft, Heading turnRight
      Next: In Rover Heading mehrfach aufrufe in getHeading
2. Branch: munich_iter_II (Heading turnLeft, turnRight mehrfach aufrufe in getHeading):
   1. Next: Liste von commands ersetzen mehrfachaufrufe mit commandMap
3. Branch: munich_iter_III (Mehrfachaufrufe ersetzt, commandMap)
   2. Next: Heading + Forward (enutral)
      - execute dann anreichen um command zerlegen
      - Forward in get Position +
      - Coordinate advance
      - Funktionalität Processing Literale -> rausziehen
      - Jeweils Unit tests?

----
Java 21! Whohoo :)
- Just do it: tdd_as_if_start
- Maybe show the step tdd_as_if_iter1 (derived functionality, still in test)
