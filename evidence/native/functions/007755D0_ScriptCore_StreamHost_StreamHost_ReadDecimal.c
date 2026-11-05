/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162900 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadDecimal [assembly=ScriptCore token=0x06001032; handle:
   System.UInt32, value: System.Decimal&; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[007755d0, 00775671]]: 162 original owned bytes/57 actual Listing
   instructions. One handle plus a physical output pointer, despite stored one-parameter inference.
   Cache/tag/interface lookup; missing-2. Read16 local bytes via virtual+0x30; only exact16
   publishes serialized lo/mid/hi/flags to output flags/hi/lo/mid and returns0. FFFFFFFF-3, other
   short count-1 leaves output untouched; plain RET. Decompiler local/output projections require
   actual instructions; no decimal validity or arithmetic policy inferred. */

int __cdecl ScriptCore.StreamHost::StreamHost_ReadDecimal(uint param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *unaff_retaddr;
  undefined4 *puVar3;
  undefined4 local_10;
  undefined4 uStack_c;
  
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
  puVar3 = &local_10;
  if (piVar1 != (int *)0x0) {
    iVar2 = (**(code **)(*piVar1 + 0x30))();
    if (iVar2 == 0x10) {
      unaff_retaddr[2] = puVar3;
      unaff_retaddr[3] = 0x10;
      unaff_retaddr[1] = local_10;
      *unaff_retaddr = uStack_c;
      return 0;
    }
    return (uint)(iVar2 != -1) * 2 + -3;
  }
  return -2;
}

