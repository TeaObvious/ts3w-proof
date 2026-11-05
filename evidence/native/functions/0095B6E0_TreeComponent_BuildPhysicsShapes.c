/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX component; one output-vector word, RET4. For
   every0x50liveprimitive writes yaw/translationMatrix plus radius=template+5C*scale;
   halfheight=(templateMaxY-templateMinY)*scale*0.5; lasttwofields=radius. Consumer collision
   admission and unknown lastfield semantics remain separate. */

void __thiscall TreeComponent_BuildPhysicsShapes(void *this,undefined4 *param_1)

{
  float fVar1;
  void *pvVar2;
  int iVar3;
  float fVar4;
  float fVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 *puVar9;
  void *this_00;
  float fVar10;
  undefined4 local_60 [23];
  
  fVar4 = *(float *)(*(int *)((int)this + 0xc) + 0x44);
  fVar5 = *(float *)(*(int *)((int)this + 0xc) + 0x34);
  param_1[1] = *param_1;
  FUN_0095b050(param_1,(*(int *)(*(int *)((int)this + 8) + 0xc) -
                       *(int *)(*(int *)((int)this + 8) + 8)) / 0x50);
  pvVar2 = *(void **)(*(int *)((int)this + 8) + 0xc);
  for (this_00 = *(void **)(*(int *)((int)this + 8) + 8); this_00 != pvVar2;
      this_00 = (void *)((int)this_00 + 0x50)) {
    fVar1 = *(float *)((int)this_00 + 0x48);
    puVar9 = (undefined4 *)param_1[1];
    fVar10 = *(float *)(*(int *)((int)this + 0xc) + 0x5c) * fVar1;
    if (puVar9 < (undefined4 *)param_1[2]) {
      param_1[1] = puVar9 + 0x14;
    }
    else {
      FUN_0095b380(param_1,puVar9,local_60);
    }
    iVar3 = param_1[1];
    puVar9 = (undefined4 *)TreePrimitive_WriteYawMatrix(this_00,local_60);
    uVar6 = puVar9[1];
    uVar7 = puVar9[2];
    uVar8 = puVar9[3];
    *(undefined4 *)(iVar3 + -0x50) = *puVar9;
    *(undefined4 *)(iVar3 + -0x4c) = uVar6;
    *(undefined4 *)(iVar3 + -0x48) = uVar7;
    *(undefined4 *)(iVar3 + -0x44) = uVar8;
    uVar6 = puVar9[5];
    uVar7 = puVar9[6];
    uVar8 = puVar9[7];
    *(undefined4 *)(iVar3 + -0x40) = puVar9[4];
    *(undefined4 *)(iVar3 + -0x3c) = uVar6;
    *(undefined4 *)(iVar3 + -0x38) = uVar7;
    *(undefined4 *)(iVar3 + -0x34) = uVar8;
    uVar6 = puVar9[9];
    uVar7 = puVar9[10];
    uVar8 = puVar9[0xb];
    *(undefined4 *)(iVar3 + -0x30) = puVar9[8];
    *(undefined4 *)(iVar3 + -0x2c) = uVar6;
    *(undefined4 *)(iVar3 + -0x28) = uVar7;
    *(undefined4 *)(iVar3 + -0x24) = uVar8;
    uVar6 = puVar9[0xd];
    uVar7 = puVar9[0xe];
    uVar8 = puVar9[0xf];
    *(undefined4 *)(iVar3 + -0x20) = puVar9[0xc];
    *(undefined4 *)(iVar3 + -0x1c) = uVar6;
    *(undefined4 *)(iVar3 + -0x18) = uVar7;
    *(undefined4 *)(iVar3 + -0x14) = uVar8;
    *(float *)(iVar3 + -0x10) = fVar10;
    *(float *)(iVar3 + -0xc) = fVar1 * (fVar4 - fVar5) * 0.5;
    *(float *)(iVar3 + -8) = fVar10;
    *(float *)(iVar3 + -4) = fVar10;
  }
  return;
}

