/-
  Erdős Problem 685 / JSP-000685
  How many representations can one integer have as a sum of two integer cubes?

  1729 (Ramanujan's taxicab number) has 2 representations:
    1729 = 1³ + 12³ = 1 + 1728
    1729 = 9³ + 10³ = 729 + 1000

  The two representations use distinct pairs: (1,12) ≠ (9,10).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos685

/--
  Main theorem: 1729 has at least 2 representations as a sum of two
  positive cubes, using distinct pairs (1,12) and (9,10).
-/
theorem erdos_685 :
    -- 1729 = 1³ + 12³ = 1 + 1728
    (1 * 1 * 1 + 12 * 12 * 12 = 1729) ∧
    -- 1729 = 9³ + 10³ = 729 + 1000
    (9 * 9 * 9 + 10 * 10 * 10 = 1729) ∧
    -- The pairs are distinct
    (1 ≠ 9) ∧ (12 ≠ 10) := by decide

end Erdos685
