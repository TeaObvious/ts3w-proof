/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Physical instruction qualification: cdecl GUIDlow/high then hiddenflags; additionally reads a fourth routing-option word atoriginalESP+10 and forwards it to946050 after VisualState95E650. Managed declaration supplies UInt64+UInt32 (three words); exact ordinary registration adapter/extra-word provenance remains unresolved. WithWorldFootprint78D780 explicitly suppliesfourthword1. Do not inferordinary0, stableEAX or event-free behavior;95E650 invokes95E5F0 event18 synchronously. */



/* Verified PC 1.67 registration table at 0x01163670 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetHiddenFlags [assembly=ScriptCore token=0x060007D2; objId:
   System.UInt64, hiddenFlags: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectSetHiddenFlags
          (undefined4 param_1,undefined4 param_2,uint param_3,uint param_4)

{
  void *pvVar1;
  void *this;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if ((pvVar1 != (void *)0x0) &&
     (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1)), pvVar1 != (void *)0x0)
     ) {
    this = Object_GetComponentByMask(pvVar1,DAT_011ea2a8);
    if (this != (void *)0x0) {
      FUN_0095e650(this,(param_3 & 5) == 0);
    }
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9fa8);
    if (pvVar1 != (void *)0x0) {
      FootprintComponent_SetEnabledAndNotifyRouting(pvVar1,~(byte)(param_3 >> 1) & 1,param_4);
    }
  }
  return;
}

