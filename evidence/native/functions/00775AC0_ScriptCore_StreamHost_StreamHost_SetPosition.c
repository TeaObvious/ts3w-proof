/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162958 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_SetPosition [assembly=ScriptCore token=0x0600103D; handle:
   System.UInt32, offset: System.Int32, anchor: System.Int32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body00775AC0..00775B3B:124 original bytes/44instructions; three stack
   words and plain RET. Cache/tag/interface lookup precedes unsigned anchor<3 validation; missing
   stream-2, invalid anchor-7. Calls stream virtual+0x28 with offset and anchor; NEG
   AL/SBB/AND3/ADD-3 maps nonzero AL to0 and zero AL to-3. Upper returned bits are irrelevant to
   that byte test. Concrete seek/exception/cache/thread behavior is separate; no prototype, type or
   body change. */

int __cdecl
ScriptCore.StreamHost::StreamHost_SetPosition(uint param_1,undefined4 param_2,uint param_3)

{
  char cVar1;
  int *piVar2;
  
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
    if (param_3 < 3) {
      cVar1 = (**(code **)(*piVar2 + 0x28))(param_2,param_3);
      return (-(uint)(cVar1 != '\0') & 3) - 3;
    }
    return -7;
  }
  return -2;
}

