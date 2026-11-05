/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtilsWrap_ApplyPresetToPart. Export
   ordinal(s): 1736. Entry VA: 0x1097f2c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001C3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
CASUtilsWrap_ApplyPresetToPart
          (void *param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5,
          LPCWSTR param_6)

{
  uint in_EAX;
  undefined4 uVar1;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x97f2c0  1736  CASUtilsWrap_ApplyPresetToPart */
  if ((param_1 != (void *)0x0) && (in_EAX = 0, param_6 != (LPCWSTR)0x0)) {
    local_10 = param_4;
    local_c = param_5;
    local_8 = param_2;
    local_4 = param_3;
    uVar1 = FUN_103de670(param_1,&local_10,param_6);
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  return in_EAX & 0xffffff00;
}

