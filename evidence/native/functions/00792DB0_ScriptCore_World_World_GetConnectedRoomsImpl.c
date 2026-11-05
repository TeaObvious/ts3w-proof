/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163ca0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetConnectedRoomsImpl [assembly=ScriptCore token=0x0600088F; lotId:
   System.UInt64, roomId: System.Int32, level: System.Int32; return=System.Int32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_GetConnectedRoomsImpl(uint param_1,uint param_2,uint param_3,uint param_4)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  void *this;
  undefined4 unaff_EBX;
  undefined4 local_14;
  void *local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
  local_14 = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar3 = thunk_FUN_00835d40();
  if (iVar3 != 0) {
    this = (void *)FUN_008295c0(iVar3);
    if ((this != (void *)0x0) && (piVar2 != (int *)0x0)) {
      local_10 = (void *)0x0;
      local_c = 0;
      local_8 = 0;
      local_4 = "Scripting/WorldHost";
      bVar1 = FUN_0063e4d0(this,param_1,param_2,param_3,param_4,(int *)&local_10);
      if (bVar1) {
        iVar3 = local_c - (int)local_10 >> 2;
        (**(code **)(*piVar2 + 0x8c))(&local_14,iVar3);
        (**(code **)(*piVar2 + 0xa4))((int)register0x00000010 + -0x1c,unaff_EBX,0,iVar3);
      }
      if (local_10 != (void *)0x0) {
        Memory_FreeIfNonNull(local_10);
      }
    }
  }
  return local_14;
}

