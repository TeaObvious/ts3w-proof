/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* Verified PC 1.67 registration table at 0x01161728 (original PC 1.67 TS3W.exe).
   ScriptCore.Queries::Query_GetGlobalObjects [assembly=ScriptCore token=0x06000517; type:
   System.Type; return=System.Array]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.Queries::Query_GetGlobalObjects(undefined4 param_1)

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
  
  uStack_c = 0x749fd0;
  local_1020 = local_1008;
  local_1018 = local_8;
  uVar3 = 0;
  local_1014 = "Scripting/HandleArray";
  local_101c = local_1020;
  local_1010 = local_1020;
  iVar1 = FUN_00749d30((int *)&local_1020);
  if (iVar1 != 0) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar3 = (**(code **)(*piVar2 + 0xc0))(param_1,local_1020,(int)local_101c - (int)local_1020 >> 3)
    ;
  }
  if ((local_1020 != (undefined1 *)0x0) && (local_1020 != local_1010)) {
    FUN_004e44e0((int)local_1020);
  }
  return uVar3;
}

