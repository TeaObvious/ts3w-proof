# Historical contribution rules from the retained proof

These are the old proof-folder instructions at commit cf6f60a42fe8c5bd181495a32161217972cefebc, preserved as historical contribution context. The current [Research instructions](../AGENTS.md) and [rule index](../rules/index.md) govern this project; this reference does not replace them.

# Proof folder rules

These rules apply to this folder and its subfolders, including the CAW proof.
This Git branch contains the final reviewed reference, not the working history
of an investigation.

## Final evidence only

- Commit the reviewed original disassembly, annotated pseudocode, necessary
  original-data excerpts, and concise guides and lookup indexes.
- Keep scratch exports, alternate drafts, diffs, change journals, annotation
  change manifests, temporary scripts, probe/build logs, validation reports and
  task handoffs outside Git. Do not turn them into additional proof files.
- Store a function's final ASM and pseudocode in one canonical pair keyed by
  its address. Link to that pair from guides; avoid duplicate exports and
  historical variants of the same function.
- JSON/TSV is appropriate for final reference data and lookup indexes. It is
  not a place to retain intermediate steps or a record of edits made in Ghidra.

## Annotation and accuracy

- Review the function in the correct original program in Ghidra. Use meaningful
  analyst-assigned names and instruction-level comments where the evidence
  establishes their meaning. Preserve existing reviewed annotations.
- Export the annotations inside the pseudocode file itself. Do not move or
  duplicate their text into a sidecar JSON or Markdown change file.
- State inferred types, uncertain ABI details and decompiler artifacts plainly.
  Verify arithmetic, signedness, field widths, branches and persistence against
  the original instructions and the relevant reader, writer and consumer.
- Do not present analyst names as recovered original symbols, byte-pattern
  guesses as decoded contracts, or static analysis as observed runtime behavior.
- Identify each reference binary and version centrally. Retain a checksum where
  it is needed to distinguish that reference; do not repeat it in every export
  or add redundant per-function/per-file checksum collections.

## Links and publication

- Every ASM reference must immediately include the corresponding pseudocode
  reference in parentheses. For managed-only evidence, cite the relevant IL
  and annotated managed decompilation instead of inventing an ASM counterpart.
- Keep guides focused on the final original-code contract. PR review text,
  progress reports, permission notes and investigation history belong outside
  this folder.
- Verify addresses, paired exports, relative links and required repository
  indexes before committing. Verification output stays outside Git.
- Add or correct proof data only on the proof branch. A review does not
  authorize implementation changes to the PR being reviewed.
