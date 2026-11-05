/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Ctor calls existing ToolUndoable_Initialize; installs
   primary01086DD8 at+0, secondary01086DD0 at+8 and01086DC4 at+50. Initializes held+58, cached+A0
   and+D8/+D9 guards to zero plus existing field defaults. Actual01086DCC callback cell is D26AC0.
   Command query implementation remains separate. */

undefined4 * __fastcall ObjectUndoable_Construct(undefined4 *param_1)

{
  undefined4 *puVar1;
  float fVar2;
  
  ToolUndoable_Initialize(param_1);
  param_1[0x14] = &PTR_LAB_01084030;
  fVar2 = FLOAT_00fab218;
  param_1[0x15] = 0;
  *param_1 = &PTR_FUN_01086dd8;
  param_1[2] = &PTR_FUN_01086dd0;
  param_1[0x14] = &PTR_LAB_01086dc4;
  param_1[0x16] = 0;
  param_1[0x18] = 0;
  param_1[0x17] = 0xffffffff;
  param_1[0x19] = fVar2;
  param_1[0x1a] = fVar2;
  param_1[0x1b] = 0;
  param_1[0x29] = 0xffffffff;
  param_1[0x28] = 0;
  *(undefined1 *)(param_1 + 0x2b) = 0;
  param_1[0x2c] = 0;
  *(undefined1 *)(param_1 + 0x2d) = 0;
  param_1[0x2e] = 0;
  param_1[0x1c] = 0;
  param_1[0x2a] = 0;
  param_1[0x31] = 0;
  param_1[0x32] = 0;
  param_1[0x33] = 0;
  puVar1 = param_1 + 0x30;
  param_1[0x35] = "World/UserToolUndoableObject/OrigVisibility";
  param_1[0x32] = 0;
  *(undefined1 *)(param_1 + 0x33) = 0;
  param_1[0x34] = 0;
  param_1[0x31] = puVar1;
  *puVar1 = puVar1;
  *(undefined1 *)(param_1 + 0x36) = 0;
  *(undefined1 *)((int)param_1 + 0xd9) = 0;
  *(undefined1 *)((int)param_1 + 0xda) = 0;
  param_1[0x37] = 0;
  param_1[0x38] = 0;
  return param_1;
}

