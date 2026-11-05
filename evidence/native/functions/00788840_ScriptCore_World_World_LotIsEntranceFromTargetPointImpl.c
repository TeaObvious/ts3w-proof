/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c90 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotIsEntranceFromTargetPointImpl [assembly=ScriptCore token=0x0600088D;
   lotId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_LotIsEntranceFromTargetPointImpl(uint param_1,uint param_2)

{
  int iVar1;
  void *this;
  int *piVar2;
  uint uVar3;
  void *pvVar4;
  
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 != 0) {
    this = (void *)FUN_008295c0(iVar1);
    if (this != (void *)0x0) {
      pvVar4 = this;
      if (DAT_011edbc4 != (void *)0x0) {
        piVar2 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
        pvVar4 = (void *)0x0;
        if (piVar2 != (int *)0x0) {
          uVar3 = FUN_006321c0(this,param_1,param_2);
          return uVar3;
        }
      }
      return (uint)pvVar4 & 0xffffff00;
    }
  }
  return 0;
}

