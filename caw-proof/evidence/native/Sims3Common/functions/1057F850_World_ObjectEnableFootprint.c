/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectEnableFootprint. Export ordinal(s):
   1517. Entry VA: 0x1057f850. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C30. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
World_ObjectEnableFootprint(undefined4 param_1,undefined4 param_2,int param_3,char param_4)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  
                    /* 0x57f850  1517  World_ObjectEnableFootprint */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8d7e8);
      if (pvVar2 != (void *)0x0) {
        uVar3 = FUN_10738110(pvVar2,param_3,param_4);
        return CONCAT31((int3)((uint)uVar3 >> 8),1);
      }
    }
  }
  return 0;
}

