/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* Verified PC 1.67 registration table at 0x01161718 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Queries::Query_GetObjectsOnLot [assembly=ScriptCore token=0x06000515; type:
   System.Type, lotId: System.UInt64, roomId: System.Int32; return=System.Array]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Queries::Query_GetObjectsOnLot(undefined4 param_1,int param_2,int param_3,uint param_4)

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
  
  uStack_c = 0x749f30;
  local_1020 = local_1008;
  local_1018 = local_8;
  uVar3 = 0;
  local_1014 = "Scripting/HandleArray";
  local_101c = local_1020;
  local_1010 = local_1020;
  iVar1 = FUN_00749ba0(param_2,param_3,param_4,(int *)&local_1020);
  if (iVar1 != 0) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar3 = (**(code **)(*piVar2 + 0xc0))(param_1,local_1020,(int)local_101c - (int)local_1020 >> 3)
    ;
  }
  if ((local_1020 != (undefined1 *)0x0) && (local_1020 != local_1010)) {
    Memory_FreeIfNonNull(local_1020);
  }
  return uVar3;
}

