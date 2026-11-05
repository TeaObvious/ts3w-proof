/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: EAText_Compare. Export ordinal(s): 416. Entry VA:
   0x10533310. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A0F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl EAText_Compare(undefined4 param_1)

{
  int *piVar1;
  PCNZWCH pWVar2;
  PCNZWCH pWVar3;
  int iVar4;
  
                    /* 0x533310  416  EAText_Compare */
  if (DAT_10c78790 == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = DAT_10c78790 + -8;
  }
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (PCNZWCH)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (PCNZWCH)(**(code **)(*piVar1 + 0x58))(param_1);
  FUN_10889cb0((void *)(iVar4 + 8),pWVar2,pWVar3);
  return;
}

