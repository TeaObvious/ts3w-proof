/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl outKey,key, void. If key.group&F0000000
   nonzero, copy16bytes. Otherwise manager+44 tests original; on absence build candidate7D77B0
   then54E0A0 and select candidate only if manager+44 nonzero. All other paths copy original. Exact
   candidate transform/mount precedence remains54E0A0/manager consumer follow-up; do not equate with
   arbitrary current overlay group fallback. */

void __cdecl ResourceKey_CopyWithMountedCandidate(uint *outKey,uint *key)

{
  uint uVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  uint uStack_10;
  uint uStack_c;
  uint uStack_8;
  uint uStack_4;
  
  if ((key[3] & 0xf0000000) != 0) {
    uVar1 = key[1];
    *outKey = *key;
    uVar2 = key[2];
    outKey[1] = uVar1;
    uVar1 = key[3];
    outKey[2] = uVar2;
    outKey[3] = uVar1;
    return;
  }
  piVar3 = (int *)FUN_004afe80();
  if (piVar3 != (int *)0x0) {
    iVar4 = (**(code **)(*piVar3 + 0x44))(key);
    if (iVar4 == 0) {
      ResourceKey_MakeAlternate(&uStack_10,key);
      uVar5 = FUN_0054e0a0((int *)&uStack_10,(int *)key);
      if ((char)uVar5 != '\0') {
        iVar4 = (**(code **)(*piVar3 + 0x44))(&uStack_10);
        if (iVar4 != 0) {
          *outKey = uStack_10;
          outKey[1] = uStack_c;
          outKey[2] = uStack_8;
          outKey[3] = uStack_4;
          return;
        }
      }
    }
  }
  uVar1 = key[1];
  *outKey = *key;
  uVar2 = key[2];
  outKey[1] = uVar1;
  uVar1 = key[3];
  outKey[2] = uVar2;
  outKey[3] = uVar1;
  return;
}

