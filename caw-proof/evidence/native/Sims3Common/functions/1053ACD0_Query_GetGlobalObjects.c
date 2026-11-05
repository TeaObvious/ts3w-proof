/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Query_GetGlobalObjects. Export ordinal(s): 532.
   Entry VA: 0x1053acd0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000010. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Query_GetGlobalObjects(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined1 *local_1020;
  undefined1 *local_101c;
  undefined1 *local_1018;
  char *local_1014;
  undefined1 *local_1010;
  undefined1 local_1008 [4092];
  undefined4 uStack_c;
  undefined1 local_8 [4];
  
                    /* 0x53acd0  532  Query_GetGlobalObjects */
  uStack_c = 0x1053ace0;
  local_1020 = local_1008;
  local_1018 = local_8;
  uVar3 = 0;
  local_1014 = "Scripting/HandleArray";
  local_101c = local_1020;
  local_1010 = local_1020;
  iVar1 = FUN_1053abb0((int *)&local_1020);
  if (iVar1 != 0) {
    piVar2 = (int *)FUN_1055b120();
    uVar3 = (**(code **)(*piVar2 + 0xc0))(param_1,local_1020,(int)local_101c - (int)local_1020 >> 3)
    ;
  }
  if ((local_1020 != (undefined1 *)0x0) && (local_1020 != local_1010)) {
    FUN_10918e90((int)local_1020);
  }
  return uVar3;
}

