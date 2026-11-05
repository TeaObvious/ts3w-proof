/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX evaluation context,no stack
   arguments,RET,EAX signed32priority. Null driver=>10000. Otherwise driver+38==-2 selects
   referenced machine+34 default; any other value returned directly. Play node007F8DC0 bypasses this
   for flag4 using signed dword node+58. Current immutable constructor OverridePriority vs native
   request-time+38 is not automatically equivalent. */

int __fastcall SacsContext_ResolveAnimationPriority(int *param_1)

{
  int iVar1;
  
  iVar1 = *param_1;
  if (iVar1 == 0) {
    return 10000;
  }
  if (*(int *)(iVar1 + 0x38) == -2) {
    return *(int *)(*(int *)(iVar1 + 0xc) + 0x34);
  }
  return *(int *)(iVar1 + 0x38);
}

