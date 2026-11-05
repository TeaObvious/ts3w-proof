# DBPF owned read-view consumer boundary

Static original PC1.67 evidence reuses the complete [header/index/payload closure](dbpf-header-index-payload.md). This consumer adaptation introduces no native address, new function body or byte change. The27 retained canonical bodies comprise7072 owned bytes,6 envelope gap bytes and2436 instructions; provider/index/decoder dispatch data comprise224 original bytes. Complete owned listings and selected memory envelopes were checked against the reference PE; gaps are not counted as owned instructions.

## Selection and decoded payload

The original header reader4A7D20 and validator4A7EA0 select the lowDWORD offset, with the documented legacy/extended consistency override. Provider load4A9C70 bypasses rows for count0; otherwise4AC510 parses the aligned physical byte extent. Writer4AAE50 confirms sharing/optional-metadata layout. Insertion4AB900 preserves first exact presence;4AC020 and5E6050/83B040 establish lookup. A later readable duplicate is not a replacement for a present marker.

Provider4A97E0 tests presence before the size1/memoryFFFFFFFF stream gate. ResourceManager dispatch data selects4B0760, which requests decoded loading with loadFlags1.4A86A0 has ECX plus5DWORDs/RET14 and requires its second physical word, offset, nonzero.4A8100/4A7860 close selected raw reads;4A7730/4EC520 close the built-in FFFF wrapper and its kernel helpers. Codec0 is raw; nonzero codecs require the registered factory path unless FFFF. Equal stored/memory sizes do not override an explicit codec. No selected registration proves5A42; admitting its metadata does not prove an implemented decoder.

## Managed owner and actual input identity

DbpfReadPackage adopts the shared original-wire scalar reader and existing bounded payload decoder. It preserves every ordered physical row and marker, rejects foreign owners, checks length/time stamps around acquisition and detached reads, and disposes its owned file. Supported decoded loads are0/FFFF. Other IDs remain metadata and fail explicitly on load; they do not become deletion or raw fallback. Native trust of malformed input is bounded by managed checks, with no promise of malformed-input success equivalence.

NativePackageReadView borrows that owner. LegacyPackageReadView borrows the actual editable IPackage and entry objects. Existing public legacy overloads retain those real types. Shared model algorithms carry one explicit view through geometry→UV→MATD and DDS/TXTC; the two pooled native borrowers return in finally, including failure to allocate their view. Native inputs never change runtime identity behind IPackage and never fall back to it.

The active legacy library's constructor/count layout and GetResource size-equality dispatch differ from this closure. That dependency remains evidence for the legacy port only. It is not proof of the new native grammar. Native texture reads therefore also bypass unqualified legacy-fed TGI caches; stamped exact fallback and local model maps retain their actual owners. This can change warm work/reference sharing and requires semantic invalidation of affected saved outputs.

## Explicit proof limits

The complete original guide retains the actual physical ABI and local callsite overrides. In particular4B0760's zero-formal C signature is a decompiler artifact; the selected body proves its six stack slots/RET18 and AL result, while the concrete incoming virtual call pushes remain unclosed. No new foreign prototypes or decoder registry claims follow from the read-view API. RCOL, UV, shader/compositor/image algorithms and original bake/thumbnail policies remain bounded existing dependencies. This static adaptation has not been compiled or executed, and no rendered/performance equivalence is claimed.
