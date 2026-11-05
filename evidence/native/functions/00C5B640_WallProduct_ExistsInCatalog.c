/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete9instructions/25ownedbytes. One stackDWORD product-key pointer, cdecl/plainRET, no
   incoming ECX receiver. Loads catalog global011EE034 and callsC8FA20 with default-enabled
   argument1. NEG/SBB/NEG normalizes returned pointer presence into fullEAX0or1. Used by B471C0 to
   select all6graphs on missing product; this differs from testing only a caller product-type enum.
   No new catalog parser or lookup implementation, ABI/types unchanged. */

bool __cdecl WallProduct_ExistsInCatalog(uint *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00c8fa20(DAT_011ee034,param_1,'\x01');
  return iVar1 != 0;
}

