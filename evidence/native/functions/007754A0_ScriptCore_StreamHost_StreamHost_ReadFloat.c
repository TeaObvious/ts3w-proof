/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadFloat [assembly=ScriptCore token=0x06001030; handle:
   System.UInt32, value: System.Single&; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[007754a0, 0077552d]]: 142 original owned bytes/48 actual Listing
   instructions. One handle plus a physical output-pointer stack word, despite stored one-parameter
   inference. Missing stream-2 after cache/tag/interface lookup. Zero LOCAL float scratch, read4
   through virtual+0x30, and copy MOVSS to the actual output ONLY after exact4. Short result leaves
   output untouched: FFFFFFFF-3, other non4-1. Plain RET. Decompiler unaff_retaddr/parameter
   mutation is a stack artifact. Current common primitive helper publishes a zero-padded partial
   output instead. */

int __cdecl ScriptCore.StreamHost::StreamHost_ReadFloat(uint param_1)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  undefined4 *unaff_retaddr;
  
  uVar1 = param_1;
  piVar2 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(uVar1);
      if (piVar2 != (int *)0x0) {
        DAT_011d7838 = uVar1;
        DAT_011d783c = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  if (piVar2 != (int *)0x0) {
    param_1 = 0;
    iVar3 = (**(code **)(*piVar2 + 0x30))(&param_1);
    if (iVar3 == 4) {
      *unaff_retaddr = 4;
      return 0;
    }
    return (uint)(iVar3 != -1) * 2 + -3;
  }
  return -2;
}

