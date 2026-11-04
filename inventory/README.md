# Coverage inventories

The reference is in active research. None of these inventories establishes semantic completeness or observed runtime coverage.

- [Legacy artifact audit](legacy-window-audit.md): all 1,746 old next-entry/8 KiB windows, with searchable TSV and JSON.
- [Current legacy body metadata](legacy-live-body-audit.md): live ownership for the same entries, kept separate from the artifact audit.
- [Independent pilot selection](pilot-selection-review.md): original-PE byte checks and representative counterexamples.
- [Coverage model](coverage-model.md): separate body, data, binding, semantics, annotation/persistence and runtime dimensions.

The five confirmed omitted-branch cases are now represented by the [fast-field guide](../guides/persistence/fast-field-reading.md) and [thumbnail guide](../guides/rendering/thumbnail-generation-callbacks.md). Their old snapshot audit remains historical; its recorded open questions are not silently rewritten into global closure. Capturing the continuation bytes closes the concrete old ASM omission, while downstream and database-boundary questions remain explicit.

The [native evidence index](../indexes/native-evidence.tsv) resolves the currently adopted canonical pairs. The full defined-function census and remaining-code disposition are separate work still in progress. No exclusion follows from an unknown name or missing pair.
