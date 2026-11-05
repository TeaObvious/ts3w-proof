/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01167798 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *pvVar3;
  undefined4 *puVar4;
  undefined4 *puStack_4;
  
  puStack_4 = (undefined4 *)0x0;
  pvVar3 = ObjectRegistry_GetGlobal();
  if (pvVar3 != (void *)0x0) {
    puVar4 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
    FUN_00874fb0(&puStack_4,puVar4);
    puVar4 = puStack_4;
    if (puStack_4 != (undefined4 *)0x0) {
      pvVar3 = Object_GetComponentByMask(puStack_4,DAT_011e9e70);
      if (pvVar3 != (void *)0x0) {
        FUN_00941f90(pvVar3,param_3);
      }
      piVar1 = puVar4 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar4)(1);
      }
    }
  }
  return;
}

