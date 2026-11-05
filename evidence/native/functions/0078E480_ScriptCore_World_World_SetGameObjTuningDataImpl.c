/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163a78 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_SetGameObjTuningDataImpl [assembly=ScriptCore token=0x06000853; objectId:
   System.UInt64, data: System.Byte[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_SetGameObjTuningDataImpl(uint param_1,undefined4 param_2,uint param_3)

{
  uint uVar1;
  int iVar2;
  void *this;
  int *piVar3;
  int local_c;
  int iStack_8;
  void *local_4;
  
  uVar1 = param_3;
  if (param_3 != 0) {
    iVar2 = FUN_00937570();
    if (iVar2 != 0) {
      param_3 = FUN_00937f80(iVar2);
      if (param_3 == 0) {
        FUN_007462e0((int *)&param_3);
        return;
      }
      LOCK();
      *(int *)(param_3 + 4) = *(int *)(param_3 + 4) + 1;
      UNLOCK();
      this = (void *)FUN_0068f130(param_3);
      if (this != (void *)0x0) {
        piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 0x70))(uVar1,&local_4,&local_c);
          iStack_8 = local_c;
          FUN_00c71ee0(this,&param_1,local_4,&iStack_8);
        }
      }
      FUN_007462e0((int *)&param_3);
    }
  }
  return;
}

