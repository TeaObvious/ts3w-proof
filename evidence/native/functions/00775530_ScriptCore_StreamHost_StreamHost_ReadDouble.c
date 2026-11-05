/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadDouble [assembly=ScriptCore token=0x06001031; handle:
   System.UInt32, value: System.Double&; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775530, 007755cb]]: 156 original owned bytes/53 actual Listing
   instructions. One handle plus a physical output pointer, despite stored one-parameter inference.
   Missing stream-2. Zero local8-byte scratch, virtual+0x30(buffer,8), then ONLY on exact8 use x87
   FLD/FSTP to the output and return0. FFFFFFFF-3, other short count-1 without output copy; plain
   RET. Preserve decompiler stack artifacts, stored ABI and FP-environment uncertainty. Current
   partial-buffer Marshal.Copy policy differs. */

int __cdecl ScriptCore.StreamHost::StreamHost_ReadDouble(uint param_1)

{
  int *piVar1;
  int iVar2;
  undefined8 *unaff_retaddr;
  undefined4 *puVar3;
  undefined4 local_8;
  undefined4 local_4;
  
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
  puVar3 = &local_8;
  if (piVar1 != (int *)0x0) {
    local_8 = 0;
    local_4 = 0;
    iVar2 = (**(code **)(*piVar1 + 0x30))();
    if (iVar2 == 8) {
      *unaff_retaddr = CONCAT44(8,puVar3);
      return 0;
    }
    return (uint)(iVar2 != -1) * 2 + -3;
  }
  return -2;
}

