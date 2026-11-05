/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original DBPF index closure: PC1.67 full provenCFG245bytes B900..B9F4 repaired from
   prior33-byte body; physical thiscall ECX plus threewords RET0C. Existing out/keyRecord parameters
   retained; thirdslot opaque/ignored. Compares full key through5E6050; duplicate returns existing
   unchanged. New node copies eightDWORD key+record; first physical duplicate wins.
   
   Analyst PC1.67 original DBPF role: Hash insertion copies four keyword DWORDs and four record
   DWORDs only on missing key. Existing duplicate returns original node without overwriting.
   Physical third stack DWORD remains opaque; thiscall ECX plus three stack words RET0C. */

int * __thiscall
DbpfIndex_InsertFirstRecord(void *this,int *param_1,uint *param_2,uint ignoredStackWord)

{
  uint bucketCount;
  int *piVar1;
  uint *puVar2;
  int iVar3;
  uint uVar4;
  uint unaff_EBX;
  uint ignoredStackWord_00;
  char unaff_BP;
  uint *puVar5;
  int *piStack_8;
  uint uStack_4;
  
  ignoredStackWord_00 = param_2[3] ^ *param_2;
  bucketCount = *(uint *)((int)this + 8);
  uVar4 = ignoredStackWord_00 % bucketCount;
  iVar3 = *(int *)((int)this + 4);
  piVar1 = DbpfIndex_FindBucketNode(*(int **)(iVar3 + uVar4 * 4),(int *)param_2,ignoredStackWord_00)
  ;
  if (piVar1 == (int *)0x0) {
    HashGrowth_SelectPrimeCapacity
              ((void *)((int)this + 0x10),&piStack_8,bucketCount,*(uint *)((int)this + 0xc),1);
    puVar2 = (uint *)(**(code **)(**(int **)((int)this + 0x1c) + 8))
                               (0x28,*(undefined4 *)((int)this + 0x24),
                                *(undefined4 *)((int)this + 0x20));
    if (puVar2 != (uint *)0x0) {
      puVar5 = puVar2;
      for (iVar3 = 8; iVar3 != 0; iVar3 = iVar3 + -1) {
        *puVar5 = *param_2;
        param_2 = param_2 + 1;
        puVar5 = puVar5 + 1;
      }
    }
    puVar2[8] = 0;
    if (unaff_BP != '\0') {
      uStack_4 = ignoredStackWord_00 % unaff_EBX;
      FUN_004aa9d0(this,unaff_EBX);
    }
    iVar3 = uStack_4 * 4;
    puVar2[8] = *(uint *)(iVar3 + *(int *)((int)this + 4));
    *(uint **)(iVar3 + *(int *)((int)this + 4)) = puVar2;
    *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
    *piStack_8 = (int)puVar2;
    piStack_8[1] = *(int *)((int)this + 4) + iVar3;
    *(undefined1 *)(piStack_8 + 2) = 1;
    return piStack_8;
  }
  *param_1 = (int)piVar1;
  param_1[1] = iVar3 + uVar4 * 4;
  *(undefined1 *)(param_1 + 2) = 0;
  return param_1;
}

