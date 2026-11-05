/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtilsWrap_IsPartExists. Export ordinal(s):
   1740. Entry VA: 0x1097f270. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001C2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
CASUtilsWrap_IsPartExists
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x97f270  1740  CASUtilsWrap_IsPartExists */
  local_10 = param_3;
  local_c = param_4;
  local_8 = param_1;
  local_4 = param_2;
  piVar1 = (int *)FUN_108e50d0();
  if (piVar1 != (int *)0x0) {
    iVar2 = (**(code **)(*piVar1 + 0x44))(&local_10);
    if (iVar2 != 0) {
      return 1;
    }
  }
  return 0;
}

