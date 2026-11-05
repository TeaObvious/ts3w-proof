/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Animation_ClipExists. Export ordinal(s): 1. Entry
   VA: 0x1052cc00. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060002FE;
   ScriptCore:0x06000667. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl Animation_ClipExists(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x52cc00  1  Animation_ClipExists */
  local_10 = param_1;
  local_c = param_2;
  local_8 = 0x6b20c4f3;
  local_4 = param_3;
  piVar1 = (int *)FUN_108e50d0();
  iVar2 = (**(code **)(*piVar1 + 0x44))(&local_10);
  return iVar2 != 0;
}

