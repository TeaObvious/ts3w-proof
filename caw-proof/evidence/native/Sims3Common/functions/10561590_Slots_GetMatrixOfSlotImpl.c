/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Slots_GetMatrixOfSlotImpl. Export ordinal(s):
   778. Entry VA: 0x10561590. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600108C. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Slots_GetMatrixOfSlotImpl(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_40 [16];
  
                    /* 0x561590  778  Slots_GetMatrixOfSlotImpl */
  puVar1 = FUN_10561030(local_40,param_2,param_3,param_4);
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

