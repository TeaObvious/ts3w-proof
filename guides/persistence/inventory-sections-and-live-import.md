# Inventory sections, script tail and native live object import

Static PC1.67 original analysis in explicit `/TS3W.exe`. Complete original owned
ranges/envelopes, including the object importer's nonowned gap, were retained.
Physical stack slots, cleanup, AL status, count widths and property constants
were checked against instructions. The existing exports contain actual annotated Ghidra C. Their bytes were freshly
compared with the pristine executable. Historical database-save statements are not
a fresh save claim: this review preserved the existing database and performed no save.
No target execution or inventory roundtrip is claimed.

## DownloadContent_ImportInventoryImpl

[ASM 009959A0](../../evidence/native/functions/009959A0_ScriptCore_DownloadContent_DownloadContent_ImportInventoryImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/009959A0_ScriptCore_DownloadContent_DownloadContent_ImportInventoryImpl.c)).

Original managed binding entry; five physical stack words:64-bit content id plus three output references. Four UInt32 offsets, save post-header stream position, seek/read key vectors and UInt64 IDs, seek back to object state, import live objects, remap local keys, then seek script tail and copy length-minus-offset into managed output. AL success only; high EAX bits incidental. All stages required before output success, not merely metadata parsing.

## Inventory_ReadObjectIdVector

[ASM 00935560](../../evidence/native/functions/00935560_Inventory_ReadObjectIdVector.asm) ([annotated Ghidra C](../../evidence/native/functions/00935560_Inventory_ReadObjectIdVector.c)).

ECX vector plus one stream-context stack word, RET4. Read UInt32 count, accumulate status, CheckArrayBytes(count,8), reserve/read raw64-bit elements under context byte order; count0 skips resize/read and returns status. Current fresh-array projection preserves width/order but uses exceptions and bounded arrays.

## Inventory_ImportObjectRecords

[ASM 00939030](../../evidence/native/functions/00939030_Inventory_ImportObjectRecords.asm) ([annotated Ghidra C](../../evidence/native/functions/00939030_Inventory_ImportObjectRecords.c)).

ECX object registry plus four stack words. Prepare31 component readers, open native stream, enumerate stored64-bit IDs with ordinal child key. Missing9EF522D6 UInt16 or key index outside key-vector count skips record. Try primary factory first; only failure triggers alternate85DCC430/BC31CDF3/6734F6ED then fallback. Publish loaded object to GUID hash and event4, return loaded object count in EAX. The native admission includes component recreation, GUID-hash/event publication and local-key remapping. A host metadata projection alone does not establish these duties; current host admission is reviewed in the Library session contract, without inferring native component parity. Disjoint original owned ranges and nonowned gap retained.

## Inventory_TryCreateObjectFromRecord

[ASM 009378F0](../../evidence/native/functions/009378F0_Inventory_TryCreateObjectFromRecord.asm) ([annotated Ghidra C](../../evidence/native/functions/009378F0_Inventory_TryCreateObjectFromRecord.c)).

Seven physical stack words observed at importer call:64-bit ID, native resource key, property reader, component-reader context, output object pointer and fallback flag. Resolve catalog/product/component mask, allocate original object storage, deserialize components, retain output and release temporary resources. Decompiled null-object branch/pointer arithmetic require caller/lifetime interpretation, not a safe C implementation. OnlyAL defines success.

## ScriptComponent_ReadStoredClass

[ASM 0094E440](../../evidence/native/functions/0094E440_ScriptComponent_ReadStoredClass.asm) ([annotated Ghidra C](../../evidence/native/functions/0094E440_ScriptComponent_ReadStoredClass.c)).

ECX component and three stack words, RET0C. Read native byte-string propertyBE0E9060. Normal path assigns string at component+10; alternate path sets flag+20 and clears it if comparator succeeds. Missing name still returnsAL1. Current metadata string read is a projection; it does not implement original component flags or class instantiation.

## Inventory_CopyScriptTail

[ASM 00994FF0](../../evidence/native/functions/00994FF0_Inventory_CopyScriptTail.asm) ([annotated Ghidra C](../../evidence/native/functions/00994FF0_Inventory_CopyScriptTail.c)).

Instruction-verified cdecl four stack words host,stream,byteCount,scriptOutput; caller00995C42..46 pushes all four and adds10hex after call. Allocate byteCount bytes, vtable stream+30 read exact count else free andAL0. Host+80 creates output using fourth word; host+98 copies raw bytes, then free andAL1. Previous three-argument/unaff_EBX decompilation was wrong ABI; corrected prototype exposes real host/output inputs. Caller subtracts script offset from stream length.

## Format and projection boundaries

The four header offsets point to indexed keys, local indexed keys, UInt64 IDs and
script tail. The object property stream begins at the saved post-header position.
Original live import requires successful object loading and local resource remapping
before copying script and returning managed key/ID outputs. Its loaded-object count
must be nonzero at the outer importer gate; reading zero metadata rows is not an
accepted empty live import.

The current metadata projection eagerly reads alternate fields and class/component
names without primary object creation. Original fallback fields are consulted only
after primary factory failure; invalid product indices are skipped. Raw Script class
text is not a managed class instance or proof that its callbacks ran.

Original script copy uses four cdecl stack arguments and exact stream-read length.
Its corrected Ghidra prototype removes the previous artificial unaff_EBX host.
AL controls success; incidental upper EAX bits must not become a32-bit Boolean test.
Current fresh arrays and exceptions do not model native retain/release or rollback.


## Wrapper output order, storage writer and actual managed callers

A fresh explicit /TS3W.exe MCP listing of9959A0 contains306instructions.
995BA6 calls939030;995BAB tests EAX;995BAD branches only for a nonzero loaded
count. On zero it releases native vector storage and reaches AL0 without output
helpers. On nonzero, local-resource remap99A9F0 must returnAL1. Script output is
copied first (995C46 ->994FF0), then keys (995C88 ->995750), then IDs
(995CCA ->995830); each return is checked. This is sequential publication, not
proof of a three-output rollback or destruction of already created objects.
ScriptCore.DownloadContent.ImportInventory060000CD/33bytes initializes all three
refs to null and returns false immediately if the native result is false; only
true calls ImportManagedContent060000E2. Bin.ImportInventoryInternal0x06009014
(complete selected body) destroys existing items, calls Import
and then DeleteInventory without branching on either Boolean. No runtime loss
scenario was executed here.

[Original StoreInventory998900 ASM](../../evidence/native/functions/00998900_ScriptCore_DownloadContent_DownloadContent_StoreInventoryImpl.asm)
([qualified actual C](../../evidence/native/functions/00998900_ScriptCore_DownloadContent_DownloadContent_StoreInventoryImpl.c)) is an existing
bounded1776-byte window through its998FEC RET, with padding. A fresh MCP64-byte
read matches the entry. The decompiler's two-argument prototype and unrecovered
registers are not the managed ABI: ScriptCore0600009B declares three arrays;
the wrapper passes keys, fullUInt64 IDs and script bytes. The storage branch at
998F84 calls9B0280 and preserves returned EDX:EAX across cleanup to998FDF/E2.
Other failure exits zero both words. An empty MCP address-based disassembly result
does not supply any missing instruction or invalidate the retained byte window.

[New complete9B0280 ASM](../../evidence/native/functions/009B0280_FUN_009b0280.asm)
([annotated actual C](../../evidence/native/functions/009B0280_FUN_009b0280.c)) supplies76
instructions/220bytes: receiver inECX, source stream on stack, RET4. It acquires
the content database, calls9B0100 for anID, opens B4DD716B/group0 under thatID,
seeks source to0, copies, closes destination and requires copied count equal
source length plus context status. Success returns theID inEDX:EAX; failure0.
9B0100 allocation/collision and full transitive IO/provider/rollback remain open.
No native prototype/database annotation or original byte was changed.

[Complete selected managed members](../../evidence/managed/selected/library-content/members.tsv)
join the real chain: Bin.ExportHouseholdForTravel -> newHouseholdContents ->
HouseholdContents.StoreInventory -> ScriptCore.DownloadContent.StoreInventory ->
998900. HouseholdContents constructors collect actor/family/fridge inventories;
ExportContent encodes an inventoryID0 as type0 instead of B4DD716B. The original
Inventory.ExportContent writes ordinal children and invalidates failed items;
ImportContent uses ObjectIdTable entries, skips missing objects and destroys
failed/rejected items. Compiler-generated export callback CIL and complete
component serialization remain separate. A host hook that always returns0 stores
no inventory at all; this is a confirmed missing operation, not an accepted
original-equivalent empty result. Travel/load gameplay impact remains unexecuted.
