/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628a8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteFloat [assembly=ScriptCore token=0x06001027; handle:
   System.UInt32, val: System.Single; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775080, 007750f8]]: 121 original owned bytes/41 actual Listing
   instructions. Handle plus one physical value word. Cache/tag/interface lookup; missing stream-2.
   MOVSS transports the value bits into scratch, then virtual+0x38(buffer,4); nonzero AL maps0, zero
   AL maps-3. Plain RET. Stored inferred parameter projection preserved; current BitConverter/write
   byte-count and error policy remain distinct. */

int __cdecl ScriptCore.StreamHost::StreamHost_WriteFloat(uint param_1,uint param_2)

{
  uint uVar1;
  char cVar2;
  int *piVar3;
  
  uVar1 = param_1;
  piVar3 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
      piVar3 = (int *)(**(code **)(*piVar3 + 0xcc))(uVar1);
      if (piVar3 != (int *)0x0) {
        DAT_011d7838 = uVar1;
        DAT_011d783c = piVar3;
      }
    }
    else {
      piVar3 = (int *)0x0;
    }
  }
  if (piVar3 != (int *)0x0) {
    param_1 = param_2;
    cVar2 = (**(code **)(*piVar3 + 0x38))(&param_1,4);
    return (-(uint)(cVar2 != '\0') & 3) - 3;
  }
  return -2;
}

