# Original surface-cutout eligibility and child-point removal

Analyst names describe inspected PC1.67 instructions, not recovered symbols. Existing inferred prototypes remain unchanged; physical register/stack/AL/cleanup instructions govern their interpretation. Three full contiguous bodies retain171bytes/67instructions.

## ObjectCatalog_TryGetSurfaceCutoutKey

[ASM](../../evidence/native/functions/0093A1B0_ObjectCatalog_TryGetSurfaceCutoutKey.asm) ([C](../../evidence/native/functions/0093A1B0_ObjectCatalog_TryGetSurfaceCutoutKey.c)). Analyst original PC1.67 instruction contract. Two cdecl stack pointers: product typed key and key output. Requires global catalog service and successful typed product lookup. Product field address50BC90 supplies16key bytes, copied before the nonzero instance64 test. Returns AL1 iff copied instance64 is nonzero; early missing service/product clears only AL and leaves output untouched. Plain RET, caller cleanup; high EAX is not the Boolean contract. Complete catalog-service initialization/lifetime remain separate.

## ObjectProduct_SurfaceCutoutKeyAddress

[ASM](../../evidence/native/functions/0050BC90_ObjectProduct_SurfaceCutoutKeyAddress.asm) ([C](../../evidence/native/functions/0050BC90_ObjectProduct_SurfaceCutoutKeyAddress.c)). Analyst original PC1.67 instruction contract. ECX product receiver. LEA EAX,[ECX+128h]; plain RET. Returns only the address of the16byte catalog surface-cutout key field; it neither reads nor validates the key or product lifetime. Field identity is joined to canonical C98660 stores and93A1B0 caller.

## SlotComponent_RemoveChildPointBinding

[ASM](../../evidence/native/functions/009518D0_SlotComponent_RemoveChildPointBinding.asm) ([C](../../evidence/native/functions/009518D0_SlotComponent_RemoveChildPointBinding.c)). Analyst original PC1.67 instruction contract. ECX Slots receiver, child object word at entryESP+4, optional point-output pointer at entryESP+8; RET8, meaningful low AL. Scans circular list+48h for node+8 child identity. On match optionally writes node+0Ch point, unlinks and requests node release through004E44E0; AL1 on found/removal, AL0 on exhaustion. No Slots+64h access or cutout transition. Valid list/allocation assumptions remain separate; this is not an implicit old-parent installation clear.

## Attachment join and limits

The parent Slots install and clear leaves both reach the same catalog eligibility helper. Failed eligibility leaves active ownership unchanged; install also requires empty/same owner and clear requires the matching owner. The point-list removal leaf only unlinks its matching row and does not access the installed-child field. Direct new-point reparent can therefore retain the old parent's installation; the separate explicit detach calls clear before point removal. [Actual attach/clear/load callers](countertop-cutout-installation-and-transform-load.md) provide their own full pairs.

The catalog helper copies the field before testing the64-bit instance; early missing catalog/product does not initialize the output. The accessor merely returns the field address. Full catalog initialization, resource/ref lifetime, event acceptance, malformed structures, saved bootstrap and renderer dispatch remain separate. No ordinary-name/bone-identifier equivalence is inferred.

[Selected direct calls](../../evidence/native/direct-calls.tsv) add3physicalE8sites. [Incoming coverage](../../evidence/native/created-slots-eligibility-incoming.tsv) classifies5E8calls and1originalfilebackedDWORDpointer. [Pointer bytes](../../evidence/native/created-slots-eligibility-data.tsv) establish only that original physical value; the [canonical code index](../../evidence/native/code-index.tsv) records the exact contiguous bounds. No empty gap/tail tables, undefined wrappers or new function definitions are supplied.
