# TS3W research reference

This repository prepares a comprehensive reference for the original
The Sims 3 PC 1.67 executable and its managed bindings.

**Current status: preparation only.** The initial documentation does not mean
that collection, Ghidra changes or a completeness audit have been performed.

## Start here

- [Agent instructions](AGENTS.md)
- [Research rulebook](rules/index.md)
- [Repositories and eventual integration](references/repositories.md)
- [Reference inputs and tools](references/pc-167.md)
- [Additional reconstructed managed source](references/managed-source-tree.md)

Our own ILSpy/IL analysis of identified original assemblies remains the primary
managed reference. The additional reconstructed source tree is a navigation aid;
its provenance includes rewritten autonomy methods.

## Research layout

Evidence, guides, indexes, inventories and research tools will be added as real
results become available. Work in progress must retain explicit verification
status, provenance and open questions.

The main checkout is the TS3W-Research directory itself. Additional worktrees
belong in its ignored checkouts/ subdirectory; owned outputs and local operational
state also remain inside this project. External original references are read
in place rather than copied wholesale.

New findings are developed here first. Reviewed reference material will later
be integrated into the existing OpenTS3 ts3w-proof branch. The original reference
repository is retained; this is not a replacement of its Git history.

Original game binaries, complete reconstructed source trees, packages, saves,
Ghidra databases, credentials and local operational journals are not uploaded.
