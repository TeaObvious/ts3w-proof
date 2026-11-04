/* If core lot+364 is null, allocates 400h bytes, constructs a lot renderer, stores it with the
   original virtual-reference operations and binds it to the same core lot through AE4790. Existing
   nonnull field returns without rebinding. No graceful allocation-failure recovery is established:
   the bind call still receives the stored pointer. Analyst-assigned name. */

void __fastcall CreateLotRendererIfMissing(void *param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;

  /* 00AB3133: A nonnull renderer field skips allocation and binding entirely; this function does not refresh an existing renderer identity pair. */
  if (*(int *)((int)param_1 + 0x364) == 0) {
    puVar2 = (undefined4 *)FUN_004e4500(0x400,"Lot/LotRenderer",0);
    if (puVar2 == (undefined4 *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = InitializeLotRenderer(puVar2);
    }
    piVar1 = *(int **)((int)param_1 + 0x364);
    if (piVar3 != piVar1) {
      if (piVar3 != (int *)0x0) {
        /* 00AB317E: The constructed primary table 01069F3C slot+8 resolves to EC1C10, incrementing its +4 reference count before storage. The old stored-pointer release is a separate virtual+0C operation. */
        (**(code **)(*piVar3 + 8))();
      }
      *(int **)((int)param_1 + 0x364) = piVar3;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 0xc))();
      }
    }
    /* 00AB319A: ECX is the renderer pointer loaded from [coreLot+364]; the sole stack argument is the same EBX core pointer. AE4790 copies this core lot identity into that renderer. */
    BindLotRendererToLot(*(void **)((int)param_1 + 0x364),param_1);
  }
  return;
}
