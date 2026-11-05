/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteDouble [assembly=ScriptCore token=0x06001028; handle:
   System.UInt32, val: System.Double; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775100, 0077517d]]: 126 original owned bytes/44 actual Listing
   instructions. Handle plus eight physical value bytes. Cache/tag/interface lookup; missing
   stream-2. x87 FLD/FSTP moves the double through local storage before virtual+0x38(buffer,8);
   nonzero AL maps0, zero AL maps-3. Plain RET. No NaN/FP-environment equivalence with current raw
   CLR byte serialization or concrete virtual exception policy is inferred. */

int __cdecl ScriptCore.StreamHost::StreamHost_WriteDouble(uint param_1,undefined8 param_2)

{
  char cVar1;
  int *piVar2;
  undefined8 local_8;
  
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
    local_8 = param_2;
    cVar1 = (**(code **)(*piVar2 + 0x38))(&local_8,8);
    return (-(uint)(cVar1 != '\0') & 3) - 3;
  }
  return -2;
}

