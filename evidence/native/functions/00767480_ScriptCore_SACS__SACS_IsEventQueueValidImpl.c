/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS host reset contract): PC1.67 query. Resolve driver through
   global+CC=76A590. Null driver returns ALfalse. Otherwise register retained queue POINTER
   driver+12C through+C8=76AAD0 with type22hex; if returned handle is nonzero, release that
   temporary registration through+D8=76A7A0 and return ALtrue. This is NOT a lookup of an old
   numeric queue ID. 766F90 resolves the supplied queue handle to a pointer;7FFFA0 retains/releases
   that pointer. Component94D490 drains94D320 and unpublishes driver via76A6D0, so subsequent
   validity query fails driver lookup. Upper return bits unspecified. */

undefined4 ScriptCore_SACS__SACS_IsEventQueueValidImpl(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
  if (iVar2 != 0) {
    iVar2 = (**(code **)(*piVar1 + 200))(*(undefined4 *)(iVar2 + 300),0x22);
    if (iVar2 != 0) {
      uVar3 = (**(code **)(*piVar1 + 0xd8))(iVar2);
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  return 0;
}

