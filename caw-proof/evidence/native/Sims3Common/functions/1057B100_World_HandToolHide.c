/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HandToolHide. Export ordinal(s): 1397.
   Entry VA: 0x1057b100. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C51. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 World_HandToolHide(void)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x57b100  1397  World_HandToolHide */
  piVar1 = (int *)FUN_1055b130();
  uVar2 = (**(code **)(*piVar1 + 0x18))(0x46910c3,0,0);
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

