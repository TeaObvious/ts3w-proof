/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteCharUTF8 [assembly=ScriptCore token=0x0600102B; handle:
   System.UInt32, val: System.Char; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[007752f0, 0077537c]]: 141 original owned bytes/52 actual Listing
   instructions. Cache/tag/interface lookup precedes conversion; missing stream-2. Physical
   call004F4690 receives local destination, capacity8, address of the one incoming UTF-16 word and
   explicit source count1. That wrapper returns producedBytes-1 when nonzero, otherwise0; this
   returned count is forwarded unchanged to stream virtual+0x38. Nonzero AL maps0, zero AL maps-3;
   plain RET. Do not replace the observed count arithmetic with intended Unicode behavior or current
   Encoding.UTF8 full byte count. */

int __cdecl ScriptCore.StreamHost::StreamHost_WriteCharUTF8(uint param_1)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  WCHAR local_8 [4];
  
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
    iVar3 = Utf_EncodeWideBufferReportedLength(local_8,8,(LPCWSTR)&stack0x00000008,1);
    cVar1 = (**(code **)(*piVar2 + 0x38))(local_8,iVar3);
    return (-(uint)(cVar1 != '\0') & 3) - 3;
  }
  return -2;
}

