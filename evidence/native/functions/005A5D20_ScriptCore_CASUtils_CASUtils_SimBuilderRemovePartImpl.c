/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011562c0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderRemovePartImpl [assembly=ScriptCore token=0x060002FD;
   handle: System.UInt32, key: Sims3.SimIFace.ResourceKey; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_SimBuilderRemovePartImpl
          (uint param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  int *piVar1;
  void *this;
  uint uStack_14;
  undefined4 uStack_10;
  uint uStack_c;
  undefined4 uStack_8;
  
  uStack_14 = 0x5a5d28;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x35000000)) {
    uStack_14 = param_1;
    this = (void *)(**(code **)(*piVar1 + 0xcc))();
    if (this != (void *)0x0) {
      uStack_14 = param_3;
      uStack_c = param_1;
      uStack_10 = param_4;
      uStack_8 = param_2;
      FUN_005e4340(this,(int *)&uStack_14);
    }
  }
  return;
}

