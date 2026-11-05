/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_InjectHairColorsImpl. Export ordinal(s):
   113. Entry VA: 0x103a72a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000495. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void CASUtils_InjectHairColorsImpl(void)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 auStack_58 [20];
  
                    /* 0x3a72a0  113  CASUtils_InjectHairColorsImpl */
  puVar2 = (undefined4 *)&stack0x00000008;
  puVar3 = auStack_58;
  for (iVar1 = 0x12; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar3 = *puVar2;
    puVar2 = puVar2 + 1;
    puVar3 = puVar3 + 1;
  }
  FUN_103a6b00();
  return;
}

