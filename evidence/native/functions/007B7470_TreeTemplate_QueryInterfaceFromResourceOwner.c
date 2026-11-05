/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC 1.67 bounded physical function. Resource-interface adjustment thunk: subtracts 8 from
   ECX and tail-jumps to existing template query-interface owner 007B72D0. That separately owned
   target handles the identity stack word and returns the interface pointer; no bytes from its
   shared tail belong to this thunk. The stored decompiler signature is inferred and is not an
   independently established foreign prototype. Full owned range 007b7470..007b7477; instruction
   bytes unchanged. */

void TreeTemplate_QueryInterfaceFromResourceOwner(int param_1)

{
  int in_ECX;
  
  TreeTemplate_QueryInterface((void *)(in_ECX + -8),param_1);
  return;
}

