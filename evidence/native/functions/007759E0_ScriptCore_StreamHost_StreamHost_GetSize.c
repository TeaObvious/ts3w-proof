/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162948 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_GetSize [assembly=ScriptCore token=0x0600103B; handle:
   System.UInt32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body007759E0..00775A45:102 original bytes/35instructions; one stack
   handle and plain RET. Cache key011D7838 equality uses pointer011D783C directly. On miss,
   high-byte0x60 gates script-interface virtual+0xCC lookup; nonnull result stores pointer before
   key. Missing pointer returns-2; otherwise stream virtual+0x1C result exactlyFFFFFFFF maps to-3,
   other words pass through. No current CLR int.MaxValue clamp follows. Concrete manager/stream
   virtual effects, cache lifetime and concurrent safety remain unproved; stored inferred prototype
   preserved. */

int __cdecl ScriptCore.StreamHost::StreamHost_GetSize(uint param_1)

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
    iVar2 = (**(code **)(*piVar1 + 0x1c))();
    if (iVar2 == -1) {
      iVar2 = -3;
    }
    return iVar2;
  }
  return -2;
}

