/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011970d0, 0x01197100 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_CSVFileMoveNextImpl [assembly=ScriptCore token=0x0600022A;
   handle: System.UInt32; return=System.Boolean]
   ScriptCore.GameUtils::GameUtils_CSVFileMoveNext_ListImpl [assembly=ScriptCore token=0x06000230;
   handle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.GameUtils::GameUtils_CSVFileMoveNextImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x40000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (piVar2 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00ec1261. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar1 = (**(code **)(*piVar2 + 0x10))();
      return uVar1;
    }
  }
  return uVar1;
}

