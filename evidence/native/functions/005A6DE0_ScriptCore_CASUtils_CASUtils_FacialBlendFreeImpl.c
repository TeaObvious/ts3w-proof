/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156570, 0x011565b0, 0x011565f8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_FacialBlendFreeImpl [assembly=ScriptCore token=0x0600034B; handle:
   System.UInt32; return=System.Void]
   ScriptCore.CASUtils::CASUtils_CompoundBlendFreeImpl [assembly=ScriptCore token=0x0600035C;
   handle: System.UInt32; return=System.Void]
   ScriptCore.CASUtils::CASUtils_BlendUnitFreeImpl [assembly=ScriptCore token=0x06000359; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_FacialBlendFreeImpl(uint param_1)

{
  int *piVar1;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x005a6e11. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

