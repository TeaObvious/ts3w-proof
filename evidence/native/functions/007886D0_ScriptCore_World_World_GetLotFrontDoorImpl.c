/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c78 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetLotFrontDoorImpl [assembly=ScriptCore token=0x0600088A; lotID:
   System.UInt64, frontDoorType: System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_World__World_GetLotFrontDoorImpl(uint param_1,uint param_2,int param_3)

{
  int iVar1;
  void *this;
  undefined8 uVar2;
  
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)FUN_008295c0(iVar1);
  }
  uVar2 = 0;
  if (this != (void *)0x0) {
    uVar2 = FUN_00632020(this,param_1,param_2,param_3,(int *)0x0);
  }
  return uVar2;
}

