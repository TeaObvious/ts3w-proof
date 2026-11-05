/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162950 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_GetPosition [assembly=ScriptCore token=0x0600103C; handle:
   System.UInt32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body00775A50..00775AB6:103 original bytes/36instructions; one stack
   handle and plain RET. Same key011D7838/pointer011D783C cache and high-byte0x60-gated
   interface+0xCC lookup; successful miss stores pointer before key. Null stream returns-2. Calls
   stream virtual+0x24 with literal0; exactlyFFFFFFFF result maps to-3, other words pass unchanged.
   No CLR position clamp, cache synchronization or concrete virtual behavior inferred; stored
   prototype preserved. */

int __cdecl ScriptCore.StreamHost::StreamHost_GetPosition(uint param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
      if (piVar1 != (int *)0x0) {
        DAT_011d7838 = param_1;
        DAT_011d783c = piVar1;
      }
    }
    else {
      piVar1 = (int *)0x0;
    }
  }
  if (piVar1 != (int *)0x0) {
    iVar2 = (**(code **)(*piVar1 + 0x24))(0);
    if (iVar2 == -1) {
      iVar2 = -3;
    }
    return iVar2;
  }
  return -2;
}

