/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_HasActorImpl. Looks up driverHandle through host vtable
   +0xCC; if present calls 0x008000C0 with actorHash, otherwise returns false. This entry alone does
   not establish walker creation semantics. Raw proof:
   guides/sacs/native/disassembly/has-actor-entry-766f60.objdump.txt;
   reference . */

bool ScriptCore_SACS__SACS_HasActorImpl(undefined4 param_1)

{
  bool bVar1;
  int *piVar2;
  int iVar3;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
  if (iVar3 != 0) {
    bVar1 = FUN_008000c0(iVar3);
    return bVar1;
  }
  return false;
}

