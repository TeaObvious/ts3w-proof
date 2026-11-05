/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtilsWrap_GetPresetForPart. Export ordinal(s):
   1738. Entry VA: 0x1097f4c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001C4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
CASUtilsWrap_GetPresetForPart
          (void *param_1,undefined4 param_2,uint param_3,int param_4,undefined4 param_5)

{
  int *piVar1;
  undefined4 uVar2;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
                    /* 0x97f4c0  1738  CASUtilsWrap_GetPresetForPart */
  if (param_1 == (void *)0x0) {
    return 0;
  }
  local_10 = param_4;
  local_8 = param_2;
  local_c = param_5;
  local_4 = param_3;
  piVar1 = FUN_103dcaa0(param_1,&local_10);
  if ((piVar1 != (int *)0x0) && ((piVar1[1] - *piVar1 & 0xfffffffeU) != 0)) {
    uVar2 = Ordinal_2(*piVar1);
    return uVar2;
  }
  uVar2 = CASUtilsWrap_PartDataGetPreset(local_8,local_4 & 0xff000000,local_10,local_c);
  return uVar2;
}

