/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: cdecl two raw IDs, ALBool/plainRET. Equal IDs true. Otherwise both nonFFFFFFFF must resolve via C8BBB0 and kindDWORD88 must agree. ID0 has no absence shortcut; caller AB67D0 handles selected missinglane before compatibility. Global bank initialization/provider population unresolved. */

bool __cdecl FUN_00b02820(int param_1,int param_2)

{
  void *this;
  int iVar1;
  int iVar2;
  
  this = DAT_011ee034;
  if (param_1 == param_2) {
    return true;
  }
  if ((param_1 != -1) && (param_2 != -1)) {
    iVar1 = FUN_00c8bbb0(DAT_011ee034,param_1);
    iVar2 = FUN_00c8bbb0(this,param_2);
    if ((iVar1 != 0) && (iVar2 != 0)) {
      return *(int *)(iVar1 + 0x88) == *(int *)(iVar2 + 0x88);
    }
  }
  return false;
}
