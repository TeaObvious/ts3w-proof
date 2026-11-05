/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67 bounded physical function. SPT2 initializer adapter. Four physical stack words:
   owner, chunk stream, opaque context, byte-order word. Adjusts nonnull owner by -8 into ECX and
   calls the TREE initializer with three words; RET10, AL success only. No foreign context type
   inferred. The stored decompiler signature is inferred and is not an independently established
   foreign prototype. Full owned range 00715b20..00715b5a; instruction bytes unchanged. */

void TreeTemplate_InitializeOwnerFromChunk(int param_1,int *param_2,undefined4 param_3,char param_4)

{
  if (param_1 != 0) {
    TreeTemplate_InitializeTreeChunk((void *)(param_1 + -8),param_2,param_3,param_4);
    return;
  }
  TreeTemplate_InitializeTreeChunk((void *)0x0,param_2,param_3,param_4);
  return;
}

