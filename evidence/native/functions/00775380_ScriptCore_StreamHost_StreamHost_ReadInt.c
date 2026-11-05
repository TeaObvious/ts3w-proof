/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadInt [assembly=ScriptCore token=0x0600102E; handle:
   System.UInt32, bytes: System.Int32, value: System.Int32&; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775380, 0077540d]]: 142 original owned bytes/53 actual Listing
   instructions. Cache/tag/interface lookup first; missing stream-2. Signed width>4 returns-3.
   Otherwise zero the entire output word BEFORE virtual+0x30(out,width). Exact requested read count
   succeeds0; FFFFFFFF maps-3, another nonmatching count-1. No separate negative-width or
   output-null guard is visible. Plain RET. Current membership/relookup/null/negative-width guards
   and output-after-read timing are explicit differences. */

int __cdecl ScriptCore.StreamHost::StreamHost_ReadInt(uint param_1,int param_2,undefined4 *param_3)

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
  if (piVar1 == (int *)0x0) {
    return -2;
  }
  if (4 < param_2) {
    return -3;
  }
  *param_3 = 0;
  iVar2 = (**(code **)(*piVar1 + 0x30))(param_3,param_2);
  if (iVar2 == param_2) {
    return 0;
  }
  return (uint)(iVar2 != -1) * 2 + -3;
}

