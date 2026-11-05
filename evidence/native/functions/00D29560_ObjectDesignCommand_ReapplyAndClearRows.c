/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. ECX command/plain RET. Calls D29390, passes the pointer stored
   at command+5C to D29230 on tree receiver command+50, then restores tree links+54/+58 to
   sentinel+54 and zeros+5C,+60byte,+64DWORD. This is reapply/clear behavior, not an inferred
   interface redo name. */

void __fastcall ObjectDesignCommand_ReapplyAndClearRows(int param_1)

{
  int iVar1;
  
  ObjectDesignCommand_ReapplyStoredRows(param_1);
  FUN_00d29230(*(undefined4 **)(param_1 + 0x5c));
  iVar1 = param_1 + 0x54;
  *(int *)(param_1 + 0x58) = iVar1;
  *(int *)iVar1 = iVar1;
  *(undefined4 *)(param_1 + 0x5c) = 0;
  *(undefined1 *)(param_1 + 0x60) = 0;
  *(undefined4 *)(param_1 + 100) = 0;
  return;
}

