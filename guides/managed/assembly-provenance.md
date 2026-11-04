# Managed assembly provenance

The authoritative managed inputs are S3SA resources in the PC 1.67 patch-media
`scripts.package`, `simcore.package`, and `gameplay.package`. The central
[input manifest](../../evidence/managed/reference-inputs.json) identifies the
packages and the three selected assemblies rechecked on 2026-11-04. It contains
identity data, not a complete assembly, method, or native-binding census.

## Select by resource identity

Read the DBPF index and select the complete type/group/instance key. Decode the
resource's outer compression before interpreting the S3SA envelope. Keep the
package hash, resource key, stored-resource hash, decoded PE hash, assembly name,
version, and module MVID together. A filename or assembly version alone cannot
distinguish a retail resource from a mod replacement or prepared assembly.

The checked samples are `SimIFace` and `ScriptCore` from `scripts.package`, and
`Sims3GameplaySystems` from `gameplay.package`. All three package hashes match the
retained earlier identity manifests. Fresh decoding and static CLI metadata also
match those manifests for all three selected assemblies. `simcore.package` was
rehashed, but its three assemblies were not decoded again in this bounded pass.
The S3SA version-2 game-version string is `0.2.0.209` in these samples; it is an
envelope field and does not replace patch-media provenance.

Loose DLLs, runtime extraction directories, retargeted DLLs, earlier expansion
media, and mod packages remain separate inputs until their bytes are joined to
an identified original resource. The reconstructed managed source tree is a
navigation aid; its stated sixteen rewritten autonomy methods prevent assuming
retail equivalence from a matching name or plausible C#.

## Static analysis route

The retained research helper builds for .NET 10 and references the installed
`ICSharpCode.Decompiler` library. It opens the target with `PEFile`, reads CLI
metadata, emits selected C# with `CSharpDecompiler`, and emits selected CIL with
`ReflectionDisassembler` including method tokens. It does not load or execute the
target assembly. The central manifest identifies the tested SDK/runtime and the
exact decompiler library hash.

The available route successfully read metadata from the three selected PEs.
A bounded smoke check also produced C# and CIL for the existing
`SimIFace` method `Sims3.SimIFace.CAS.SimBuilder.get_TextureSize`, token
`0x06001088`. An independent REA static metadata parser confirmed the same
`SimIFace` name, version, MVID, and PE hash without reported metadata coverage
issues. These checks establish the analysis route and input identity; the smoke
output is not a new behavioral contract or a canonical proof export.

For later method proofs, select the original assembly by resource key and hash,
then identify the exact metadata token and signature, including overloads.
Retain the relevant CIL alongside annotated C#, and inspect CIL whenever the
decompiler's expression, signedness, conversion, or control flow is uncertain.
Resolve a native bridge by connecting the registration name, managed token,
marshaling, native target, and return path; no bridge is established by this
provenance manifest alone.

## Limits

The retained patch manifest identifies the 1.67.2.024002 extraction and its
installer digest. This pass rehashed the three package files, not the installer,
and does not independently authenticate the original installer extraction.
Historical inventories include additional assemblies; their unrefreshed rows
are not silently promoted to newly verified identities. No runtime behavior,
whole-program reachability, complete managed inventory, or native semantic
coverage follows from this preflight.
