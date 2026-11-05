/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162898 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteInt [assembly=ScriptCore token=0x06001025; handle:
   System.UInt32, val: System.Int32, bytes: System.Int32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00774f50, 00774fe3]]: 148 original owned bytes/57 actual Listing
   instructions. One handle/value/width word sequence; cache/tag0x60/interface+0xCC lookup precedes
   signed width<=4 validation. Width>4 returns-7; missing stream-2. Calls00774E10 to pack low bytes,
   then stream virtual+0x38 with the original width; nonzero AL maps0, zero AL maps-3. Pack supports
   width3; zero/negative widths leave scratch uninitialized by that helper and still reach the
   virtual. Concrete negative/zero-write and exception behavior remains external; current CLR
   widths1/2/4 and byte-count/-1 policy differ. */

int __cdecl ScriptCore.StreamHost::StreamHost_WriteInt(uint param_1,undefined4 param_2,int param_3)

{
  uint uVar1;
  int iVar2;
  char cVar3;
  int *piVar4;
  
  uVar1 = param_1;
  piVar4 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
      piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(uVar1);
      if (piVar4 != (int *)0x0) {
        DAT_011d7838 = uVar1;
        DAT_011d783c = piVar4;
      }
    }
    else {
      piVar4 = (int *)0x0;
    }
  }
  iVar2 = param_3;
  if (piVar4 != (int *)0x0) {
    if (param_3 < 5) {
      StreamHost_PackLowIntegerBytes(&param_1,param_2,param_3);
      cVar3 = (**(code **)(*piVar4 + 0x38))(&param_1,iVar2);
      return (-(uint)(cVar3 != '\0') & 3) - 3;
    }
    return -7;
  }
  return -2;
}

