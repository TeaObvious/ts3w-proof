# Original object-group writer

The PC 1.67 [C6F340 owned ASM](../../evidence/native/functions/00C6F340_ObjectGroupManager_WriteSavedGroup.asm) ([C](../../evidence/native/functions/00C6F340_ObjectGroupManager_WriteSavedGroup.c))
is the manager's saved object-group writer. Its complete owned body contains
516 instructions and 1578 bytes in two ranges; the eight-byte gap is excluded.

## Physical boundary

| Input or result | Instruction-level contract |
| --- | --- |
| ECX | Manager instance; copied to EDI on entry |
| Stack4 | Resource writer/context wrapper |
| Stack8 | Opaque raw DWORD forwarded to935770; no signedness or provider meaning inferred |
| StackC | Object I/O context |
| Return | RET0C. Early failure clears AL only, leaving upper EAX unspecified. Normal final success/failure writes full EAX1/EAX0. |

Existing `int`/EAX decompiler metadata is preserved. It does not establish a defined
signed integer result on the early exits. The C retains packed-register and lost
stack/value artifacts; the ASM establishes successful-row count, stream positions
and the high/low register portions where the inferred variables are misleading.

## Ordered writes and status

The writer opens the manager's output resource and writes version20. If manager
byte+9D is set, it derives two signature maps through the installed prototype and
signature services. It writes both maps, then the manager pose obtained through
virtual slots+64/+68, and reserves stream positions for later offsets/counts.

It prepares the supplied I/O context, forwards opaque Stack8 to935770 and admits
the manager through935870. The managed SaveObjectGroup call is conditional on
manager byte+75. Its absent-call default is the exact DWORDFFFFFFFF value.

Each member writes its GUID before [937C40's complete record writer](../../evidence/native/functions/00937C40_ObjectRegistry_WriteSavedObjectRecord.asm) ([C](../../evidence/native/functions/00937C40_ObjectRegistry_WriteSavedObjectRecord.c)).
A successful record increments the successful-row count. A failed record seeks
back to that row's saved stream position and clears the all-rows-success byte;
the loop stops if the accumulated stream status fails. The writer backpatches the
successful count and object block length rather than declaring every attempted
row successful.

It then calls [935E80's sized context writer](../../evidence/native/functions/00935E80_ObjectIoContexts_WriteSizedEntries.asm) ([C](../../evidence/native/functions/00935E80_ObjectIoContexts_WriteSizedEntries.c)).
Context byte+19 selects zero backpatches instead of the retained auxiliary writer
service. Otherwise that service writes its payload, is reset and contributes the
recorded length. The resource closes before the final result combines the
all-rows-success byte and accumulated stream status.

## Limits

The selected body proves this version20 writer and its concrete call/branch order.
It does not establish a complete older-version writer, provider implementation,
RNG equivalence, managed callback timing outside this function, or every catalog,
factory and auxiliary payload service. The analyst annotation is present in the
actual decompiler C; it is not substituted for the owned instructions.


## Per-manager opaque object tuning

`04F7BDA7/group0/managerID` is separate from the OBJN object group and from the
managed GameplayData script cache. The registered managed Get/Set members are
[World_GetGameObjTuningDataImpl](../../api/ScriptCore.World/0x01163a70.md) and
[World_SetGameObjTuningDataImpl](../../api/ScriptCore.World/0x01163a78.md).
`ScriptCore.World.GetGameObjTuningData` forwards the UInt64 GUID and returns the
native Byte[] directly; `SetGameObjTuningData` forwards ObjectGuid.Value and data.
The public getter does not convert an absent native array to an empty one.

The existing [78E380 wrapper ASM](../../evidence/native/functions/0078E380_ScriptCore_World_World_GetGameObjTuningDataImpl.asm)
([C](../../evidence/native/functions/0078E380_ScriptCore_World_World_GetGameObjTuningDataImpl.c)) first resolves and retains the
object, obtains its manager through68F130, asks C6ED80 for length, and only then
allocates/maps the managed output and calls C6ECF0 to copy. The existing
[78E480 wrapper ASM](../../evidence/native/functions/0078E480_ScriptCore_World_World_SetGameObjTuningDataImpl.asm)
([C](../../evidence/native/functions/0078E480_ScriptCore_World_World_SetGameObjTuningDataImpl.c)) ignores a null input and resolves
the object and its manager before mapping the input and calling C71EE0. The
indirect managed allocation/mapping slots and their failure paths are distinct
from the following complete owned leaf observations.

### Manager identity is part of selection

68F130 consists of two instructions: return object field+30. The existing
[C6DC80 ASM](../../evidence/native/functions/00C6DC80_ObjectRegistry_FindBorrowedInLot.asm)
([C](../../evidence/native/functions/00C6DC80_ObjectRegistry_FindBorrowedInLot.c)) resolves the full GUID through
937570/937F80, compares that object's manager with the supplied ECX manager, and
returns zero on mismatch. Its result is borrowed, not a new ownership reference.
C6ED80 rejects zero GUID, empty manager map and that failed ownership lookup,
then looks up the GUID only in this manager's map at+7C. Its length is the stored
vector's end minus begin. C6ECF0 applies the same manager/object/map admission,
requires a nonnull output pointer and pointee, and copies that stored length;
this leaf does not itself check a separately supplied destination capacity.
C71EE0 rejects zero GUID, null bytes, zero length and wrong-manager lookup. It
copies the nonempty input into the selected manager's map; zero input is not a
clear operation.

These observations rule out flattening all managers' saved tuning maps into one
GUID-only last-wins map. If object X belongs to A, A stores X=a and B stores X=b,
the getter uses A's map and returns a even if B is visited later. No claim is
made that those duplicate source rows are a normal retail save occurrence.
The rule follows from the actual selecting reader, not an assumed global GUID
uniqueness guarantee or an analyst function name.

### Resource reader, writer and retained state

The complete C71F90 owned body has166 instructions. It clears this manager's
existing+7C map before trying the resource. A missing resource returns successful
AL1 with that cleared map. It reads UInt16 version (0/1 admitted), UInt32 count,
then UInt64 GUID, UInt32 length and exactly that many opaque bytes. Zero-length
rows do not replace an earlier vector; repeated nonempty keys assign into the
same manager map. Unsupported versions return AL0. The stream's accumulated
status contributes the final AL result. This is not a transactional malformed
input parser: map clear and earlier row assignments precede later failure.

The separate C6EDF0 owned writer has141 instructions. Empty map count+88 returns
AL1 without opening a resource. Otherwise it opens04F7BDA7/group0 using the
manager identifier at+48/+4C, writes version1, reserves the count, walks the
manager hash map, emits only nonempty vectors, and backpatches the emitted count.
There is no live-object lookup or OBJN-row filter in this inspected body. Its
hash traversal is not a GUID-sorted byte-order contract. Resource open/stream
failure returns AL failure, with upper EAX not a general Boolean contract.

Read call sites AA766D/ACD297 and write call sites AA7D71/ACAC5B identify the next
outer joins; the existence of these static calls does not establish execution,
whole-save ordering or successful persistence. In particular: which manager
removal/move paths prune or transfer dormant tuning rows before C6EDF0? How does
the original output/overlay owner treat an omitted resource compared with an
explicit version1/count0 resource? Those paths must be joined before claiming
that filtering to current surviving OBJN rows or always writing an empty resource
preserves original save/reload behavior.

### Evidence and remaining limits

The selected [original instruction bytes](../../evidence/native/data/object-tuning-manager-selected-words.json)
independently match the authoritative PE and explicit /TS3W.exe reads. Fresh
read-only owned Listings contain C71F90(166), C71EE0(61), C6ED80(40), C6ECF0(56),
C6EDF0(141),68F130(2) and C6DC80(27) instructions. The selected data are not full
canonical C/ASM exports for the newly inspected leaves; those pairs remain
unexported. Existing wrapper and C6DC80 pairs are reused. No database mutation,
reanalysis, save or export was needed for these bounded facts.

No64MiB native limit was found in these selected bodies. A host ingestion cap,
GUID sorting, transactional parse refusal and generation/witness synchronization
are separate implementation policies. Complete manager construction/move/prune,
outer save/overlay selection, native allocation errors, managed consumers of the
opaque bytes, world replacement concurrency and runtime/platform round trips
remain unverified by this page.
