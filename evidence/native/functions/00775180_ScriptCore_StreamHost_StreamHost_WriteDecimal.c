/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteDecimal [assembly=ScriptCore token=0x06001029; handle:
   System.UInt32, val: System.Decimal; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775180, 00775214]]: 149 original owned bytes/50 actual Listing
   instructions. Handle plus16 physical DECIMAL bytes. After cache/tag/interface lookup,
   stack-accounted incoming flags/hi/lo/mid words are copied to serialized lo/mid/hi/flags;
   virtual+0x38 receives16 bytes. Missing stream-2; nonzero AL maps0, zero AL maps-3; plain RET.
   This is opaque word transport, not decimal normalization/arithmetic. Preserve inferred five-word
   projection and original managed decimal declaration separately. */

int __cdecl
ScriptCore.StreamHost::StreamHost_WriteDecimal
          (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  char cVar1;
  int *piVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar2 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
      if (piVar2 != (int *)0x0) {
        DAT_011d7838 = param_1;
        DAT_011d783c = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  if (piVar2 != (int *)0x0) {
    local_10 = param_4;
    local_c = param_5;
    local_8 = param_3;
    local_4 = param_2;
    cVar1 = (**(code **)(*piVar2 + 0x38))(&local_10,0x10);
    return (-(uint)(cVar1 != '\0') & 3) - 3;
  }
  return -2;
}

