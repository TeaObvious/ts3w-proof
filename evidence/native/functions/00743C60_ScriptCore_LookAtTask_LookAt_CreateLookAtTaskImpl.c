/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011612c8 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtTask::LookAt_CreateLookAtTaskImpl [assembly=ScriptCore token=0x06000FAF; handle:
   System.UInt64, priority: System.Int32, jointFilter: System.Int32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_LookAtTask__LookAt_CreateLookAtTaskImpl
          (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  void *this;
  undefined4 *this_00;
  int *piVar2;
  undefined4 uVar3;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_00934260(this,DAT_011dd484);
    if (iVar1 != 0) {
      if (*(int *)(iVar1 + 0x28) == 0) {
        this_00 = (undefined4 *)0x0;
      }
      else {
        this_00 = FUN_00580840(*(int *)(iVar1 + 4),param_3,param_4);
        if (this_00 != (undefined4 *)0x0) {
          this_00[1] = this_00[1] + 1;
        }
      }
      uVar3 = 0xffffffff;
      if (this_00 != (undefined4 *)0x0) {
        piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
        uVar3 = (**(code **)(*piVar2 + 200))(this_00,0x46);
        FUN_00580530(this_00,'\x01');
        iVar1 = this_00[1];
        this_00[1] = iVar1 + -1;
        if (iVar1 + -1 == 0) {
          this_00[1] = 1;
          (**(code **)*this_00)(1);
        }
      }
      return uVar3;
    }
  }
  return 0;
}

