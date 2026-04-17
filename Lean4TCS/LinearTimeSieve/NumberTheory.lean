/-
Copyright (c) 2026 Lean4TCS Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Data.Nat.Prime.Basic

/-!
# Basic number-theory lemmas for the linear-time sieve

These are the four "M1" lemmas from the linear-time sieve blueprint,
stated in terms of `Nat.minFac`.
-/

open Nat

/-- **Existence of a least prime factor.**
For every `n ≥ 2`, `Nat.minFac n` is prime, divides `n`, and is the
smallest prime divisor. -/
theorem Nat.lpf_exists (n : ℕ) (hn : 2 ≤ n) :
    (minFac n).Prime ∧ minFac n ∣ n ∧ ∀ q : ℕ, q.Prime → q ∣ n → minFac n ≤ q := by
  sorry

/-- **No smaller prime divisor implies primality.**
If `n ≥ 2` and no prime `p < n` divides `n`, then `n` is prime. -/
theorem Nat.prime_of_no_small_prime_dvd (n : ℕ) (hn : 2 ≤ n)
    (h : ∀ p : ℕ, p.Prime → p ∣ n → ¬(p < n)) : n.Prime := by
  sorry

/-- **A divisor of `a` also divides `a * p`.**
If `q ∣ a`, then `q ∣ a * p`. -/
theorem Nat.dvd_mul_of_dvd_left_prime (a p q : ℕ) (hq : q ∣ a) : q ∣ a * p := by
  sorry

/-- **Least-prime-factor monotonicity along the decomposition.**
If `p` is the least prime factor of `m`, `m = a * p`, and `a ≥ 2`,
then `p ≤ minFac a`. -/
theorem Nat.minFac_le_minFac_div (m : ℕ) (hm : 2 ≤ m) (a : ℕ) (ha : 2 ≤ a)
    (hap : m = a * minFac m) : minFac m ≤ minFac a := by
  sorry
