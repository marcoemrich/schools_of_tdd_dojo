---
title: Schools of TDD
theme: solarized
revealOptions:
    transition: 'fade'
    controls: false
    progress: false
    autoPlayMedia: true
    transitionSpeed: slow

---

<!-- .slide: data-background="images/schools2.jpg"   -->

<h2 style="position: absolute; top: 370px; right: -150px; color: #ccc; text-transform: none;">Schools of TDD</h2>

<p style="position: absolute; top: 445px; right: -145px; color: #ccc; text-transform: none; text-align: right">
  @MarcoEmrich
</p>
<img src="images/cc.png" class="borderless" style="position: absolute; top: 600px; right: -145px;  width: 350px;" />
<br/><br/><br/><br/><br/><br/><br/>

Note:

Wer weiß welche Schule das ist?
- hier werden die Besten Magier ausgebildet

---
# About TDD

---

# When?
# Who?

---

<h3 style="position: absolute; top: 300px; left: 70px">Invented</h3>

## 1957

<img src="images/von_neumann.gif" width="300px"/>

### John von Neuman
---

<!-- .slide: data-background="images/punch_card.jpg"  -->

---

<h3 style="position: absolute; top: 250px; left: 670px">Rediscovered</h3>

## 1989

<img src="images/kent_beck.png" width="300px"/>

### Kent Beck

---

# 30 Years of TDD

Note: Dieses Jahr feiern wir also 30 Jahre TDD

---

# ...or 60 ?

---

## What happened in these years?

---

# Improving TDD-Skills Today?

Note:
und wie können wir denn Heute aus den letzten 30 Jahren lernen?
Gezielter die am besten passende Form für TDD anwenden
Bild TDD-Passung

---
<!-- .slide: data-background="images/ma1.jpg"  -->

<h2 style="color: white; position: relative; top: -200px">Schools...</h2>

---
<!-- .slide: data-background="images/mas2.jpg"  -->

## Aikido <!--.element:  style="color: white; position: absolute; top: 600px; left: -160px;" -->

---
<!-- .slide: data-background="images/mas3.jpg"  -->

## Ninjitsu <!--.element:  style="position: absolute; top: 600px; left: -160px;" -->

---
<!-- .slide: data-background="images/mas4.jpg"  -->

## Shalin Kungfu-Fu <!--.element:  style="color: white; position: absolute; top: 600px; left: -160px;" -->

---
<!-- .slide: data-background="images/mas_l.jpg"  -->

## Bride-Fu <!--.element:  style="position: absolute; top: 600px; left: -160px;" -->

---
<!-- .slide: data-background="images/mas5.jpg"  -->

## Cat-Fu <!--.element:  style="color: white; position: absolute; top: 600px; left: -160px;" -->

---
> Martial arts can be grouped by type or focus, or alternatively by <b>regional origin</b>.

&mdash; Wikipedia: List_of_martial_arts


---
<!-- .slide: data-background="images/map2.png"   -->

---
<!-- .slide: data-background="images/chicago.jpg"  -->

## Chicago <!-- .element: style="position: relative; top: 250px; left: -150px" -->

---
<img src="images/kent_beck.png" width="400px"/>

## Kent Beck

---
<!-- .slide: data-background="images/london.jpg"  -->

## London <!-- .element: style="position: absolute; top: -200px; left: 800px" -->

---
<img src="images/nat_and_steve.png" />

## Nat Price & Steve Freeman

---
<!-- .slide: data-background="images/munich.jpg"  -->

## Munich <!-- .element: style="position: absolute; top: 400px; left: -40px" -->

---
<img src="images/david.jpg"  width="400px"/>
## David Völkel

---
<!-- .slide: data-background="images/lego.jpg"  -->

## Terms
## &
## Building Blocks

Note: Lego Joke

---
<!-- .slide: data-background="images/mouse.jpg" -->


<h2 style="position: relative; top: -300px" class="stroke">Subject under Test</h2>

---
## Subject under Test: SUT

 * Object
 * Function / Method
 * Module
 * Software System
 * ... something else?


---
<!-- .slide: data-background="images/fire.jpg"  -->

## Test Doubles
### Mocks/Spies
### Stubs

---
## Assertions
## &
## Expectations

---
## Frontdoor Testing
# vs
## Backdoor Testing


---
## Frontdoor Testing
* Result Verification
* State Verification

---
## Result verification
```javascript
test('add adds up two numbers', () => {
  expect( add(3, 4) ).toEqual(7);
});
```

---
## State verification
```javascript
test('addCardOnTop should increase number of Cards in Deck', () => {
  deck = new DeckOfCards();
  deck.addCardOnTop("♥9")
  expect(deck.numberOfCards).toEqual(1);
  expect(deck.topCard).toEqual("♥9");
});
```

---
## Backdoor Testing
* Behavior verification
* Test Doubles: Mocks & Spys

---

## Behavior verification
```javascript
test('addCardOnTop should call shuffle on collection', () => {
  const collectionSpy = {randomizeOrder: jest.fn()};
  deck = new DeckOfCards(collectionSpy);
  deck.shuffle();
  expect(collectionSpy.randomizeOrder).toHaveBeenCalled();
});
```

---
## Sociable vs Solitary*
<img src="images/isolate.png">
<sub>(*) from M. Fowler/ Fields</sub>

---
## Inside Out
# vs
## Outside In

---
<!-- .slide: data-background="images/cat.jpg" data-background-size="contain"  -->

<h1 style="position: relative; top: -270px;"> Inside Out</h1>

---
## Inside Out

<img src="images/circle_io.png" width="500px" class="borderless"/>

---
## Inside Out

<img src="images/io1.png"  width="500px" class="borderless"/>

---
## Inside Out

<img src="images/io2.png"  width="500px" class="borderless"/>

---
## Inside Out

<img src="images/io3.png"  width="500px" class="borderless"/>

---
## Inside Out

<img src="images/io4.png"  width="500px" class="borderless"/>

---
## Inside Out

<img src="images/io5.png"  width="500px" class="borderless"/>

---
## Inside Out

<img src="images/oi6.png"  width="500px" class="borderless"/>

---
<!-- .slide: data-background="images/giraffe.jpg" data-background-size="contain" data-background-position="left 5% center" -->

<h1 style="position: absolute; right: 0px;"> Outside In</h1>

---
## Outside In

<img src="images/circle_oi.png"  width="500px" class="borderless"/>

---
## Outside In

<img src="images/oi1.png"  width="500px" class="borderless"/>

---
## Outside In

<img src="images/oi2.png"  width="500px" class="borderless"/>

---
## Outside In

<img src="images/oi3.png"  width="500px" class="borderless"/>

---
## Outside In

<img src="images/oi4.png"  width="500px" class="borderless"/>

---
## Outside In

<img src="images/oi5.png"  width="500px" class="borderless"/>

---
## Outside In

<img src="images/oi6.png"  width="500px" class="borderless"/>

---

<!-- .slide: data-background="images/schools2.jpg"   -->

<h2 style="position: absolute; top: 470px; right: -50px; color: #ccc">Schools</h2>


---

# Compare?

Note:
 * Best matching Problem for each individual school
 * Same Problem for all Schools

---

# Example


---

# Bank Kata

---

<!-- .slide: data-background="images/kermit.jpg"  -->

---

<!-- .slide: data-background="images/bank.jpg"  -->

<h2 style="position: relative; left: 400px; margin-bottom: 150px">Bank Kata</h2>

```javascript
    account.deposit(1000);
    account.deposit(2000);
    account.withdraw(500);
    account.printStatement()
```
<!-- .element: class="fragment"-->


```
  Date       Amount Balance
  14.01.2019 +1000  1000
  15.01.2019 +2000  3000
  16.01.2019 -500   2500
```
<!-- .element: class="fragment"-->

<small style="color: white; position: relative; top: 160px; font-size: 20px">Original by Sandro Mancuso, see Kata-Log by
Egga Hartung http://kata-log.rocks/banking-kata</small>

---

## Bank Kata
* Original by Sandro Mancuso <br/>
  https://github.com/sandromancuso/Bank-kata
* Kata-Log by Egga Hartung<br />(Softwerkskammer Berlin) <br/>
  http://kata-log.rocks/banking-kata

---

<!-- .slide: data-background="images/katalog.png"  -->



---
<img src="images/deps.svg" class="borderless" style="width: 800px"/>

---
### Outermost

<img src="images/deps.svg" class="borderless" style="width: 800px"/>
<img src="images/arrow.svg" class="borderless" style="width: 100px; position: absolute; left: 888px; top: 100px"/>

---
### Innermost

<img src="images/deps.svg" class="borderless" style="width: 800px"/>
<img src="images/arrow.svg" class="borderless" style="width: 100px; position: absolute; left: 370px; top: 530px"/>
<img src="images/arrow.svg" class="borderless" style="width: 100px; position: absolute; left: 888px; top: 330px"/>


---
<!-- .slide: data-background="images/chicago.jpg"  -->

## Chicago<br/>(Classic) <!-- .element: style="position: relative; top: 250px; left: -150px" -->

---

## Chicago (Classic)

* Inside-Out <!-- .element: class="fragment" -->
* Sociable Tests <!-- .element: class="fragment" -->
* TestDoubles only for External Deps <!-- .element: class="fragment" -->

---

<!-- .slide: data-background="images/hammer.jpg"  -->

# Disclaimer

Notes:

By the book - just for demo purposes

---

<img src="images/deps.svg" class="borderless" style="width: 800px"/>
<img src="images/arrow.svg" class="borderless" style="width: 100px; position: absolute; left: 370px; top: 475px"/>
<img src="images/arrow.svg" class="borderless" style="width: 100px; position: absolute; left: 888px; top: 275px"/>

---
Transaction

```javascript
describe('Transaction', () => {
  it('should hold date & amount', () => {
    const date = new Date(2019, 0, 10);
    const amount = 1200;

    const transaction = new Transaction(date, amount);

    expect(transaction.date).toEqual(date);
    expect(transaction.amount).toEqual(amount);
  })
});
```

```javascript
export class Transaction {
  constructor(date, amount) {
    this.date = date;
    this.amount = amount;
  }
}
```

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 1080px; top: 75px"/>

---
formattedDate

```javascript
describe('formattedDate', () => {
  it('formats a string for a Date', () => {
    expect(
      formattedDate(new Date(2019, 0, 10))
    ).toEqual(
      "10.1.2019"
    );
  });
});
```

```javascript
export const formattedDate = date =>
  `${date.getDate()}` +
  `.${date.getMonth() + 1}` +
  `.${date.getFullYear()}`;
```
<!-- .element: class="fragment" -->

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 975px; top: 130px"/>

---
StatementLine

```javascript
describe('StatementLine#toString', () => {
  it('should return a formatted string', () => {
    const transaction = new Transaction(new Date(2019, 0, 10), 1000);

    const statementLine = new StatementLine(transaction, 3000);

    expect( statementLine.toString() ).toEqual(
      "10.1.2019\t+1000\t3000"
    );
  });
});
```

```javascript
export class StatementLine {
  toString() {
    return "10.1.2019\t+1000\t3000";
  }
}
```
<!-- .element: class="fragment" -->

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 993px; top: 77px"/>

---
Triangulation

```javascript
    ...
    expect( statementLine.toString() ).toEqual(
      "10.1.2019\t+1000\t3000"
    );
  });

  it('returns a formatted string for 2nd Transaction', () => {
    ...
    expect( statementLine.toString() ).toEqual(
      "14.1.2019\t+500\t2000"
  ...

```

```javascript
import { formattedDate } from "./formattedDate";
export class StatementLine {
...
toString() {
    return `${formattedDate(this.transaction.date)}\t` +
           `+${this.transaction.amount}\t` +
           `${this.balance}`;
  }
}
```
<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 993px; top: 77px"/>

---
Statement

```javascript
describe('Statement', () => {
  it('should print a blank Statement', () => {...
  it('should print a Statement with 1 Transaction', () => {...
  it('should print a Statement with 2 Transactions', () => {...)
```

```javascript
export class Statement {
  constructor() { ... }
  toString() {
    return "Date\tAmount\tBalance\n" +
  ...
  balanceForLines(lines) {...
  lastLine(lines) {...
  areLinesEmpty(lines) {...

```

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 992px; top: 4px"/>

---
Account

```javascript
  it('should add new Transactions on Deposit', () => {...
  it('should add two new Transactions on two Deposits', () => {
    const account = new Account();

    account.deposit(new Date(2019, 0, 10), 2000);
    account.deposit(new Date(2019, 0, 14), 1000);

    expect( account.transactions ).toEqual( [
      new Transaction(new Date(2019, 0, 10), 2000),
      new Transaction(new Date(2019, 0, 14), 1000),
    ] );
  });
```

```javascript
import { Transaction } from "./Transaction";

export class Account {
  constructor() { this.transactions = []; }

  deposit(date, amount) {
    this.transactions.push(new Transaction(date, amount));
  }
}
```
<!-- .element: class="fragment" -->

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 1102px; top: 2px"/>

---
account.print()

```javascript
describe('Account', () => {
  ...
  it('should print a Statement', () => {
    const printFn = jest.fn();
    const account = new Account();
    account.deposit(new Date(2019, 0, 10), 2000);
    account.deposit(new Date(2019, 0, 14), 1000);
    account.print(printFn);
    expect(printFn).toHaveBeenCalledWith((new Statement(account)).toString());
  });
});
```

```javascript
import { Transaction } from "./Transaction";
import { Statement } from "./Statement";

export class Account {
  ...
  print(printFn) {
    const statement = new Statement(this);
    printFn(statement.toString());
  }

```
<!-- .element: class="fragment" -->

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 1102px; top: 2px"/>

---
## Consequences of Chicago Classic

* \- Can be fragile <!-- .element: class="fragment"  style="color: red"-->
* \- Can be slow <!-- .element: class="fragment"  style="color: red"-->
* \- Defect Localization is hard <!-- .element: class="fragment"  style="color: red"-->

---
<!-- .slide: data-background="images/chicago.jpg"  -->

## Chicago<br/>(Modern) <!-- .element: style="position: relative; top: 250px; left: -150px" -->

---

## Chicago (Modern)
* J.B. Rainsberger
* Roy Osherove
* Jay Fields
* ...

<img src="images/jbrains.jpg" height="300px">
<img src="images/osherove.jpg" height="300px">
<img src="images/fields.png" height="300px">

---
## Chicago (Modern)

* Inside-Out <!-- .element: class="fragment" -->
* Solitary Tests <!-- .element: class="fragment" -->
* Lot of Stubs / Some Mocks <!-- .element: class="fragment" -->

---
**SUT**: StatementLine<br/>
**NOT SUT**: Transaction, formattedDate

```javascript
describe('StatementLine#toString', () => {
  it('should return a formatted string', () => {
    const transaction = new Transaction(new Date(2019, 0, 10), 1000);
    const statementLine = new StatementLine(transaction, 3000);
    expect( statementLine.toString() ).toEqual(
      "10.1.2019\t+1000\t3000"
    );
  });
```

```javascript
import { formattedDate } from "./formattedDate";

export class StatementLine {
  constructor(transaction, balance) {
    this.transaction = transaction;
    this.balance = balance;
  }
  toString() {
    return `${formattedDate(this.transaction.date)}\t+${this.transaction.amount}\t${this.balance}`;
  }
}
```

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 993px; top: 77px"/>

Note: wichtig: was ist unser SUT

* Wer erkennt die 2 Probleme
* Wer sieht die Abhängigkeiten? transaction, formattedDate
* Integrated mit: Transaction und formattedString
* Teste immer beides mit. formattedString ist weniger offensichtlich, aber auch Abhängigkeit
* Änderungen an formattedString brechen die statementLine -> Zeichen für kaputtes Design, natürlich sollte es möglich sein das Datumsformat eines anderen Landes zu verwenden.

---
SUT: StatementLine

```javascript
  it('should return a formatted string', () => {
    const transaction = new Transaction(new Date(2019, 0, 10), 1000);
    const statementLine = new StatementLine(transaction, 3000);
    ...
  });
```

&darr; Refactoring: replace Class with Stub

```javascript
  it('should return a formatted string', () => {
    const transaction = {date: new Date(2019, 0, 10), amount: 1000};
    const statementLine = new StatementLine(transaction, 3000);
    ...
  });
```


---
SUT: StatementLine

```javascript
export class StatementLine {
  ...
  toString() {
    return `${formattedDate(this.transaction.date)}\t+${this.transaction.amount}\t${this.balance}`;
  }
}
```

&darr; Refactoring: Inject Function Dependency

```javascript
export class StatementLine {
  ...
  toString(dateFormat) {
    return `${dateFormat(this.transaction.date)}\t+${this.transaction.amount}\t${this.balance}`;
  }
}
```

Note:
ok, wie werden wir die 2. Abhängigkeit los?
formattedDate ist harte Abhängigkeit

---
```javascript
  it('should return a formatted string', () => {
    ...
    expect( statementLine.toString() ).toEqual(
      "10.1.2019\t+1000\t3000"
  });
```

&darr; Refactoring: Inject Function Dependency

```javascript
  it('should return a formatted string', () => {
    ...
    const germanDateFormat = jest.fn().mockReturnValue("10.1.2019");
    ...
    expect( statementLine.toString(germanDateFormat) ).toEqual(
      "10.1.2019\t+1000\t3000"
    );
  });
```
---
Refactoring: Rename Function

formattedDate &rarr; germanDateFormat

```javascript
import { germanDateFormat } from "./germanDateFormat";

describe('germanDateFormat', () => {
  it('should return a string for a Date formatted to the German standard', () => {
    expect(germanDateFormat(new Date(2019, 0, 10))).toEqual("10.1.2019");
  });
});
```

```javascript
export const germanDateFormat = date =>
  `${date.getDate()}.${date.getMonth() + 1}.${date.getFullYear()}`;
```

Note: das nächste Requirement für ein anderes Datumsformat kommt bestimmt.
Jetzt können wir es konfigurieren

---
## Consequences of Chicago Modern

<ul>
  <li class="fragment" style="color: green">+ ~~can be fragile~~ mostly stable</li>
  <li class="fragment" style="color: green">+ ~~Can be slow~~ blazing fast</li>
  <li class="fragment" style="color: green">+ Defect Localization is ~~hard~~ easy</li>
  <li class="fragment" style="color: red">- Additional Integration Tests needed</li>

</ul>


---
## General Chicago Consequences

* \+ Useful for Emergent Design/Experimentation <!-- .element: class="fragment" style="color: green"-->
* \+ Applicable in most situations <!-- .element: class="fragment" style="color: green"-->
* \+ Easy to learn <!-- .element: class="fragment" style="color: green"-->
* \- Needs more Refactoring than London <!-- .element: class="fragment" style="color: red"-->
* \- Dead/useless code possible: YAGNI <!-- .element: class="fragment" style="color: red" -->

---
<!-- .slide: data-background="images/london.jpg"  -->

## London <!-- .element: style="position: absolute; top: -200px; left: 800px" -->

---

## London
## =
## Outside-In with Mocks

---
## London

Double Loop ATDD

<img src="images/double_loop.jpg" width="500px"/>

stolen from Emily Bache

---
## London

* Double Loop ATDD
* Outside-In <!-- .element: class="fragment" -->
* Mocks as main Verification Mechanism <!-- .element: class="fragment" -->
* Less Refactoring <!-- .element: class="fragment" -->

---

Acceptance Spec

```javascript
describe('Banking Kata Acceptance Spec', () => {
  it('should print a Statement with two Deposits', () => {
    const printerFn = jest.fn();
    const account = new Account();
    account.deposit(Date(2012, 0, 10), 1000);
    account.deposit(Date(2012, 0, 13), 2000);

    account.print(printerFn);

    expect(printerFn).toHaveBeenCalledWith(
      "Date\tAmount\tBalance\n" +
      "10.1.2012\t+1000\t1000\n" +
      "13.1.2012\t+2000\t3000\n"
    );
  });
});
```

<img src="images/deps.svg" id="mini-deps-image">

---

Acceptance Spec

```javascript
describe('Banking Kata Acceptance Spec', () => {
  it('should print a Statement with two Deposits', () => {
  ...
```

X-out

```javascript
xdescribe('Banking Kata Acceptance Spec', () => {
  it('should print a Statement with two Deposits', () => {
  ...

```

---
Account Spec: deposit

```javascript
describe('Account', () => {
  it('should add StatementLine of deposit to Statement', () => {
    const statement = {addLine: jest.fn()};
    const transaction = new Transaction(new Date(2012, 0, 13), 1000);
    const account = new Account(statement);

    account.deposit(new Date(2012, 0, 13), 1000);
    expect(statement.addLine).toHaveBeenCalledWith(
      transaction, 1000
    )
  });

```

```javascript
class Account {
  constructor(statement) {
    this.statement = statement;
  }
  deposit(date, value) {
    this.statement.addLine(new Transaction(date, value), value);
  }
}
```
<!-- .element: class="fragment" -->

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 1102px; top: 2px"/>

Note:

 * wo fang ich an?
 * wichtig ist, was ich nicht tue: SUT formattedString




---
Account Spec: printStatement

```javascript
describe('Account', () => {
  it('should add StatementLine of deposit to Statement', () => {
  ...

  it('should print Statement', () => {
    const statement = {print: jest.fn()};
    const account = new Account(statement);
    const printFn = jest.fn();
    account.print(printFn);
    expect(statement.print).toHaveBeenCalledWith(printFn);
  });
});
```

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 1102px; top: 2px"/>


```javascript
class Account {
  ...
  printStatement(fn) {
    this.statement.print(fn);
  }
}
```
<!-- .element: class="fragment" -->


---
Statement

```javascript
describe('Statement', () => {
  it('should print Header', () => {
    const printFn = jest.fn();
    const statement = new Statement()
    statement.print(printFn);
    expect(printFn).toHaveBeenCalledWith('Date\tAmount\tBalance');
  });
});
```

```javascript
class Statement {
  print(printFn) {
    printFn('Date\tAmount\tBalance');
  }
}
```
<!-- .element: class="fragment" -->

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 992px; top: 4px"/>

---
Statement

```javascript
class Statement {
  print(printFn) {
    printFn('Date\tAmount\tBalance');
  }
}
```

Refactoring: Extract Constant

```javascript
class Statement {
  constructor() {
    this.STATEMENT_HEADER = 'Date\tAmount\tBalance';
  }

  print(printFn) {
    printFn(this.STATEMENT_HEADER);
  }
}
```

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 992px; top: 4px"/>

---
Statement Spec

```javascript
describe('Statement', () => {
  it('should print Header', () => {
    const printFn = jest.fn();
    const statement = new Statement()
    statement.print(printFn);
    expect(printFn).toHaveBeenCalledWith(statement.STATEMENT_HEADER);
  });
});
```

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 992px; top: 4px"/>

---
Statement Spec

```javascript
...
  it('should print each line', () => {
    const printFn = jest.fn();
    const statementLine1 = {print: jest.fn()};
    const statementLine2 = {print: jest.fn()};

    const statement = new Statement()
    statement.addLine(statementLine1);
    statement.addLine(statementLine2);
    statement.print(printFn);

    expect(statementLine1.print).toHaveBeenCalledWith(printFn);
    expect(statementLine2.print).toHaveBeenCalledWith(printFn);
  });
});
```

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 992px; top: 4px"/>

---
Statement

```javascript
class Statement {
  constructor() {
    this.STATEMENT_HEADER = 'Date\tAmount\tBalance';
    this.lines = [];
  }

  addLine(statementLine) {
    this.lines.push(statementLine);
  }

  print(printFn) {
    printFn(this.STATEMENT_HEADER);
    this.lines.forEach(l => l.print(printFn));
  }
}
```

<img src="images/deps.svg" id="mini-deps-image">
<img src="images/arrow.svg" class="borderless" id="mini-deps-arrow" style="left: 992px; top: 4px"/>

---
## London Consequences

* \+ No YAGNI <!-- .element: class="fragment" style="color: green" -->
* \+ Obvious next step <!-- .element: class="fragment" style="color: green" -->
* Leads to "Tell Don't Ask"-design <!-- .element: class="fragment" -->
* Easier for known designs <!-- .element: class="fragment" -->
* \- Design harder to refactor <!-- .element: class="fragment" style="color: red" -->
* \- Mocking is hard <!-- .element: class="fragment" style="color: red" -->

Notes:

 * YAGNI: formattedString: brauch ich das?, kein Beweis
 * Vielleicht stell ich später fest, ich hab' ne Methode implementiert, die ich gae nicht benutze
 * Bei London kann das nicht passieren
 * Obvious Next Step ist eine Prop von Outside-In
 * Harder to refactor: Test zementieren Implementierung

---
<!-- .slide: data-background="images/fire.jpg"  -->

## Test Doubles
## Mocks

Note:
Der Test Double Typ, den London am meisten Verwendet sind Mocks!
und wie das mit Stunts manchmal ist, Sie können auch schief gehen...

---
<!-- .slide: data-background="images/stunt1.jpg" data-background-size="contain" -->
---
<!-- .slide: data-background="images/stunt2.jpg" data-background-size="contain" -->
---
<!-- .slide: data-background="images/stunt3.jpg" data-background-size="contain" -->

---
<!-- .slide: data-background="images/munich.jpg"  -->

## Munich <!-- .element: style="position: absolute; top: 400px; left: -40px" -->

---
## Munich
## =
## Fake-It Outside-In

---
# Munich

* Outside-In <!-- .element: class="fragment" -->
* with or without Mocks <!-- .element: class="fragment" -->
* Very Large Amount of Refactorings <!-- .element: class="fragment" -->

---

# Influences

* **2003** Kent Beck: *Green-Bar Patterns: "Fake It", "Preparatory Refactoring"*
* **2009** GOOS’s: *Outside-In Design*
* **2013** Emily Bache: *Outside-In development with Double Loop TDD*
* **2013** Ralph Westphal: *Integration Segregation Principle*
* **2014** Justin Searls: *The Failures of "Intro to TDD"*
* **2017** Llewelyn Falco: *Fake it Till you Make It*

---
## Munich

<img src="images/munich1.png"  width="500px" class="borderless"/>

---

## Munich

<img src="images/munich2.png"  width="500px" class="borderless"/>

---

## Munich

<img src="images/munich7.png"  width="500px" class="borderless"/>

---

## Munich

<img src="images/munich8.png"  width="500px" class="borderless"/>

---

## Munich

<img src="images/munich9.png"  width="500px" class="borderless"/>

---

## Munich

<img src="images/munich10.png"  width="500px" class="borderless"/>

---

## Munich

<img src="images/munich11.png"  width="500px" class="borderless"/>

---

## Munich

<img src="images/munich12.png"  width="500px" class="borderless"/>

---

## Munich

<img src="images/munich13.png"  width="500px" class="borderless"/>
---

## Munich

<img src="images/munich14.png"  width="500px" class="borderless"/>


---
Outer Spec

```javascript
describe('Account', () => {
  it('should print the correct statement after withdraws and deposits', () => {
    const account = new Account();
    account.deposit(new Date(2012, 0, 10), 1000);
    account.deposit(new Date(2012, 0, 13), 2000);

    expect(
      new Statement(account).toString()
    ).toEqual(
      "Date\tAmount\tBalance\n" +
      "10.1.2012\t+1000\t1000\n" +
      "13.1.2012\t+2000\t3000"
    );
  });
});

```

<img src="images/deps.svg" id="mini-deps-image">


Note:

toString() statt print wegen Rückgabewert
kein Double Loop -> machen wir grün
keine Mocks

---
Fake-It

```javascript
class Account {
  deposit(date, amount) {}
}

class Statement {
  constructor(account) {}

  toString() {
    return "Date\tAmount\tBalance\n" +
      "10.1.2012\t+1000\t1000\n" +
      "13.1.2012\t+2000\t3000";
  }
}
```

<img src="images/deps.svg" id="mini-deps-image">

Note:

kein Double Loop -> machen wir grün
keine Mocks

---

```javascript
class Statement {
  constructor(account) {}

  toString() {
    return "Date\tAmount\tBalance\n" +
      "10.1.2012\t+1000\t1000\n" +
      "13.1.2012\t+2000\t3000";
  }
}
```

&darr; Refactoring: String &rarr; Array &darr;

```javascript
class Statement {
  constructor(account) {}

  toString() {
    const statementLines = [
      "Date\tAmount\tBalance",
      "10.1.2012\t+1000\t1000",
      "13.1.2012\t+2000\t3000"];
    return statementLines.join('\n')
  }
}
```
---
```javascript
  toString() {
    const statementLines = [
      "Date\tAmount\tBalance",
      "10.1.2012\t+1000\t1000",
      "13.1.2012\t+2000\t3000"];
    return statementLines.join('\n')
  }
```

&darr; Refactoring: Introduce Constant / Instance Var &darr;

```javascript
  toString() {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      "10.1.2012\t+1000\t1000",
      "13.1.2012\t+2000\t3000"
    ];
    const statementLines =
      [this.STATEMENT_HEADER].concat(this.statementLines);
    return statementLines.join('\n')
  }
```
---
```javascript
  toString() {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      "10.1.2012\t+1000\t1000",
      "13.1.2012\t+2000\t3000"
    ];
    const statementLines =
      [this.STATEMENT_HEADER].concat(this.statementLines);
    return statementLines.join('\n')
  }
```

&darr; Refactoring: Move Assignment to Constructor &darr;

```javascript
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      "10.1.2012\t+1000\t1000",
      "13.1.2012\t+2000\t3000"
    ]
  }
  toString() {
    const statementLines =
      [this.STATEMENT_HEADER].concat(this.statementLines);
    return statementLines.join('\n')
  }
```
---
```javascript
  toString() {
    const statementLines =
      [this.STATEMENT_HEADER].concat(this.statementLines);
    return statementLines.join('\n')
  }
```

&darr; Refactoring: Inline Variable &darr;

```javascript
class Statement {
  ...
  toString() {
    return [this.STATEMENT_HEADER]
      .concat(this.statementLines)
      .join('\n');
  }
}
```

---
```javascript
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      "10.1.2012\t+1000\t1000",
      "13.1.2012\t+2000\t3000"
    ]
  }
```

&darr; Refactoring: Introduce Class &darr;

```javascript
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      new StatementLine("10.1.2012\t+1000\t1000"),
      new StatementLine("13.1.2012\t+2000\t3000")
    ]
  }
...

class StatementLine {
  constructor(line)  {this.line = line;}
  toString() {return this.line;}
}
```
---

# Intermediate Tests

---

```javascript
describe('StatementLine#toString', () => {
  it('should return a tab-separated String', () => {
    const transaction = new Transaction("21.2.2012", "+1000");
    const statementLine = new StatementLine(transaction, 4000);
    expect( statementLine.toString() ).toEqual(
      "21.2.2012\t+1000\t4000"
    );
  });
});
```
---
```javascript
class StatementLine {
  constructor(transaction, balance)  {
    this.transaction = transaction;
    this.balance = balance;
  }
  toString() {
    return [
      this.transaction.date,
      this.transaction.amount,
      this.balance
    ].join('\t');
  }
}
```
---
```javascript
class Transaction {
  constructor(date, amount) {
    this.date = date;
    this.amount = amount;
  }
}
```
---
```javascript
class Statement {
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      new StatementLine("10.1.2012\t+1000\t1000"),
      new StatementLine("13.1.2012\t+2000\t3000")
    ]
  }
  ...
```

&darr; Refactoring: Split Arguments &darr;

```javascript
class Statement {
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      new StatementLine(new Transaction("10.1.2012", "+1000"), 1000),
      new StatementLine(new Transaction("13.1.2012", "+2000"), 3000)
    ]
  }
  ...

```

---
```javascript
class Statement {
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      new StatementLine(new Transaction("10.1.2012", "+1000"), 1000),
      new StatementLine(new Transaction("13.1.2012", "+2000"), 3000)
  ...
```

&darr; Refactoring: Move Transactions to Account &darr;

```javascript
class Account {
  constructor()  {
    this.transactions = [
      new Transaction("10.1.2012", "+1000"),
      new Transaction("13.1.2012", "+2000")
...
class Statement {
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      new StatementLine(account.transactions[0], 1000),
      new StatementLine(account.transactions[1], 3000)
    ]
  }
```

---
```javascript
class Account {
  constructor()  {
    this.transactions = [
      new Transaction("10.1.2012", "+1000"),
      new Transaction("13.1.2012", "+2000")
...
```
&darr; Refactoring: Replace Fake Value &darr;

```javascript
class Account {
  constructor()  {
    this.transactions = []
  }
  deposit(date, amount) {
    this.transactions.push(new Transaction(formattedDate(date), "+" + amount))
  }
}
```

---
```
class Statement {
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = [
      new StatementLine(account.transactions[0], 1000),
      new StatementLine(account.transactions[1], 3000)
    ]
  }
  ...
```

&darr; Refactoring: Replace Fixed Index with map &darr;

```javascript
class Statement {
  constructor(account) {
    this.STATEMENT_HEADER = "Date\tAmount\tBalance";
    this.statementLines = account.transactions.map(
      (t, i, ts) => new StatementLine(t, balance(ts, i))
    );
  }
```
Note:

 * Ich hab' formattedDate nicht nochmal gezeigt, ist aber das gleiche

---
## Munich Consequences

* \+ No YAGNI <!-- .element: class="fragment" style="color: green" -->
* \+ Obvious next step <!-- .element: class="fragment" style="color: green" -->
* \+ ...from many choices <!-- .element: class="fragment" style="color: green" -->
* \- ...from many choices <!-- .element: class="fragment" style="color: red" -->
* \+ No Mocks needed!!! <!-- .element: class="fragment" style="color: green" -->
* \+ Higher Amount of Time in Green <!-- .element: class="fragment" style="color: green" -->
* -> Lower Risk <!-- .element: class="fragment"  style="color: green" -->

Note:

Obvious Next Step (Prop. von Outside-In) ist noch stärker als bei London (Prop. of Fake It)

---
<!-- .slide: data-background="images/trophy.jpg"   -->

# Best School? <!-- .element: style="position:relative; top: -200px " -->

Note:
wer hat gewonnen?

---
> It depends™

&mdash; any Consultant, ever <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="images/tools.jpg"   -->
## Choose
## Best Tool
## for the job

---
<!-- .slide: data-background="images/blend.png"   -->

# Will it blend? <!-- .element: style="position:relative; top: -70px " -->

---
<!-- .slide: data-background="images/hamburg.jpg"   -->

## Hamburg School
### by Ralph Westphal

## St.Pauli School
### by Steven Collins

---

## References: General

* [Interview with Kent Beck](https://arialdomartini.wordpress.com/2012/07/20/you-wont-believe-how-old-tdd-is)
* [Martin Fowler: Mocks aren't Stubs](https://martinfowler.com/articles/mocksArentStubs.html#SoShouldIBeAClassicistOrAMockist)
* [Martin Fowler: Solitary or Sociable](https://martinfowler.com/bliki/UnitTest.html)
* [David Völkel:  Mockist vs Classicists](https://www.youtube.com/watch?v=n62HN2DHDEU) - [Slides](https://de.slideshare.net/davidvoelkel/mockist-vs-classicists-tdd-69505839)
* Book ATDD by Markus Gärtner


---
## References: Chicago

* [J.B. Rainsberger: Integrated Tests are a Scam](https://blog.thecodewhisperer.com/permalink/integrated-tests-are-a-scam)
* [J.B. Rainsberger: Universal Architecture](https://www.red-gate.com/blog/software-development/universal-architecture)
* [Justin Seals: Detroit school TDD](https://github.com/testdouble/contributing-tests/wiki/Detroit-school-TDD)
* Book: Test-Driven Development by Kent Beck

---
## References: London

* [Emily Bache: Double-Loop TDD](http://coding-is-like-cooking.info/2013/04/outside-in-development-with-double-loop-tdd/)
* Book: Growing Object Oriented Software Guided by Tests by Steve Freeman & Nat Price

---
## References: Munich
* [David Völkel: Fake-it Outside-In](https://de.slideshare.net/davidvoelkel/fake-it-outsidein-tdd-xp2017)
* [David Völkel: Screencasts (Youtube)](https://www.youtube.com/channel/UCevhQwU63dxJYPb8sZY-Zgg)

---

<img src="images/david_screencasts.png" />

---
### Image Credits

<ul style="font-size: 15px">

* Kent Beck by Improve It on Flickr, CC BY-SA 2.0
* Making of Harry Potter - Karen Roe on Flickr, CC BY 2.0
* Children practicing Taekwondo in Kathmandu, Nepal by Adli Wahid on Unsplash, CC0
* Watch Where You're Putting That Thing: Chris Gilmore Follow, CC BY-SA 2.0
* [Map images from Googlemaps](https://drive.google.com/open?id=19PMzl5GRQOqTpN3WY9Z__lpoMaA8mzY3&usp=sharing)
* Drunken Kermit by Alexas Fotos on Pixabay, CC0
* Skyline Skyscraper by PIRO4D on Pixabay, CC0
* Detroit Photo by Sawyer Bengtson on Unsplash, CC0
* London Photo by Luca Micheli on Unsplash, CC0
* Munich Photo by Christoph Keil on Unsplash, CC0
* Lego Photo by Rick Mason on Unsplash, CC0
* Aerial view Zhangjiajie glass bridge by www.highestbridges.com
* Fire Motorcycle Stunt by digihanger on Pixabay, CC0
* Trophy by Fauzan Saari on Unsplash, CC0
* iPhone in Blender from Blendtec's Will It Blend? https://www.youtube.com/watch?v=lBUJcD6Ws6s
* Hamburg by liggraphy from Pixabay, CC0

</div>

---

# THX

## Feedback

<img src="images/qr.png" width="200" />

@MarcoEmrich
