/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x105388c2) */
/* WARNING: Removing unreachable block (ram,0x105388c6) */
/* CAW 1.22.10 Sims3Common.dll PE export identity:
   OnlineFeaturesHost_OverrideInGameBrowserUrlXroads. Export ordinal(s): 520. Entry VA: 0x10538c90.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x060005AC. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

void __cdecl OnlineFeaturesHost_OverrideInGameBrowserUrlXroads(int param_1)

{
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 *puVar4;
  short *psVar5;
  int *piStack_24;
  int *piStack_20;
  int iStack_1c;
  char *pcStack_18;
  int aiStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && (param_1 != 0)) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    piStack_24 = (int *)0x0;
    piStack_20 = (int *)0x0;
    iStack_1c = 0;
    pcStack_18 = "Services/OnlineFeaturesHost/pageUrl";
    FUN_1006a620(&piStack_24,psVar2);
    FUN_1006a620(&stack0xffffffcc,(short *)&_Str2_10b624fc);
    if (DAT_10c788dc == 0) {
      iVar3 = 0;
    }
    else {
      iVar3 = DAT_10c788dc + -8;
    }
    puVar4 = FUN_10926db0(aiStack_14,*(LPCWSTR *)(iVar3 + 0xa8),0xffffffff,(char *)0x0);
    if (puVar4 != (undefined4 *)&stack0xffffffcc) {
      FUN_1001f8c0(&stack0xffffffcc,(void *)*puVar4,(int *)puVar4[1]);
    }
    if ((2 < (int)(iStack_c - aiStack_14[0] & 0xfffffffeU)) && (aiStack_14[0] != 0)) {
      FUN_10918e90(aiStack_14[0]);
    }
    psVar2 = (short *)&DAT_10b1b058;
    do {
      psVar5 = psVar2;
      psVar2 = psVar5 + 1;
    } while (*psVar2 != 0);
    FUN_1001f3b0(&stack0xffffffcc,(int *)&DAT_10b1b058,
                 (int *)(&DAT_10b1b058 + ((int)(psVar5 + -0x858d82b) >> 1) * 2));
    piVar1 = piStack_24;
    FUN_1001f3b0(&stack0xffffffcc,piStack_24,piStack_20);
    EnterCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c8ea00);
    FUN_1001f8c0(&PTR__Dst_10ca8244_10c4f98c,(void *)0x0,(int *)0x0);
    LeaveCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c8ea00);
    if ((2 < (int)(iStack_1c - (int)piVar1 & 0xfffffffeU)) && (piVar1 != (int *)0x0)) {
      FUN_10918e90((int)piVar1);
    }
  }
  return;
}

