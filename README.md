# TS3W PC 1.67 reference

A growing reference for the original The Sims 3 PC 1.67 executable, its managed bindings and behavioral contracts. Research is active; this is not a complete reference release. Static byte/IL findings, current database ownership, understood behavior and actual execution remain separate claims.

Start with the [central reference identity](evidence/reference.json), [coverage inventories](inventory/README.md), or [native evidence index](indexes/native-evidence.tsv).

| Reference group | Contract and evidence | Current boundary |
| --- | --- | --- |
| Platform and shared vertex-region traversal | [Platform point selection](guides/construction/platform-point-selection.md) | Eight reused bodies independently checked; shared iterator names and exact result-register contracts. |
| Native fast-field reading | [Fast-field reader](guides/persistence/fast-field-reading.md) | Old success-path omission filled, switch data and selected original managed reader/writer relationships; concrete stream/lifetime/runtime remain open. |
| Thumbnail request callbacks | [Thumbnail callback branches](guides/rendering/thumbnail-generation-callbacks.md) | Four omitted continuations captured; split ingress and two singleton frontend bodies explicitly qualified. Eventual image and notifier/host lifetime remain open. |
| Managed inputs | [Assembly provenance](guides/managed/assembly-provenance.md) | Identified original package resources and a working static ILSpy/IL route; no complete binding census is claimed. |

The initial pilot contains 19 canonical native ASM/C pairs. This counts reference entries, including separately defined continuations; it does not mean 19 independent callable APIs or complete subsystems. All 1,746 older next-entry/8 KiB exports were audited against their archived artifacts and current Ghidra ownership. The five concrete omitted conditional-path cases are treated explicitly. Most functions and remaining executable regions still need a supported disposition.

[Research rules](rules/index.md) explain scope, evidence, naming, coordination and acceptance. [Repository mapping](references/repositories.md) explains why new findings are published here first. Existing proof material is reused with source commit and path provenance; this repository does not import the old product source tree or its Git history.

Original binaries, packages, assemblies, saves, Ghidra databases and local operating journals are not distributed. Research worktrees and private evidence remain outside the published reference. No original runtime execution is implied by static evidence.
