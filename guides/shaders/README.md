# Precompiled shader selection and program assembly

This guide follows the original PC 1.67 `TS3W.exe` and matching
`Shaders_Win32.precomp` identified in the [proof reference](../../references/retained-proof-overview.md).
Function names are analyst assignments. The path below is established by
original instructions and file bytes; it is **static analysis**, not a retail
gameplay or rendering run.

For selected draw-time depth, alpha, terrain and rug ordering paths, see
[depth and overlapping surfaces](depth-and-overlapping-surfaces.md).

The [DDS texture contract](dds-texture-loading.md) follows original header/mip
admission, format masks, native row pitches and local upload staging separately
from shader assembly and material blend selection.

## Startup, file choice and reload

The [system initializer](../../evidence/native/functions/007A0D50_ShaderSystem_InitializePrecompiledLibrary.asm)
([annotated pseudocode](../../evidence/native/functions/007A0D50_ShaderSystem_InitializePrecompiledLibrary.c))
configures the shader library, starts a file watcher and loads the package.
The [path/configuration reader](../../evidence/native/functions/0079B820_ShaderLibrary_ConfigurePathsAndCapabilities.asm)
([annotated pseudocode](../../evidence/native/functions/0079B820_ShaderLibrary_ConfigurePathsAndCapabilities.c))
constructs `Shaders_Win32.precomp` from `Shaders_`, the executable's
`Win32` string and `.precomp`. It can read separate `SourcePath`,
`CommonPath`, `ShaderSetPath` and `BinaryPath` overrides. The same reader
selects a shadow capability bit: `0x400`, `0x200` or `0x100`, based on
configuration and device checks.

The [device capability selector](../../evidence/native/functions/0079B290_ShaderLibrary_ChooseCapabilityMode.asm)
([annotated pseudocode](../../evidence/native/functions/0079B290_ShaderLibrary_ChooseCapabilityMode.c))
returns a small mode in AL. The
[compatibility test](../../evidence/native/functions/0079FBD0_ShaderLibrary_IsModeCompatible.asm)
([annotated pseudocode](../../evidence/native/functions/0079FBD0_ShaderLibrary_IsModeCompatible.c))
decides whether an already selected mode can be reused. The
[package loader](../../evidence/native/functions/0079BC40_ShaderLibrary_LoadPrecompiledPackage.asm)
([annotated pseudocode](../../evidence/native/functions/0079BC40_ShaderLibrary_LoadPrecompiledPackage.c))
opens the configured file, combines the selected mode bit with the shadow
flags, parses the package and populates lookup maps. Its return is the low
byte of EAX; the decompiler's `CONCAT31` high bytes are not a boolean
contract.

The [watcher initializer](../../evidence/native/functions/007A13D0_ShaderWatcher_TrackFile.asm)
([annotated pseudocode](../../evidence/native/functions/007A13D0_ShaderWatcher_TrackFile.c))
records the file path, modification time and timer state. The
[poller](../../evidence/native/functions/007A1280_ShaderWatcher_PollAndReload.asm)
([annotated pseudocode](../../evidence/native/functions/007A1280_ShaderWatcher_PollAndReload.c))
detects a changed file and invokes the loader with its reload argument set.
This is precompiled-package reload in the recovered path.

## What the file supplies

The [original file layout](../../evidence/shaders/precomp-layout.tsv) records
the independently checked offsets and counts. The package starts with
`SPKG` version 2. Its `SHDB` contains a `LINK` table with 15,689 shader
records; 7,671 `VSHD` and 8,018 `PSHD` markers occur in that region.
`SMDB` has 54 sampler presets, `SETS` has 237 shader sets, and `SHDS`
has 604 definition blocks. Those marker counts are file observations; the
reader is the basis for interpreting them.

The [SPKG reader](../../evidence/native/functions/0079D1E0_ShaderPackage_ReadSPKG.asm)
([annotated pseudocode](../../evidence/native/functions/0079D1E0_ShaderPackage_ReadSPKG.c))
checks the signature and version, consumes `SHDB`, `SMDB`, `SETS`,
`SHDS` and a terminal chunk. Its
[`LINK`/`DBUF` reader](../../evidence/native/functions/0079AD00_ShaderDatabase_ReadLINKAndDBUF.asm)
([annotated pseudocode](../../evidence/native/functions/0079AD00_ShaderDatabase_ReadLINKAndDBUF.c))
filters bytecode records by the capability mask and retains default data.
At `0x0079AEDB`, the original instruction tests a stack byte to choose
pixel or vertex allocation. The decompiler's apparent test of its reader
pointer is an artifact. The
[SMPS reader](../../evidence/native/functions/0079B000_ShaderSamplerDatabase_ReadSMPS.asm)
([annotated pseudocode](../../evidence/native/functions/0079B000_ShaderSamplerDatabase_ReadSMPS.c))
constructs one-based sampler-preset entries.

The [SETS reader](../../evidence/native/functions/0079D160_ShaderPackage_ReadSSETSets.asm)
([annotated pseudocode](../../evidence/native/functions/0079D160_ShaderPackage_ReadSSETSets.c))
dispatches each set to the
[`SSET` parser](../../evidence/native/functions/0079CC00_ShaderSet_ReadSSET.asm)
([annotated pseudocode](../../evidence/native/functions/0079CC00_ShaderSet_ReadSSET.c)).
An SSET has a name, mode/key pairs, field words and later variant data. The
[variant-data reader](../../evidence/native/functions/007A0A20_ShaderSet_ReadVariantParametersAndBytecode.asm)
([annotated pseudocode](../../evidence/native/functions/007A0A20_ShaderSet_ReadVariantParametersAndBytecode.c))
reads bounded strings, per-entry values and a byte-length-prefixed payload.
It stores supplied data; no HLSL compilation is visible in this reader.

The [SHDS reader](../../evidence/native/functions/0079C4E0_ShaderPackage_ReadSBLKDefinitions.asm)
([annotated pseudocode](../../evidence/native/functions/0079C4E0_ShaderPackage_ReadSBLKDefinitions.c))
admits `SBLK` definitions when their capability fields intersect the
selected low and second mask bytes; zero in a mask byte imposes no test.
Rejected blocks are skipped to their recorded end. The
[definition body](../../evidence/native/functions/0079AA60_ShaderDefinition_ReadBody.asm)
([annotated pseudocode](../../evidence/native/functions/0079AA60_ShaderDefinition_ReadBody.c))
reads flags, optional links, and a stage array. Its
[array builder](../../evidence/native/functions/0079A980_ShaderDefinition_ResizeStageSlots.asm)
([annotated pseudocode](../../evidence/native/functions/0079A980_ShaderDefinition_ResizeStageSlots.c))
allocates 16 bytes per stage. The
[link resolver](../../evidence/native/functions/0079A740_ShaderDefinition_ResolveLinkedStages.asm)
([annotated pseudocode](../../evidence/native/functions/0079A740_ShaderDefinition_ResolveLinkedStages.c))
handles the `0x400`/`0x800` linked-stage bits after loading.

## Choosing a variant for a material or context

The [material binding initializer](../../evidence/native/functions/006CADA0_MaterialShaderBinding_Initialize.asm)
([annotated pseudocode](../../evidence/native/functions/006CADA0_MaterialShaderBinding_Initialize.c))
obtains a shader key and calls the
[context selection path](../../evidence/native/functions/006CA830_MaterialShaderBinding_SelectShader.asm)
([annotated pseudocode](../../evidence/native/functions/006CA830_MaterialShaderBinding_SelectShader.c)).
The latter chooses option sources and any shader alias for the requested
mode, calculates a variant index, then looks up the definition. The
[name-based caller](../../evidence/native/functions/0070BB50_ShaderSystem_SelectByNameAndDeclaration.asm)
([annotated pseudocode](../../evidence/native/functions/0070BB50_ShaderSystem_SelectByNameAndDeclaration.c))
uses the same selector with an explicit shader name, mode and option hashes.

The [material-option producer](../../evidence/native/functions/0079FD20_ShaderSet_AppendVertexDeclarationOptions.asm)
([annotated pseudocode](../../evidence/native/functions/0079FD20_ShaderSet_AppendVertexDeclarationOptions.c))
packs at most `0x11` input records into option words. The
[presence-mask builder](../../evidence/native/functions/0079FFB0_ShaderSet_BuildOptionPresenceMask.asm)
([annotated pseudocode](../../evidence/native/functions/0079FFB0_ShaderSet_BuildOptionPresenceMask.c))
sets one bit for each set-declared option hash found in the supplied list.
The [explicit-options wrapper](../../evidence/native/functions/007A0030_ShaderSet_SelectVariantFromOptions.asm)
([annotated pseudocode](../../evidence/native/functions/007A0030_ShaderSet_SelectVariantFromOptions.c))
and [material/mode wrapper](../../evidence/native/functions/007A0060_ShaderSet_SelectVariantForDeclaration.asm)
([annotated pseudocode](../../evidence/native/functions/007A0060_ShaderSet_SelectVariantForDeclaration.c))
both feed that mask and a packed-option list to the
[variant interpreter](../../evidence/native/functions/0079FE00_ShaderSet_EvaluateVariantProgram.asm)
([annotated pseudocode](../../evidence/native/functions/0079FE00_ShaderSet_EvaluateVariantProgram.c)).
The wrappers leave its result in EAX even though Ghidra currently declares
them `void`; callers compare that result with `-1`.

The interpreter uses a 32-bit bit accumulator and 32 unsigned counters. The
[original 11-entry jump table](../../evidence/shaders/selector-jump-table.tsv)
maps opcodes 1–7 and 9–11 to shifts, conditional skips, input tests and
counter updates; opcode 8 returns `0xffffffff`. A zero word terminates and
returns the sum of all counters. `0x0079FE6D` verifies the unusual
`(old | 0xfffffffe) & (old >> 1)` expression; `SHR` makes that shift
unsigned. `0x0079FEB8` uses x86's masked shift count. The code does not
visibly validate the 9/10 counter index or exhaust the program words.
Well-formed shipped data and malformed-input behavior are separate claims.

The [definition lookup](../../evidence/native/functions/0079BB60_ShaderLibrary_FindDefinition.asm)
([annotated pseudocode](../../evidence/native/functions/0079BB60_ShaderLibrary_FindDefinition.c))
uses the key and computed variant. Its optional fallback is key
`0xa2a9b074`, mode zero. The
[string hash wrapper](../../evidence/native/functions/007D00F0_HashLowercasedCStringFNV1.asm)
([annotated pseudocode](../../evidence/native/functions/007D00F0_HashLowercasedCStringFNV1.c))
and [byte hash](../../evidence/native/functions/007CFE50_HashLowercasedBufferFNV1.asm)
([annotated pseudocode](../../evidence/native/functions/007CFE50_HashLowercasedBufferFNV1.c))
show that this is the case-folded FNV-1 hash of `shadererror`. The
[name lookup wrapper](../../evidence/native/functions/0079BC10_ShaderLibrary_FindByName.asm)
([annotated pseudocode](../../evidence/native/functions/0079BC10_ShaderLibrary_FindByName.c))
hashes an explicit name before forwarding it.

## From selected definition to GPU objects

The [TECH reader](../../evidence/native/functions/007A1120_ShaderTechnique_ReadTECH.asm)
([annotated pseudocode](../../evidence/native/functions/007A1120_ShaderTechnique_ReadTECH.c))
reads a technique key and allocates passes through the
[pass-array builder](../../evidence/native/functions/007A1050_ShaderTechnique_ResizePasses.asm)
([annotated pseudocode](../../evidence/native/functions/007A1050_ShaderTechnique_ResizePasses.c)).
Later passes inherit an absent `0xffffffff` stage selection from the
previous pass. The [PASS reader](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.asm)
([annotated pseudocode](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.c))
reads stage selections, two `PARM` groups, render states, dynamic states,
a 32-bit texture-slot mask and data for 16 visited slots. The
[post-load resolver](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.asm)
([annotated pseudocode](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.c))
joins stage and parameter references to loaded objects.

The [stage-bytecode reader](../../evidence/native/functions/00799CE0_ShaderBytecode_ReadAndMaybeCreate.asm)
([annotated pseudocode](../../evidence/native/functions/00799CE0_ShaderBytecode_ReadAndMaybeCreate.c))
accepts a `VSHD` or `PSHD` tag, length-checks and copies its existing token
bytes, and optionally asks the stage object to create a GPU object. The
[vertex path](../../evidence/native/functions/00799B50_ShaderBytecode_CreateVertexObject.asm)
([annotated pseudocode](../../evidence/native/functions/00799B50_ShaderBytecode_CreateVertexObject.c))
calls device vtable slot `+0x16c`; the
[pixel path](../../evidence/native/functions/00799BE0_ShaderBytecode_CreatePixelObject.asm)
([annotated pseudocode](../../evidence/native/functions/00799BE0_ShaderBytecode_CreatePixelObject.c))
uses `+0x1a8`. Both pass the token pointer and an output pointer, require
HRESULT zero plus a non-null object, then release retained token storage.
Those API names are inferred from the distinct slots and object types, not
recovered source symbols. The
[object check](../../evidence/native/functions/00799BD0_ShaderBytecode_HasGpuObject.asm)
([annotated pseudocode](../../evidence/native/functions/00799BD0_ShaderBytecode_HasGpuObject.c))
tests the pointer at object `+0x10`.

## Limits

The recovered path explains selection and construction from the shipped
precompiled file. It does not establish a runtime shader-source compiler,
all draw-time state transitions, byte-for-byte GPU output on a particular
driver, or behavior under malformed precomp input. No game was executed for
this guide. The complete reviewed address inventory and canonical pairs are
in the [native code index](../../evidence/native/code-index.tsv).

The original [managed complate preparation](managed-complate-preparation.md)
owns template/default/value expansion, its exact expression evaluator, preset
failure results and compositor step creation. Native shader selection, binary
program binding and pixel execution remain separate contracts.

[Native complate preparation](native-complate-preparation.md) establishes a separate original native route, its status byte, enabled-text admission and selected DrawFabric key production. Initial object/wall producer authority and full lifetime remain unresolved.

[CAS material parameter production](cas-material-parameter-production.md) joins the full native builder, concrete sentinel consumers and selected authored texture-role/sampler examples. These bounded static contracts do not establish Vulkan pixel parity.

[StandingWater normal components](standing-water-normal-components.md) follows both sampled Alpha/Blue lanes and the selected packed NormalMapScale binding.

[Pond owner and center](pond-nearest-owner-and-center.md) records strict nearest selection and the actual transformed bounding midpoint producer.

[CAS-associated parametric tone program](cas-gamma-program.md) records complete program10828 arithmetic and the unresolved live c0 producer.
