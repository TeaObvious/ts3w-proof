/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10538765) */
/* WARNING: Removing unreachable block (ram,0x10538769) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_OverrideInGameBrowserUrl.
   Export ordinal(s): 519. Entry VA: 0x10538c80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060005AB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl OnlineFeaturesHost_OverrideInGameBrowserUrl(int param_1)

{
  int *piVar1;
  short *psVar2;
  
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && (param_1 != 0)) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    FUN_1006a620(&stack0xffffffec,psVar2);
    EnterCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c8ea00);
    FUN_1001f8c0(&PTR__Dst_10ca8244_10c4f98c,(void *)0x0,(int *)0x0);
    LeaveCriticalSection((LPCRITICAL_SECTION)&lpCriticalSection_10c8ea00);
  }
  return;
}

