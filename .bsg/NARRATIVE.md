# Brand Narrative — edomata

## Positioning

Edomata is a **functional, type-safe event sourcing and CQRS library** for
Scala 3, supporting JVM, Scala.js, and Scala Native. It models domain logic
as composable automata that enforce business invariants at compile time.

Beyond Scale Group maintains this fork, publishing artifacts to Maven Central
and adding production-hardened features (SaaS multi-tenancy, Java API,
additional backends).

## Voice

- **Technical but approachable** — assume the reader knows Scala and FP basics,
  but don't assume deep category theory knowledge
- **Concise** — library docs, not textbooks. Link to tutorials for depth
- **Honest about tradeoffs** — state what edomata does well and where alternatives
  (Akka Persistence, EventStoreDB) may fit better

## Key Messages

1. **Type-safe event sourcing** — domain errors caught at compile time, not runtime
2. **Cross-platform** — same core on JVM, JS, and Native
3. **Production-proven** — used by eveince capital (trading) and expert-flow.ai (legal SaaS)
4. **Composable** — Decision/Edomaton/Stomaton abstractions compose like any other cats-effect program

## Audiences

- Scala developers evaluating event sourcing libraries
- Teams migrating from Akka Persistence / akka-typed
- Typelevel ecosystem users looking for CQRS building blocks
