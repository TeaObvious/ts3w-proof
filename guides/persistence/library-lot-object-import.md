# Library lot object import and fresh object identities

The original PC 1.67 library import record reader is [AB48C0 ASM](../../evidence/native/functions/00AB48C0_Lot_ImportLibraryObjectRecords.asm) ([C](../../evidence/native/functions/00AB48C0_Lot_ImportLibraryObjectRecords.c)). Its fresh-ID vector producer is [938D70 ASM](../../evidence/native/functions/00938D70_ObjectRegistry_FillFreshIdVector.asm) ([C](../../evidence/native/functions/00938D70_ObjectRegistry_FillFreshIdVector.c)). The complete owned bodies contain455 instructions/1573 bytes and137 instructions/433 bytes respectively. The latter owns three disjoint ranges; alignment between them is excluded.

## Physical ABI

| Function | Inputs | Output and stack purge |
|---|---|---|
| Lot_ImportLibraryObjectRecords | lot pointer ECX; Stack4 stream context pointer; Stack8 and StackC source-key raw32 words; Stack10 mutable UInt64 ID-vector pointer; Stack14 placement-data pointer | byte status AL; RET14 hexadecimal,20 bytes |
| ObjectRegistry_FillFreshIdVector | registry pointer ECX; Stack4 mutable UInt64 ID-vector pointer | output through the same vector; void metadata; RET4 |

The import caller [ACD610 ASM](../../evidence/native/functions/00ACD610_LotImport_ImportManagersAndObjects.asm) ([C](../../evidence/native/functions/00ACD610_LotImport_ImportManagersAndObjects.c)) supplies the lot in ECX and does not branch on the returned status. The reader's own normal exit restores its saved status into AL and the failure exit sets AL to zero. The two raw32 source-key words carry no signedness claim. The fresh-ID producer has no generated identity return contract: its output is the mutable vector, followed by local set cleanup.

## Resource and record flow

The import reader constructs resource type34E5247C/group0 with the supplied instance words. After the resource-context open succeeds, it reads UInt16 version and accepts values0 or1. It reads a UInt32 key-table position, remembers the current position, seeks to the table, reads resource and local key vectors, and seeks back. Stream status and both key-vector results affect the path. It calls the complete object-record importer [939030 ASM](../../evidence/native/functions/00939030_Inventory_ImportObjectRecords.asm) ([C](../../evidence/native/functions/00939030_Inventory_ImportObjectRecords.c)) with the registry, stream, key vectors and mutable ID vector. Its returned loaded count is ignored; resource context is closed before placement traversal.

Placement traversal skips absent objects. It inspects Transform mask data and bit4, walks eligible Transform parents, and calls955F10 with true before the selected pose work. It reads the world matrix, applies the placement transform to x/z, reads Location yaw and applies the rotation-dependent yaw addition/fmod path. Catalog/pivot helpers conditionally alter the transformed position. Tile admission and the Location level sentinel7FFFFFFF gate the B09B00 placement call. The lot virtual method at offset30 is reached afterward for the selected object. A later pass calls955F10 with false on each available Transform component. Local key-vector buffers are released before the returned byte status.

These instruction observations do not establish the semantic name of955F10's flag or complete contracts of the matrix, catalog, pivot, tile and placement providers. Some selected actual C retains unresolved helper-register artifacts; instructions remain the authority for those call boundaries. Complete component/provider lifetime, floor sampling, numeric pose equivalence and every failure-cleanup branch outside these bodies are separate questions.

## Fresh ID vector

The producer uses the input vector's begin/end distance as its iteration count. Existing vector values do not seed its generation loop. For each ordinal, it obtains a registry-generated UInt64 identity through9380A0, attempts insertion into a local ObjectIdSet and repeats until insertion succeeds. It writes the same vector by iterating set buckets/chains, then releases the local set storage. The selected code establishes local uniqueness and that traversal order. It does not establish a particular RNG algorithm, future sequence, global allocator/provider contract or a portable hash-order replacement.

## Evidence boundary

The paired C is the actual decompiler output with annotations recovered from that output; the paired ASM contains every owned instruction and original bytes without synthetic hash/function headers. Explicit custom ECX/stack storage corrects the prior inferred metadata while preserving bytes, bodies, neighboring functions, unrelated symbols/comments and references. No inferred provider behavior is supplied to complete an unresolved native subsystem.

[Library session original lifecycle and warning join](library-session-lifecycle-and-warning.md) distinguishes native Init/Shutdown, memory-bin retain/release, real inventory producers and UI prevalidation from host deferred import-failure policy; complete selected CIL and remaining boundaries are recorded there.

[Library description candidate/key join](library-description-key-selection.md) now supplies complete9B1780/9B1280 and the bounded type-only predicate read. Native group0 request is distinct from candidate group; concrete provider fallback/iteration and AD5B30/file replacement remain open.
