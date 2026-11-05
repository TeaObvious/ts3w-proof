/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011567e0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_TextSearchStartSearchImpl [assembly=ScriptCore token=0x06000388;
   handle: System.UInt32, startsWith: System.Boolean, searchText: System.String;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.CASUtils::CASUtils_TextSearchStartSearchImpl(uint param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  short *psVar2;
  uint uVar3;
  char unaff_retaddr;
  
  if ((param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this == (void *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
  uVar3 = FUN_005ac710(this,unaff_retaddr,psVar2);
  return uVar3;
}

