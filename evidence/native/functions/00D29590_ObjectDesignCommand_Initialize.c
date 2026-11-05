/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. ECX allocation; plain RET returns original pointer in EAX. Calls
   D1AF00, sets primary vtable1086E68 and interface at object+8 to108708C. Initializes map sentinel
   at+54, first node+58 to that sentinel, clears+5C,+60byte,+64DWORD and writes the map label at+68.
   Only first8primary-tableDWORDs inspected; undo/redo slot identity unresolved. */

undefined4 * __fastcall ObjectDesignCommand_Initialize(undefined4 *param_1)

{
  undefined4 *puVar1;
  
  ToolUndoable_Initialize(param_1);
  *param_1 = &PTR_FUN_01086e68;
  param_1[2] = &PTR_LAB_0108708c;
  puVar1 = param_1 + 0x15;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x1a] = "World/UserToolUndoableObjectDesignMode/ChangeMap";
  param_1[0x16] = puVar1;
  *puVar1 = puVar1;
  param_1[0x17] = 0;
  *(undefined1 *)(param_1 + 0x18) = 0;
  param_1[0x19] = 0;
  return param_1;
}

