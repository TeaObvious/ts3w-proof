/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67, instruction-qualified interpretation. cdecl physically point plus output-pointer TWO WORDS/plainRET; stored C one formal omits second output at caller ESP+8 (entry, later+1C after SUB10/PUSHESI). B10B60 resolves current lot/locator; Partition manager lot+298, B47DF0/C5B860 can remap viaB47D40, B47D20 chooses B4ABD0 vsB49ED0. Only nonzero key lane+8 enters broker virtual0C. Queried interface05DE1935 pointer written to actual output, AL1. Broker ALfalse returns AL0 without release; successful broker followed by failed interface query releases virtual4 before AL0. A successful broker returning a null base enters the release branch without a further null guard, an unresolved broker invariant; decompiler ppiVar8/local_10 alias is not ABI evidence. Full manager/broker/ref failure boundaries remain open. */

undefined1 __cdecl FUN_00a619e0(float *param_1)

{
  void *this;
  char cVar1;
  bool bVar2;
  uint *puVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int *piVar6;
  int iVar7;
  int **ppiVar8;
  int *local_10;
  int local_c;
  char local_8 [8];
  
  ProductPresets_GetGlobalOwner();
  GetGlobalInterfacePointer_11D5BBC();
  local_8[0] = -1;
  local_8[1] = 0xff;
  local_8[3] = 0xff;
  local_8[4] = 0xff;
  local_8[2] = 0;
  local_8[5] = 0;
  cVar1 = FUN_00b10b60(param_1,&local_c,(undefined4 *)local_8);
  if (cVar1 == '\0') {
    return 0;
  }
  this = *(void **)(local_c + 0x298);
  puVar3 = FUN_00b47df0(this,local_8,'\0');
  uVar4 = FUN_00c5b860(puVar3);
  if ((char)uVar4 != '\0') {
    FUN_00b47d40(this,local_8,(undefined4 *)local_8);
  }
  bVar2 = PartitionManager_HasPhysicalWallForLocator(this,local_8);
  if (bVar2) {
    puVar5 = FUN_00b4abd0(this,local_8);
  }
  else {
    puVar5 = FUN_00b49ed0(this,local_8);
  }
  if (puVar5[2] != 0) {
    piVar6 = (int *)FUN_004afe80();
    ppiVar8 = &local_10;
    cVar1 = (**(code **)(*piVar6 + 0xc))(puVar5,ppiVar8,0,0,0,0);
    if (cVar1 != '\0') {
      if ((ppiVar8 != (int **)0x0) && (iVar7 = (*(code *)(*ppiVar8)[3])(0x5de1935), iVar7 != 0)) {
        *local_10 = iVar7;
        return 1;
      }
      (*(code *)(*ppiVar8)[1])();
    }
  }
  return 0;
}
