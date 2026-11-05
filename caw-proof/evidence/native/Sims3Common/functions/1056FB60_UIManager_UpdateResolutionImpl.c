/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_UpdateResolutionImpl. Export
   ordinal(s): 1170. Entry VA: 0x1056fb60. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006E5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_UpdateResolutionImpl(int param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uStack_10;
  undefined4 uStack_c;
  float fStack_8;
  float fStack_4;
  
  piVar1 = (int *)FUN_1093d2e0();
  piVar1 = (int *)(**(code **)(*piVar1 + 4))();
  if (piVar1 != (int *)0x0) {
    fStack_8 = (float)param_1;
    uStack_10 = 0;
    uStack_c = 0;
    if (param_1 < 0) {
      fStack_8 = fStack_8 + _DAT_10aae190;
    }
    fStack_4 = (float)param_2;
    if (param_2 < 0) {
      fStack_4 = fStack_4 + _DAT_10aae190;
    }
    puVar3 = &DAT_10c30230;
    do {
      piVar2 = (int *)(**(code **)(*piVar1 + 0xf4))(*puVar3,1);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 100))(&uStack_10);
      }
      puVar3 = puVar3 + 1;
    } while ((int)puVar3 < 0x10c3027c);
  }
  return;
}

