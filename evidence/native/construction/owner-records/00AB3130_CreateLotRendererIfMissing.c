/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: CreateLotRendererIfMissing.
 * Executable tokens are unchanged. DB EOL comments are addressed separately below
 * because the decompiler does not emit them in C.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00AB3133 [EOL]: A nonnull renderer field skips allocation and binding entirely; this function does not refresh an existing renderer identity pair.
 * 00AB317E [EOL]: The constructed primary table 01069F3C slot+8 resolves to EC1C10, incrementing its +4 reference count before storage. The old stored-pointer release is a separate virtual+0C operation.
 * 00AB319A [EOL]: ECX is the renderer pointer loaded from [coreLot+364]; the sole stack argument is the same EBX core pointer. AE4790 copies this core lot identity into that renderer.
 */



/* If core lot+364 is null, allocates 400h bytes, constructs a lot renderer, stores it with the
   original virtual-reference operations and binds it to the same core lot through AE4790. Existing
   nonnull field returns without rebinding. No graceful allocation-failure recovery is established:
   the bind call still receives the stored pointer. Analyst-assigned name. */

void __fastcall CreateLotRendererIfMissing(void *coreLot)

{
  undefined4 *rendererStorage;
  int *newRenderer;
  int *storedRenderer;
  
  if (*(int *)((int)coreLot + 0x364) == 0) {
    rendererStorage = (undefined4 *)FUN_004e4500(0x400,"Lot/LotRenderer",0);
    if (rendererStorage == (undefined4 *)0x0) {
      newRenderer = (int *)0x0;
    }
    else {
      newRenderer = InitializeLotRenderer(rendererStorage);
    }
    storedRenderer = *(int **)((int)coreLot + 0x364);
    if (newRenderer != storedRenderer) {
      if (newRenderer != (int *)0x0) {
        (**(code **)(*newRenderer + 8))();
      }
      *(int **)((int)coreLot + 0x364) = newRenderer;
      if (storedRenderer != (int *)0x0) {
        (**(code **)(*storedRenderer + 0xc))();
      }
    }
    BindLotRendererToLot(*(void **)((int)coreLot + 0x364),coreLot);
  }
  return;
}

