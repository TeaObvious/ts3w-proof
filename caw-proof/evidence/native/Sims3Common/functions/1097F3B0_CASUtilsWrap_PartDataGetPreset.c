/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtilsWrap_PartDataGetPreset. Export
   ordinal(s): 1741. Entry VA: 0x1097f3b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001C6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
CASUtilsWrap_PartDataGetPreset(undefined4 param_1,uint param_2,int param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined1 *puStack_38;
  undefined *puStack_34;
  undefined2 *puStack_30;
  char *pcStack_2c;
  undefined4 uStack_28;
  undefined1 local_24 [20];
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
                    /* 0x97f3b0  1741  CASUtilsWrap_PartDataGetPreset */
  uStack_28 = 0x1097f3b8;
  piVar2 = (int *)FUN_108e50d0();
  uStack_28 = 0;
  local_10 = param_3;
  pcStack_2c = (char *)0x0;
  local_8 = param_1;
  puStack_30 = (undefined2 *)0x0;
  local_c = param_4;
  puStack_34 = (undefined *)0x0;
  local_4 = param_2;
  puStack_38 = local_24;
  cVar1 = (**(code **)(*piVar2 + 0xc))();
  if (cVar1 == '\0') {
    return 0;
  }
  if ((&local_10 != (int *)0x0) &&
     (piVar2 = (int *)(**(code **)(local_10 + 0xc))(0x34c777b), piVar2 != (int *)0x0)) {
    puStack_38 = &_Dst_10ca8244;
    puStack_34 = &_Dst_10ca8244;
    pcStack_2c = "CAS/CASPartDataResource/Preset";
    puStack_30 = &DAT_10ca8246;
    uVar3 = FUN_103aafd0(piVar2,local_4,&puStack_38);
    if ((char)uVar3 != '\0') {
      (**(code **)(*piVar2 + 4))();
      uVar3 = Ordinal_2(puStack_38);
      if ((2 < (int)((int)puStack_34 - (int)&local_10 & 0xfffffffeU)) && (&local_10 != (int *)0x0))
      {
        FUN_10918e90((int)&local_10);
      }
      return uVar3;
    }
    (**(code **)(*piVar2 + 4))();
    if ((2 < (int)((int)puStack_30 - (int)puStack_38 & 0xfffffffeU)) &&
       (puStack_38 != (undefined *)0x0)) {
      FUN_10918e90((int)puStack_38);
    }
    return 0;
  }
  (**(code **)(local_10 + 4))();
  return 0;
}

