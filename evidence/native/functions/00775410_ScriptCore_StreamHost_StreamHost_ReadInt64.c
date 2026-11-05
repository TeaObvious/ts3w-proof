/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadInt64 [assembly=ScriptCore token=0x0600102F; handle:
   System.UInt32, value: System.Int64&; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775410, 00775496]]: 135 original owned bytes/46 actual Listing
   instructions. Cache/tag/interface lookup first; missing stream-2. Zero both output words BEFORE
   virtual+0x30(out,8). Exact8 returns0, FFFFFFFF maps-3, another count-1; plain RET. Current
   temporary zero-buffer callback publishes only after MemoryStream.Read, including short reads; it
   does not establish identical original output/reentry timing or concrete virtual semantics. */

int __cdecl ScriptCore.StreamHost::StreamHost_ReadInt64(uint param_1,undefined4 *param_2)

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
    *param_2 = 0;
    param_2[1] = 0;
    iVar2 = (**(code **)(*piVar1 + 0x30))(param_2,8);
    if (iVar2 == 8) {
      return 0;
    }
    return (uint)(iVar2 != -1) * 2 + -3;
  }
  return -2;
}

