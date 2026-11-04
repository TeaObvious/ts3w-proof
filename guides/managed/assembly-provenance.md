# Managed assembly provenance

The authoritative managed inputs in this corpus are all S3SA resources in the
PC 1.67 patch-media `scripts.package`, `simcore.package`, and `gameplay.package`.
The [central input manifest](../../evidence/managed/reference-inputs.json)
identifies the three packages and all ten decoded assemblies rechecked on
2026-11-04. The [native-root index guide](native-roots.md) records the static
scan's exact coverage and open dispatch/reference questions.

## Select by resource identity

Read the complete DBPF index and select the full type/group/instance key.
Decode resource compression before interpreting the S3SA envelope. Keep the
package hash, resource key, resource hash, decoded PE hash, assembly name/version,
module name and MVID together. A filename or assembly version alone cannot
separate a retail resource from a mod replacement or prepared assembly.

The three DBPF indexes contain 3, 3 and 4 entries respectively, all S3SA. All ten
resources were freshly decoded and their assembly identity/length/hash matched
the retained earlier manifests. Package SHA-256 was equal before and after each
read. The selected original resource rows are uncompressed. Version-2 envelopes
carry the game-version string `0.2.0.209`; the three simcore envelopes have
version1 and no game-version string. Envelope text does not replace patch-media
provenance.

Loose DLLs, runtime extraction directories, retargeted DLLs, earlier expansion
media, and mod packages remain separate inputs until their bytes are joined to
an identified original resource. The reconstructed managed source tree remains
a navigation aid. Its stated sixteen rewritten autonomy methods prevent assuming
retail equivalence from a matching name or plausible C#.

## Static analysis route

A research helper built for .NET10 references the installed
`ICSharpCode.Decompiler` library and opens original decoded PEs with `PEFile`.
`System.Reflection.Metadata` supplies signatures, flags, import/parameter metadata,
reference tokens and CIL bodies. The instruction scan uses the declared opcode
operand widths, bounds-checks switch tables/operands and reads every present
IL body. It does not load or execute the target assembly through a CLR.
The central manifest identifies the SDK/runtime and exact decompiler library.

`CSharpDecompiler` and `ReflectionDisassembler` independently expose selected
readable C# and token-bearing CIL. Bounded checks succeeded for the existing
`SimIFace` method `Sims3.SimIFace.CAS.SimBuilder.get_TextureSize`, token
`0x06001088`, and for `ScriptCore.Objects.Objects_IsValid`/`IsValid`, tokens
`0x06000001`/`0x06000017`. The latter IL names the PInvoke declaration at the
wrapper's `IL_0007`, with an `int8` return marshal descriptor. These are route
checks, not new canonical behavioral proof exports.

An independent REA static parser corroborated the SimIFace identity and the
ScriptCore identity/table counts, including 4,625 MethodDefs and 1,930 ImplMaps,
without reported metadata coverage issues. No assembly execution followed.

For a method proof, select the original assembly by resource key and PE hash,
then identify the exact metadata token and signature, including overloads.
Retain relevant CIL alongside annotated C#, and inspect the CIL when the
decompiler's expression, signedness, conversion or control flow is uncertain.
Join registration name, managed token, marshaling, native target and return path
with separate original evidence; the identity manifest alone proves no bridge.

## Limits

The retained patch manifest identifies the 1.67.2.024002 extraction and installer
digest. This pass rehashed the packages, not the installer, and does not
independently authenticate the installer extraction. This corpus excludes loose
files, mods, separate disc/expansion assemblies and runtime-loaded additions.
It is complete for the ten resource identities in the specified three files;
semantic, native-call and runtime coverage remain subject to the explicit
unresolved references and dynamic boundaries in the native-root guide.
