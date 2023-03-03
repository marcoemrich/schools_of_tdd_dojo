---
title: Die sieben Schulen der TDD
theme: solarized
revealOptions:
  transition: "fade"
  controls: false
  progress: false
  autoPlayMedia: true
  transitionSpeed: slow
---

<!-- .slide: data-background="images/schools2.jpg"   -->

# Coding Dojo

<h1 style="text-transform: none;">7 Schools<br/> of TDD</h1>

<p style="position: absolute; top: 530px; right: -145px; color: #ccc; text-transform: none; text-align: right" class="handles">
  @MarcoEmrich - @srose
</p>
<img src="images/cc.png" class="borderless" style="position: absolute; top: 600px; right: -145px;  width: 350px;" />
<br/><br/><br/><br/><br/><br/><br/>

Note:

Wer weiß welche Schule das ist?

- hier werden die Besten Magier ausgebildet

- anderes Bild, weil anderer Titel?

---

<!-- .slide: data-background="images/heart.jpg" data-background-size="contain" -->

# Welcome!

----

<!-- .slide: data-background="images/ma1_g.jpg"  -->

# Coding Dojo

----

<!-- .slide: data-background="images/rover.jpg"  -->

# Coding Kata

<br /><br /><br /><br /><br /><br /><br />

# Mars Rover

----

<img src="images/rover_graph.png" style="height: 400px" />

- **Start:** 2,2 N
- **Commands:** "FLFF"
- **End:** 0,3 W

----

<!-- .slide: data-background="images/pair.png"  -->

----

<!-- .slide: data-background="images/rgf.png" data-background-size="contain" -->

# TDD <!-- .element style="position: absolute; left: 650px; top: -300px" -->

Note:

Invented by?

Invented when?

30-60 Years, and nothing changed?

Well, that is why we are here

---

<!-- .slide: data-background="images/chicago.jpg"  -->

# Chicago!

Note:

Let us start here, first "school", without further knowledge

----

<!-- .slide: data-background="images/chicago_g.jpg"  -->

## Essentials

- **Inside-Out**
- **Sociable** Tests
- **Test Doubles** only for external dependencies

----

<!-- .slide: data-background="images/chicago_g.jpg"  -->

## Show

----

<!-- .slide: data-background="images/chicago_g.jpg"  -->

## Consequences

- Can be fragile <!-- .element: style="color: red"-->
- Can be slow <!-- .element: style="color: red"-->
- Defect Localization is hard <!-- .element: style="color: red"-->

---

<!-- .slide: data-background="images/ma1_g.jpg"  -->

## Seven schools of TDD

- Chicago (classic)
- Chicago (modern)
- London
- Munich
- St.Pauli
- Hamburg
- TDD As If You Meant It
- _more..._

Note:

- Motivation
- could be called Styles of TDD
- ...

---

<!-- .slide: data-background="images/chicago.jpg"  -->

# modern Chicago!

----

<!-- .slide: data-background="images/chicago_g.jpg"  -->
## Essentials

- **Inside-Out**
- **Solitary/Isolated Tests**
- Many **Stubs**
- **Mocks** only if needed

----

<!-- .slide: data-background="images/chicago_g.jpg"  -->

## Show

----

<!-- .slide: data-background="images/chicago_g.jpg"  -->

## Consequences

<ul>
  <li style="color: #4dff4dbd">+ ~~can be fragile~~ mostly stable</li>
  <li style="color: #4dff4dbd">+ ~~Can be slow~~ blazing fast</li>
  <li style="color: #4dff4dbd">+ Defect Localization is ~~hard~~ easy</li>
  <li style="color: red">- Additional Integration Tests needed</li>
</ul>

---

<!-- .slide: data-background="images/london.jpg"  -->

# London

----

<!-- .slide: data-background="images/london_g.jpg"  -->

## Essentials

- **Motivation:** YAGNI
- Outside-In
- Solitary/Isolated Tests
- Mocks for Verification

----

<!-- .slide: data-background="images/london_g.jpg"  -->

## Show

----

<!-- .slide: data-background="images/london_g.jpg"  -->

## Consequences

- "Tell Don't Ask"-design <!-- .element:  -->
- \+ Prevents YAGNI <!-- .element:  style="color: #4dff4dbd" -->
- \+ On-Rails <!-- .element:  style="color: #4dff4dbd" -->
- \+ Less refactoring <!-- .element:  style="color: #4dff4dbd" -->
- \- Hard to refactor <!-- .element: style="color: red" -->
- \- Mocking is hard <!-- .element: style="color: red" -->

---

<!-- .slide: data-background="images/munich.jpg"  -->

# Munich

----

<!-- .slide: data-background="images/munich_g.jpg"  -->

## Essentials
- **Motivation**: Avoids Mocks
- Outside-In
- temporary in-production Stubs/Fakes
- Refactoring-based
- Complex Acceptance Test

----

<!-- .slide: data-background="images/munich_g.jpg"  -->

## Show

----

<!-- .slide: data-background="images/munich_g.jpg"  -->

## Consequences

- Prevents YAGNI <!-- .element: style="color: #4dff4dbd" -->
- Avoid Mocks <!-- .element: style="color: #4dff4dbd" -->
- On-Rails <!-- .element: style="color: #4dff4dbd" -->
- More Time in the Green &rarr; Lower Risk <!-- .element:  style="color: #4dff4dbd" -->

---

<!-- .slide: data-background="images/stpauli.jpg"  -->

# St. Pauli

----

<!-- .slide: data-background="images/stpauli_g.jpg"  -->

## Essentials

- **Motivation:** Simple Starter-Test
- Outside-In
- Avoids Mocks
- Triangulation/Refactoring-based
- Append Only

----

<!-- .slide: data-background="images/stpauli_g.jpg"  -->

## Show

----

<!-- .slide: data-background="images/stpauli_g.jpg"  -->

## Consequences

- Prevents YAGNI <!-- .element: style="color: #4dff4dbd" -->
- Avoid Mocks <!-- .element: style="color: #4dff4dbd" -->
- Even more On-Rails <!-- .element: style="color: #4dff4dbd" -->
- simpler than Munich for beginners <!-- .element: style="color: #4dff4dbd" -->
- Triangulation can be slow <!-- .element: style="color: red" -->

---

<!-- .slide: data-background="images/hamburg.jpg"  -->

# Hamburg

----

<!-- .slide: data-background="images/hamburg_g.jpg"  -->

## Essentials

- **Motivation:** Think Before Coding
- Design Up Front (BDUF vs. DUF)
- Analyze->Design->Code

----

<!-- .slide: data-background="images/hamburg_g.jpg"  -->

## Show

----

<!-- .slide: data-background="images/hamburg_g.jpg"  -->

## Consequences

- Avoids "Pear-Programming" <!-- .element: style="color: #4dff4dbd" -->
- Clear Understanding of the Business Problem <!-- .element: style="color: #4dff4dbd" -->
- DUF can be wrong <!-- .element: style="color: red" -->

---

<!-- .slide: data-background="images/london.jpg"  -->

## TDD as if <br/>You Meant It <!-- .element: style="position: absolute; top: 480px; left: -150px" -->

Note:

- also born in London?

----

<!-- .slide: data-background="images/london_g.jpg"  -->

## Essentials

- **Motivation:** Feedback-Driven Design
- Inside-Out
- Write Production Code in Tests as long as possible
  <br/>&rarr; Delay Design Decisions
- Refactor to Structure

----

<!-- .slide: data-background="images/london_g.jpg"  -->

## Show

----

<!-- .slide: data-background="images/london_g.jpg"  -->

## Consequences

- Minimal structure <!-- .element:  style="color: #4dff4dbd" -->
- High Refacturability <!-- .element:  style="color: #4dff4dbd" -->
- Feels slow to start<!-- .element:  style="color: red" -->

---

<!-- .slide: data-background="images/ma1_g.jpg"   -->

# Best School? <!-- .element: style="position:relative; top: -200px " -->

Note:
wer hat gewonnen?

----

> It depends™

&mdash; any Consultant, ever <!-- .element: class="fragment" -->

Note:

- Bild?

----

<!-- .slide: data-background="images/tools.jpg"   -->

## Choose

## Best Tool

## for the job

---

# THX

## Feedback

@MarcoEmrich
@srose

Note:

- Bild?

----

## References: General

- [Interview with Kent Beck](https://arialdomartini.wordpress.com/2012/07/20/you-wont-believe-how-old-tdd-is)
- [Martin Fowler: Mocks aren't Stubs](https://martinfowler.com/articles/mocksArentStubs.html#SoShouldIBeAClassicistOrAMockist)
- [Martin Fowler: Solitary or Sociable](https://martinfowler.com/bliki/UnitTest.html)
- [David Völkel: Mockist vs Classicists](https://www.youtube.com/watch?v=n62HN2DHDEU) - [Slides](https://de.slideshare.net/davidvoelkel/mockist-vs-classicists-tdd-69505839)
- [A Brief History of Mock Objects](http://www.mockobjects.com/2009/09/brief-history-of-mock-objects.html)
- [Book ATDD by Markus Gärtner](https://www.goodreads.com/book/show/13705173-atdd-by-example?from_search=true&from_srp=true&qid=uwc21eDQay&rank=1)

----

## References: Chicago

- [J.B. Rainsberger: Integrated Tests are a Scam](https://blog.thecodewhisperer.com/permalink/integrated-tests-are-a-scam)
- [J.B. Rainsberger: Universal Architecture](https://www.red-gate.com/blog/software-development/universal-architecture)
- [Justin Seals: Detroit school TDD](https://github.com/testdouble/contributing-tests/wiki/Detroit-school-TDD)
- Book: Test-Driven Development by Kent Beck

----

## References: London

- [Emily Bache: Double-Loop TDD](http://coding-is-like-cooking.info/2013/04/outside-in-development-with-double-loop-tdd/)
- Book: Growing Object Oriented Software Guided by Tests by Steve Freeman & Nat Price

----

## References: Munich

- [David Völkel: Fake-it Outside-In ITAKE](https://www.slideshare.net/DavidVlkel/fake-it-outsidein-tdd-itake-2018)
- [David Völkel: Fake-it Outside-In XP2017](https://de.slideshare.net/davidvoelkel/fake-it-outsidein-tdd-xp2017)
- [David Völkel: Screencasts (Youtube)](https://www.youtube.com/channel/UCevhQwU63dxJYPb8sZY-Zgg)

<img src="images/david_screencasts.png" height="350"/>

----

## References: St. Pauli

- [St. Pauli school of TDD](https://www.tddstpau.li/)

----

## References: Hamburg

- [Hamburg Style TDD](https://ralfw.de/hamburg-style-tdd/)
- [Hamburg Style TDD Diamond Kata](https://ralfw.de/hamburg-style-tdd-diamond-kata/)
- [Hamburg Style TDD Banking Kata](https://ralfw.de/hamburg-style-tdd-bank-kata/)

----

## References: TDDaiYMI

- [TDD as if You Meant It](https://www.infoq.com/presentations/TDD-as-if-You-Meant-It/)
- [TDD as if You Meant It - My turn!](https://melanieburns.net/blog/2019/12/tdd-as-if-you-meant-it-my-turn)

----

### Image Credits

<ul style="font-size: 15px">

- Kent Beck by Improve It on Flickr, CC BY-SA 2.0
- Making of Harry Potter - Karen Roe on Flickr, CC BY 2.0
- Children practicing Taekwondo in Kathmandu, Nepal by Adli Wahid on Unsplash, CC0
- Watch Where You're Putting That Thing: Chris Gilmore Follow, CC BY-SA 2.0
- [Map images from Googlemaps](https://drive.google.com/open?id=19PMzl5GRQOqTpN3WY9Z__lpoMaA8mzY3&usp=sharing)
- Drunken Kermit by Alexas Fotos on Pixabay, CC0
- Skyline Skyscraper by PIRO4D on Pixabay, CC0
- Detroit Photo by Sawyer Bengtson on Unsplash, CC0
- London Photo by Luca Micheli on Unsplash, CC0
- Munich Photo by Christoph Keil on Unsplash, CC0
- Lego Photo by Rick Mason on Unsplash, CC0
- Aerial view Zhangjiajie glass bridge by www.highestbridges.com
- Fire Motorcycle Stunt by digihanger on Pixabay, CC0
- Trophy by Fauzan Saari on Unsplash, CC0
- iPhone in Blender from Blendtec's Will It Blend? https://www.youtube.com/watch?v=lBUJcD6Ws6s
- Hamburg by liggraphy from Pixabay, CC0
- Backdoor by Claudio Schwarz on from Unsplah, CC0

</div>
