/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: For seven mask words computes pending & ~passOverrides, applying baseline DWORDs
   only outside active override bits. Cache updated before COM call. Sampler counterpart
   handles16slots x13states. This restores omitted states after BeginTechnique; it does not reset
   every state to an invented default. */

void __thiscall RenderDevice_ApplyPendingBaselines(void *this)

{
  int iVar1;
  int *piVar2;
  uint *puVar3;
  uint uVar4;
  uint uVar5;
  int *piVar6;
  int iVar7;
  uint uVar8;
  int local_10;
  int local_8;
  
  iVar7 = 7;
  puVar3 = (uint *)((int)this + 0x7b8);
  piVar2 = (int *)((int)this + 0x160);
  piVar6 = (int *)((int)this + 0x48c);
  local_8 = 7;
  do {
    uVar4 = ~puVar3[7] & *puVar3;
    if (uVar4 == 0) {
      iVar7 = iVar7 + 0x20;
      piVar2 = piVar2 + 0x20;
      piVar6 = piVar6 + 0x20;
    }
    else {
      local_10 = 0x20;
      do {
        if (((uVar4 & 1) != 0) && (iVar1 = *piVar2, *piVar6 != iVar1)) {
          *piVar6 = iVar1;
          (**(code **)(**(int **)((int)this + 0xc) + 0xe4))(*(int **)((int)this + 0xc),iVar7,iVar1);
        }
        uVar4 = uVar4 >> 1;
        iVar7 = iVar7 + 1;
        piVar2 = piVar2 + 1;
        piVar6 = piVar6 + 1;
        local_10 = local_10 + -1;
      } while (local_10 != 0);
      *puVar3 = 0;
    }
    puVar3 = puVar3 + 1;
    local_8 = local_8 + -1;
  } while (local_8 != 0);
  piVar2 = (int *)((int)this + 0x844);
  uVar4 = 0;
  do {
    if (((*(uint *)((int)this + 0x80c) & 1 << ((byte)uVar4 & 0x1f)) != 0) &&
       (uVar5 = ~piVar2[0xe] & piVar2[0xd], uVar5 != 0)) {
      uVar8 = 0;
      piVar6 = piVar2;
      do {
        if (((uVar5 & 1) != 0) && (iVar7 = piVar6[-0xd], *piVar6 != iVar7)) {
          *piVar6 = iVar7;
          (**(code **)(**(int **)((int)this + 0xc) + 0x114))
                    (*(int **)((int)this + 0xc),uVar4,uVar8 + 1,iVar7);
        }
        uVar8 = uVar8 + 1;
        uVar5 = uVar5 >> 1;
        piVar6 = piVar6 + 1;
      } while (uVar8 < 0xd);
      piVar2[0xd] = 0;
    }
    uVar4 = uVar4 + 1;
    piVar2 = piVar2 + 0x1d;
  } while (uVar4 < 0x10);
  return;
}

