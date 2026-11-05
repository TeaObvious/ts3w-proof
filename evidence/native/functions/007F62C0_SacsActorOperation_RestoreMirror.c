/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX node, four stack dwords RET10.
   VTable01020960 slot+2C (graph phase3 via007F4B50). Requires nonnull per-node data and active
   byte+0, clears that byte before operation check. For operation+54==1 resolves current actor
   entity through007F3D20 and restores byte+25 from saved dword+4!=0 under virtual lifetime guards.
   Does not free per-node data here. Body007F62C0..007F630F defined from this VTable entry, original
   instructions and terminal RET10; no bytes changed. */

void __thiscall
SacsActorOperation_RestoreMirror
          (int param_1,undefined4 param_2,void *param_3,undefined4 param_4,undefined4 *param_5)

{
  char *pcVar1;
  int *piVar2;
  
  pcVar1 = (char *)*param_5;
  if ((((pcVar1 != (char *)0x0) && (*pcVar1 != '\0')) &&
      (*pcVar1 = '\0', *(int *)(param_1 + 0x54) == 1)) &&
     (piVar2 = (int *)SacsContext_FindDefinitionActor(param_3,*(int *)(param_1 + 0x50)),
     piVar2 != (int *)0x0)) {
    (**(code **)(*piVar2 + 4))();
    *(bool *)((int)piVar2 + 0x25) = *(int *)(pcVar1 + 4) != 0;
    (**(code **)(*piVar2 + 8))();
  }
  return;
}

