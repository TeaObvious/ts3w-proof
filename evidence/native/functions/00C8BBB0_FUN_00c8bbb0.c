/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX nativebank plus rawID, RET4 EAXproductptr/null. Walks24byte entries fromAC toB0, candidate pointer atentry10, compares 839640 DWORD08 to fullrawID, first match wins. Bank insertion/order and resource-key relationship remain open. */

undefined4 __thiscall FUN_00c8bbb0(void *this,int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)((int)this + 0xac);
  iVar1 = *(int *)((int)this + 0xb0);
  while( true ) {
    if (iVar3 == iVar1) {
      return 0;
    }
    iVar2 = FUN_00839640(*(int *)(iVar3 + 0x10));
    if (iVar2 == param_1) break;
    iVar3 = iVar3 + 0x18;
  }
  return *(undefined4 *)(iVar3 + 0x10);
}
