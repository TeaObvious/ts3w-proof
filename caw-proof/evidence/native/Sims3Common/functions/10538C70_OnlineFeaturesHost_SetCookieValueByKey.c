/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_SetCookieValueByKey. Export
   ordinal(s): 526. Entry VA: 0x10538c70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600059B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl OnlineFeaturesHost_SetCookieValueByKey(undefined4 param_1,int param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  undefined *puVar4;
  char *unaff_ESI;
  char *pcVar5;
  int unaff_retaddr;
  char *apcStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && (param_2 != 0)) {
    puVar4 = &DAT_10ca8245;
    apcStack_14[0] = "Services/OnlineFeaturesHost";
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_2);
    puVar3 = FUN_10926f20(apcStack_14,pWVar2,0xffffffff,(char *)0x0);
    pcVar5 = &_Dst_10ca8244;
    if (puVar3 != (undefined4 *)&stack0xffffffdc) {
      FUN_1000e8a0(&stack0xffffffdc,(void *)*puVar3,(undefined1 *)puVar3[1]);
      puVar4 = &_Dst_10ca8244;
      pcVar5 = unaff_ESI;
    }
    if ((1 < iStack_c - (int)apcStack_14[0]) && (apcStack_14[0] != (char *)0x0)) {
      FUN_10918e90((int)apcStack_14[0]);
    }
    if ((DAT_10c788dc != 0) && (DAT_10c788dc != 8)) {
      FUN_10537b10(*(void **)(DAT_10c788dc + 0x114),unaff_retaddr,pcVar5);
    }
    if ((1 < (int)puVar4 - (int)pcVar5) && (pcVar5 != (char *)0x0)) {
      FUN_10918e90((int)pcVar5);
    }
  }
  return;
}

