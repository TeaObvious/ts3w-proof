/* Binds the renderer to the supplied core lot: owner pointer at +18 and exact UInt32 pair
   core+48/+4C copied to renderer+10/+14. Also copies selected flags and two 16-byte vectors,
   initializes the embedded imposter and optionally registers the renderer by that pair. ECX
   renderer, one stack word, RET4; physical result AL=1. Analyst-assigned name. */

undefined4 __thiscall BindLotRendererToLot(void *this,void *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  undefined8 uVar6;
  uint local_50 [19];

  *(undefined1 *)((int)this + 0x3d6) = *(undefined1 *)((int)param_1 + 0x4bc);
  if (*(char *)((int)param_1 + 0x444) != '\0') {
    uVar5 = *(undefined4 *)((int)param_1 + 0x448);
    puVar4 = (undefined4 *)FUN_00ab0420(param_1,local_50);
    uVar6 = FUN_00ab0410((int)param_1);
    FUN_00ae4310(this,(int)uVar6,(int)((ulonglong)uVar6 >> 0x20),puVar4,uVar5);
  }
  if ((*(int *)((int)param_1 + 0x408) == 1) && (*(int *)((int)param_1 + 0x40c) == 0x50)) {
    uVar3 = 1;
  }
  else {
    uVar3 = 0;
  }
  *(undefined1 *)((int)this + 0x3d8) = uVar3;
  uVar5 = *(undefined4 *)((int)param_1 + 0x234);
  uVar1 = *(undefined4 *)((int)param_1 + 0x238);
  uVar2 = *(undefined4 *)((int)param_1 + 0x23c);
  *(undefined4 *)((int)this + 0x3e0) = *(undefined4 *)((int)param_1 + 0x230);
  *(undefined4 *)((int)this + 0x3e4) = uVar5;
  *(undefined4 *)((int)this + 1000) = uVar1;
  *(undefined4 *)((int)this + 0x3ec) = uVar2;
  uVar5 = *(undefined4 *)((int)param_1 + 0x244);
  uVar1 = *(undefined4 *)((int)param_1 + 0x248);
  uVar2 = *(undefined4 *)((int)param_1 + 0x24c);
  *(undefined4 *)((int)this + 0x3f0) = *(undefined4 *)((int)param_1 + 0x240);
  *(undefined4 *)((int)this + 0x3f4) = uVar5;
  *(undefined4 *)((int)this + 0x3f8) = uVar1;
  *(undefined4 *)((int)this + 0x3fc) = uVar2;
  /* 00AE4816: Store the same supplied core-lot pointer later used by the staged initializer. This is a direct pointer assignment; no owner-reference increment is performed here. */
  *(void **)((int)this + 0x18) = param_1;
  /* 00AE481C: First physical identity word: renderer+10 receives coreLot+48 without arithmetic or lookup. The second word coreLot+4C is stored at renderer+14 at AE4829. */
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)((int)param_1 + 0x48);
  *(undefined4 *)((int)this + 0x14) = *(undefined4 *)((int)param_1 + 0x4c);
  uVar5 = FUN_00ad8890((void *)((int)this + 0x370),(int)this);
  if (DAT_011ede58 != (void *)0x0) {
    /* 00AE4844: If global service 011EDE58 is nonnull, pass copied word0, copied word1 and this renderer to C7D2C0. This does not establish global uniqueness or lifetime of the pair. */
    uVar5 = FUN_00c7d2c0(DAT_011ede58,*(uint *)((int)this + 0x10),*(int *)((int)this + 0x14),
                         (int)this);
  }
  return CONCAT31((int3)((uint)uVar5 >> 8),1);
}
