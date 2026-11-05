/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_IsValid. Export ordinal(s): 486. Entry
   VA: 0x105362d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool Objects_IsValid(void)

{
  int iVar1;
  uint uVar2;
  
                    /* 0x5362d0  486  Objects_IsValid */
  iVar1 = FUN_1072a1a0();
  uVar2 = FUN_1072abb0(iVar1);
  return uVar2 != 0;
}

