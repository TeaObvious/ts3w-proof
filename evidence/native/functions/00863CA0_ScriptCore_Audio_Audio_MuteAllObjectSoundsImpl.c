/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01167798 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_MuteAllObjectSoundsImpl [assembly=ScriptCore token=0x060011DD;
   objectHandle: System.UInt64, bMute: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Audio__Audio_MuteAllObjectSoundsImpl
               (undefined4 param_1,undefined4 param_2,undefined1 param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  void *this;
  undefined4 *puStack_4;
  
  puStack_4 = (undefined4 *)0x0;
  iVar2 = FUN_00937570();
  if (iVar2 != 0) {
    puVar3 = (undefined4 *)FUN_00937f80(iVar2);
    FUN_00874fb0(&puStack_4,puVar3);
    puVar3 = puStack_4;
    if (puStack_4 != (undefined4 *)0x0) {
      this = (void *)FUN_00934260(puStack_4,DAT_011e9e70);
      if (this != (void *)0x0) {
        FUN_00941f90(this,param_3);
      }
      piVar1 = puVar3 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  return;
}

