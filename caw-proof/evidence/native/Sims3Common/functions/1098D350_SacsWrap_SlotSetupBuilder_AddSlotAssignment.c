/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SlotSetupBuilder_AddSlotAssignment.
   Export ordinal(s): 2188. Entry VA: 0x1098d350. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000ED4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SacsWrap_SlotSetupBuilder_AddSlotAssignment
          (int *param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  int iVar1;
  int iVar2;
  
                    /* 0x98d350  2188  SacsWrap_SlotSetupBuilder_AddSlotAssignment */
  if (param_1 != (int *)0x0) {
    iVar1 = *(int *)*param_1;
    iVar2 = iVar1 * 0x10;
    ((int *)*param_1)[iVar1 * 4 + 4] = param_2;
    *(undefined4 *)(*param_1 + 0x14 + iVar2) = param_3;
    *(undefined4 *)(*param_1 + 0x18 + iVar2) = param_4;
    *(undefined4 *)(*param_1 + 0x1c + iVar2) = param_5;
    *(int *)*param_1 = *(int *)*param_1 + 1;
  }
  return;
}

