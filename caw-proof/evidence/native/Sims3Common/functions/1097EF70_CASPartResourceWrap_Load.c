/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x1097efc6) */
/* WARNING: Removing unreachable block (ram,0x1097efd6) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartResourceWrap_Load. Export ordinal(s):
   1735. Entry VA: 0x1097ef70. Original managed P/Invoke MethodDef(s): none located in the shipped
   managed assemblies. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl
CASPartResourceWrap_Load
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x97ef70  1735  CASPartResourceWrap_Load */
  local_4 = param_2;
  local_8 = param_1;
  local_10 = param_3;
  local_c = param_4;
  param_1 = 0;
  piVar2 = (int *)FUN_108e50d0();
  cVar1 = (**(code **)(*piVar2 + 0xc))(&local_10,&param_1,0,0,0);
  if (cVar1 != '\0') {
    (**(code **)(_DAT_00000000 + 4))();
  }
  return 0;
}

