# Linear Time Sieve — Implementation Milestones

**M1 — Number-theory foundations**
Formalize `lpf_exists`, `no_small_divisor_prime`, `divisor_lifts_to_product`, and `lpf_monotone_along_decomp`.

**M2 — Core definitions and specs**
Define `SieveState`, `PrimeListUpTo`, `LpfTableUpTo`, `OuterLoopInvariant`, and the abstract step-cost model.

**M3 — Write correctness and inner-loop**
Prove `write_correct`, `lp_zero_implies_prime`, `append_prime_preserves_prime_list`, and `inner_loop_correct`.

**M4 — Outer-loop invariant preservation**
Prove `outer_invariant_step` (single-step preservation) and close the induction over `i = 2..n`.

**M5 — Final correctness theorems**
Derive `lpf_correct` and `prime_list_correct` from the closed invariant.

**M6 — Each composite is generated exactly once**
Prove `composite_generated_early` and `every_composite_once` — the central uniqueness result.

**M7 — Linear-time complexity bound**
Bound successful inner visits by composites, all inner visits by `2n-2`, and total cost by `3n-3`, all inside the abstract cost model.
