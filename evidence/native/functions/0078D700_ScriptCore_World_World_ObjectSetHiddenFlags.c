/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Physical instruction qualification: cdecl GUIDlow/high then hiddenflags; additionally reads a fourth routing-option word atoriginalESP+10 and forwards it to946050 after VisualState95E650. Managed declaration supplies UInt64+UInt32 (three words); exact ordinary registration adapter/extra-word provenance remains unresolved. WithWorldFootprint78D780 explicitly suppliesfourthword1. Do not inferordinary0, stableEAX or event-free behavior;95E650 invokes95E5F0 event18 synchronously. */

/* Verified PC 1.67 registration table at 0x01163670 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectSetHiddenFlags [assembly=ScriptCore token=0x060007D2; objId:
   System.UInt64, hiddenFlags: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectSetHiddenFlags
          (undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  void *pvVar2;
  void *this;
  
  iVar1 = FUN_00937570();
  if ((iVar1 != 0) && (pvVar2 = (void *)FUN_00937f80(iVar1), pvVar2 != (void *)0x0)) {
    this = (void *)FUN_00934260(pvVar2,DAT_011ea2a8);
    if (this != (void *)0x0) {
      FUN_0095e650(this,(param_3 & 5) == 0);
    }
    pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011e9fa8);
    if (pvVar2 != (void *)0x0) {
      FUN_00946050(pvVar2,~(byte)(param_3 >> 1) & 1,param_4);
    }
  }
  return;
}

