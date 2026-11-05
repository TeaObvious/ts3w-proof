/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Slots_DetachFromParentImpl. Export ordinal(s):
   773. Entry VA: 0x10560020. Original managed P/Invoke MethodDef(s): ScriptCore:0x06001093. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint Slots_DetachFromParentImpl(void)

{
  char cVar1;
  int iVar2;
  void *pvVar3;
  undefined3 extraout_var;
  undefined4 uVar5;
  undefined4 extraout_EDX;
  float local_30 [11];
  uint uVar4;
  
                    /* 0x560020  773  Slots_DetachFromParentImpl */
  iVar2 = FUN_1072a1a0();
  pvVar3 = (void *)FUN_1072abb0(iVar2);
  uVar4 = 0;
  if (pvVar3 != (void *)0x0) {
    pvVar3 = (void *)FUN_10726da0(pvVar3,DAT_10c8d998);
    uVar4 = 0;
    if (pvVar3 != (void *)0x0) {
      FUN_1074a190(pvVar3,local_30);
      cVar1 = FUN_1074be30(pvVar3);
      uVar4 = CONCAT31(extraout_var,cVar1);
      if (cVar1 != '\0') {
        uVar5 = FUN_1074a9d0(pvVar3,extraout_EDX,local_30);
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
    }
  }
  return uVar4 & 0xffffff00;
}

