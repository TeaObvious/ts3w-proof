/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011566f8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimOutfitFreeImpl [assembly=ScriptCore token=0x0600037C; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_SimOutfitFreeImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  void *this;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    (**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar2 != (int *)0x0) {
      this = (void *)FUN_005ebac0();
      FUN_005eddd0(this,piVar2);
                    /* WARNING: Could not recover jumptable at 0x005a7123. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar2 + 4))();
      return;
    }
  }
  return;
}

