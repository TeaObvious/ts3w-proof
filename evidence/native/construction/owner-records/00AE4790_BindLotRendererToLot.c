/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: BindLotRendererToLot.
 * Executable tokens are unchanged. DB EOL comments are addressed separately below
 * because the decompiler does not emit them in C.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00AE4816 [EOL]: Store the same supplied core-lot pointer later used by the staged initializer. This is a direct pointer assignment; no owner-reference increment is performed here.
 * 00AE481C [EOL]: First physical identity word: renderer+10 receives coreLot+48 without arithmetic or lookup. The second word coreLot+4C is stored at renderer+14 at AE4829.
 * 00AE4844 [EOL]: If global service 011EDE58 is nonnull, pass copied word0, copied word1 and this renderer to C7D2C0. This does not establish global uniqueness or lifetime of the pair.
 */



/* Binds the renderer to the supplied core lot: owner pointer at +18 and exact UInt32 pair
   core+48/+4C copied to renderer+10/+14. Also copies selected flags and two 16-byte vectors,
   initializes the embedded imposter and optionally registers the renderer by that pair. ECX
   renderer, one stack word, RET4; physical result AL=1. Analyst-assigned name. */

undefined4 __thiscall BindLotRendererToLot(void *this,void *coreLot)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  undefined8 uVar6;
  uint local_50 [19];
  
  *(undefined1 *)((int)this + 0x3d6) = *(undefined1 *)((int)coreLot + 0x4bc);
  if (*(char *)((int)coreLot + 0x444) != '\0') {
    uVar5 = *(undefined4 *)((int)coreLot + 0x448);
    puVar4 = (undefined4 *)FUN_00ab0420(coreLot,local_50);
    uVar6 = FUN_00ab0410((int)coreLot);
    FUN_00ae4310(this,(int)uVar6,(int)((ulonglong)uVar6 >> 0x20),puVar4,uVar5);
  }
  if ((*(int *)((int)coreLot + 0x408) == 1) && (*(int *)((int)coreLot + 0x40c) == 0x50)) {
    uVar3 = 1;
  }
  else {
    uVar3 = 0;
  }
  *(undefined1 *)((int)this + 0x3d8) = uVar3;
  uVar5 = *(undefined4 *)((int)coreLot + 0x234);
  uVar1 = *(undefined4 *)((int)coreLot + 0x238);
  uVar2 = *(undefined4 *)((int)coreLot + 0x23c);
  *(undefined4 *)((int)this + 0x3e0) = *(undefined4 *)((int)coreLot + 0x230);
  *(undefined4 *)((int)this + 0x3e4) = uVar5;
  *(undefined4 *)((int)this + 1000) = uVar1;
  *(undefined4 *)((int)this + 0x3ec) = uVar2;
  uVar5 = *(undefined4 *)((int)coreLot + 0x244);
  uVar1 = *(undefined4 *)((int)coreLot + 0x248);
  uVar2 = *(undefined4 *)((int)coreLot + 0x24c);
  *(undefined4 *)((int)this + 0x3f0) = *(undefined4 *)((int)coreLot + 0x240);
  *(undefined4 *)((int)this + 0x3f4) = uVar5;
  *(undefined4 *)((int)this + 0x3f8) = uVar1;
  *(undefined4 *)((int)this + 0x3fc) = uVar2;
  *(void **)((int)this + 0x18) = coreLot;
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)((int)coreLot + 0x48);
  *(undefined4 *)((int)this + 0x14) = *(undefined4 *)((int)coreLot + 0x4c);
  uVar5 = BindLotImposterOwnerSnapshot((void *)((int)this + 0x370),(int)this);
  if (DAT_011ede58 != (void *)0x0) {
    uVar5 = SetLotRendererBinding
                      (DAT_011ede58,*(uint *)((int)this + 0x10),*(int *)((int)this + 0x14),(int)this
                      );
  }
  return CONCAT31((int3)((uint)uVar5 >> 8),1);
}

