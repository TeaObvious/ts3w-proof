/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX ClipIkInfo,two stack dwords RET8.
   Matching owner namespace+ D0 stores entity pointer+C8 and its GUID+C0/C4. Matching target
   namespace index updates target+E0/E4 GUID; nonnull binding also updates+E8/EC. Namespace index is
   not a bone name; aliases share actual scene-entity identity. Full descriptor loading/version is
   bounded. */

void __thiscall ClipIkInfo_BindNamespaceEntity(void *this,int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  
  if (param_1 != 0) {
    if ((*(int *)((int)this + 0xd0) == param_1) &&
       (*(int *)((int)this + 200) = param_2, param_2 != 0)) {
      *(undefined4 *)((int)this + 0xc0) = *(undefined4 *)(param_2 + 8);
      *(undefined4 *)((int)this + 0xc4) = *(undefined4 *)(param_2 + 0xc);
    }
    if ((*(int *)((int)this + 0xa0) != *(int *)((int)this + 0xa4)) &&
       (*(int *)((int)this + 0x90) != *(int *)((int)this + 0x94))) {
      iVar1 = *(int *)((int)this + 0x94);
      *(uint *)((int)this + 0xcc) = *(uint *)((int)this + 0xcc) | 3;
      for (iVar5 = *(int *)((int)this + 0x90); iVar5 != iVar1; iVar5 = iVar5 + 0xab8) {
        iVar2 = *(int *)(iVar5 + 0xc);
        for (iVar3 = *(int *)(iVar5 + 8); iVar3 != iVar2; iVar3 = iVar3 + 0x110) {
          iVar6 = 0;
          if (-1 < *(int *)(iVar3 + 0x100)) {
            iVar6 = *(int *)(*(int *)((int)this + 0xb0) + *(int *)(iVar3 + 0x100) * 4);
          }
          if (iVar6 == param_1) {
            if (param_2 == 0) {
              uVar4 = 0;
              uVar7 = 0;
            }
            else {
              uVar4 = *(undefined4 *)(param_2 + 8);
              uVar7 = *(undefined4 *)(param_2 + 0xc);
            }
            *(undefined4 *)(iVar3 + 0xe0) = uVar4;
            *(undefined4 *)(iVar3 + 0xe4) = uVar7;
            if (param_2 != 0) {
              *(undefined4 *)(iVar3 + 0xe8) = *(undefined4 *)(param_2 + 8);
              *(undefined4 *)(iVar3 + 0xec) = *(undefined4 *)(param_2 + 0xc);
            }
          }
        }
      }
    }
  }
  return;
}

