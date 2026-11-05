/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162938 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_Close [assembly=ScriptCore token=0x06001039; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 metadata limit: existing Ghidra body owns only007759D0, one byte. Pristine instruction
   bytes E9 1B F5 FF FF are a five-byte jump to00774EF0, followed by alignment in the16-byte
   canonical bounded window. Preserve the one-byte metadata and bounded export; no silent body/flow
   repair or full-function claim. Stored inferred stdcall/undefined argument projection does not
   establish callee cleanup or concrete stream release effects. See the target's bounded
   cache/virtual-dispatch evidence. */

void ScriptCore_StreamHost__StreamHost_Close(uint param_1)

{
  int *piVar1;
  
  if (param_1 == DAT_011d7838) {
    DAT_011d7838 = 0;
    DAT_011d783c = 0;
  }
  if ((param_1 & 0xff000000) == 0x60000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00774f3d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 8))();
      return;
    }
  }
  return;
}

