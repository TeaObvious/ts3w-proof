/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_GetSharingServiceStatus.
   Export ordinal(s): 503. Entry VA: 0x1053a780. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600058E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl OnlineFeaturesHost_GetSharingServiceStatus(uint param_1)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  
  if (param_1 == 0) {
    return 0;
  }
  uVar3 = 0;
  if ((param_1 & 0xffff0000) != 0) {
    uVar3 = 0x10;
    param_1 = param_1 >> 0x10;
  }
  if ((param_1 & 0xff00) != 0) {
    uVar3 = uVar3 + 8;
    param_1 = param_1 >> 8;
  }
  if ((param_1 & 0xf0) != 0) {
    uVar3 = uVar3 + 4;
    param_1 = param_1 >> 4;
  }
  if ((param_1 & 0xc) != 0) {
    uVar3 = uVar3 + 2;
    param_1 = param_1 >> 2;
  }
  if ((param_1 & 2) != 0) {
    uVar3 = uVar3 + 1;
  }
  param_1 = uVar3;
  EnterCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
  if (((DAT_10c78880 != 0) && (*(int *)(DAT_10c78880 + 0x30) != 0)) &&
     (uVar3 < *(uint *)(DAT_10c78880 + 0x1c))) {
    piVar2 = FUN_1053a480((void *)(DAT_10c78880 + 8),&param_1);
    iVar1 = piVar2[4];
    LeaveCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
    return iVar1;
  }
  LeaveCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c78888);
  return 0;
}

