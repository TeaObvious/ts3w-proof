/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteInt64 [assembly=ScriptCore token=0x06001026; handle:
   System.UInt32, val: System.Int64; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00774ff0, 00775074]]: 133 original owned bytes/46 actual Listing
   instructions. One handle plus two physical value words. Cache/tag/interface lookup precedes local
   low/high word copies and stream virtual+0x38(buffer,8). Missing stream-2; nonzero write AL maps0,
   zero AL maps-3. Plain RET; inferred split parameter projection is not a different original Int64
   managed declaration. Concrete virtual failures remain external; current CLR write reports byte
   count and uses its existing missing/caught-1. */

int __cdecl
ScriptCore.StreamHost::StreamHost_WriteInt64(uint param_1,undefined4 param_2,undefined4 param_3)

{
  char cVar1;
  int *piVar2;
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
    local_8 = param_2;
    local_4 = param_3;
    cVar1 = (**(code **)(*piVar2 + 0x38))(&local_8,8);
    return (-(uint)(cVar1 != '\0') & 3) - 3;
  }
  return -2;
}

