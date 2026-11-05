/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HandToolDetach. Export ordinal(s): 1395.
   Entry VA: 0x1057fba0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C4F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 World_HandToolDetach(void)

{
  undefined8 uVar1;
  int iVar2;
  int *piVar3;
  
                    /* 0x57fba0  1395  World_HandToolDetach */
  iVar2 = FUN_102d5e30();
  if (iVar2 != 0) {
    uVar1 = *(undefined8 *)(iVar2 + 8);
    if (*(int *)(iVar2 + 8) != 0 || *(int *)(iVar2 + 0xc) != 0) {
      piVar3 = (int *)FUN_1055b130();
      (**(code **)(*piVar3 + 0x18))(0x45ad88a,0,0);
    }
    return uVar1;
  }
  return 0;
}

