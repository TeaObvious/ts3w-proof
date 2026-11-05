/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ca0 (original PC 1.67 TS3W.exe).
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
  int local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
  local_14 = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar3 = thunk_FUN_00835d40();
  if (iVar3 != 0) {
    this = (void *)FUN_008295c0(iVar3);
    if ((this != (void *)0x0) && (piVar2 != (int *)0x0)) {
      local_10 = 0;
      local_c = 0;
      local_8 = 0;
      local_4 = "Scripting/WorldHost";
      bVar1 = FUN_0063e4d0(this,param_1,param_2,param_3,param_4,&local_10);
      if (bVar1) {
        iVar3 = local_c - local_10 >> 2;
        (**(code **)(*piVar2 + 0x8c))(&local_14,iVar3);
        (**(code **)(*piVar2 + 0xa4))(&stack0xffffffe4,unaff_EBX,0,iVar3);
      }
      if (local_10 != 0) {
        FUN_004e44e0(local_10);
      }
    }
  }
  return local_14;
}

