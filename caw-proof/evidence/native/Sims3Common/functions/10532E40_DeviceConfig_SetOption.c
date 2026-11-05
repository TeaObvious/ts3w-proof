/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_SetOption. Export ordinal(s): 353.
   Entry VA: 0x10532e40. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EF2. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl DeviceConfig_SetOption(int param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  int unaff_EDI;
  int iStack_c;
  
                    /* 0x532e40  353  DeviceConfig_SetOption */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 != (LPCWSTR)0x0) {
    iVar3 = FUN_1038c390();
    puVar4 = FUN_10926f20(&stack0xffffffec,pWVar2,0xffffffff,(char *)0x0);
    uVar5 = FUN_1038c690((void *)(iVar3 + 4),(byte *)*puVar4,param_1);
    if ((1 < iStack_c - unaff_EDI) && (unaff_EDI != 0)) {
      unaff_EDI = FUN_10918e90(unaff_EDI);
    }
    return CONCAT31((int3)((uint)unaff_EDI >> 8),(char)uVar5);
  }
  return 0;
}

