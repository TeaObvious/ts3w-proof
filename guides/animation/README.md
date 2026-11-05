# Original PC 1.67 animation reference

The [controller lifecycle contract](controller-lifecycle.md) follows object and
component resolution, resource keys and retention, clip/time/PMA controllers,
per-track sequence queues, replacement, held poses, listener removal and the
managed completion/wake callback. It distinguishes original instructions,
executed byte/link checks and untested runtime behavior. Analyst names are
explicitly identified; no original bytes were patched.

## Registration and managed entrypoints

[registration-catalog.tsv](registration-catalog.tsv) and its
[original-data catalog](registration-catalog.json) select56 original registered
entries:22 Animation,29 SACS, four route-animation APIs and one CAS reset API.
Their paths point to the canonical address-keyed original ASM/C pairs in
[evidence/native](../../evidence/native/README.md). Registration identity alone
is not a behavioral proof; canonical bounds state their inference rule.

| Original managed evidence | C# | IL |
|---|---|---|
| SimIFace.Animation | [decompilation](managed/Sims3-SimIFace-Animation.decompiled.cs) | [original IL](managed/Sims3-SimIFace-Animation.il.txt) |
| ScriptCore.Animation | [decompilation](managed/ScriptCore-Animation.decompiled.cs) | [original IL](managed/ScriptCore-Animation.il.txt) |
| ScriptCore.SACS | [decompilation](managed/ScriptCore-SACS.decompiled.cs) | [original IL](managed/ScriptCore-SACS.il.txt) |
| SimIFace.ResourceKey | [decompilation](../../evidence/managed/types/SimIFace.ResourceKey.cs) | [original IL](../../evidence/managed/types/SimIFace.ResourceKey.il.txt) |

The [native direct-call index](../../evidence/native/direct-calls.tsv) and
[managed/native reuse table](../../evidence/bindings/managed-native-reuse.tsv)
provide caller-derived lookup paths. Virtual destinations need the concrete
vtable evidence retained in the lifecycle guide; a direct-call table is not a
complete call graph or execution trace.

## Related contracts and limits

The [clip endpoint and pose contract](clip-codecs.md) establishes selected key
flags, record strides, exact stored reciprocals, frame truncation and quaternion
normalization through the original sampler and version caller. It does not close
full clip admission, version-one decoding or blend/synchronization policy.

[Object handling](../objects/object-handling.md) establishes full64-bit identity,
packed component masks and transforms. [Route destinations](../routing/destinations-and-scoring.md)
and [planning](../routing/planner-and-results.md) cover route construction and
results. [SACS](../sacs/README.md) retains the state-request ABI and related
callbacks.

The static completion chain is established, including stop/expiry, listener
ownership and managed wake bookkeeping. Actual frame output, callback latency,
retail task scheduling, asset availability and gameplay timeout reproduction
remain untested. Full clip parsing and all blend/synchronization policies remain
open. No natural lifetime expiry is claimed for a missing resource whose
controller retains FLT_MAX lifetime.

[Component parameter construction and rig admission](../objects/finalized-component-parameters.md) distinguish final descriptor types, first-hash lookup, local initializer success and destructive rig replacement from complete rendering or object-creation success.
