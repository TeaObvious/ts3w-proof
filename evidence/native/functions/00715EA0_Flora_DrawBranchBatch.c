/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX tree renderer; LODordinal pointer, instance-count pointer,
   shader slot index, RET0C. Uses branch: index buffer array+0, declaration/VB+2F8/+2FC, count+310;
   topology5. Builds borrowed40-byte indexed packet and calls ShaderDefinition_DrawSelectedTechnique
   on renderer+2A0+shaderSlot*4. Primitive count scales by instance count and batch-capacity+2F4
   using UInt32 arithmetic/division; no sample-count or alpha-test override in this wrapper. */

void __thiscall Flora_DrawBranchBatch(void *this,int *param_1,int *param_2,int param_3)

{
  int iVar1;
  undefined1 local_28 [40];
  
  iVar1 = *(int *)(*(int *)this + *param_1 * 4);
  FUN_006d0120(local_28,*(int *)((int)this + 0x2f8),*(int *)((int)this + 0x2fc),iVar1,5,0,0,
               (uint)(*(int *)(iVar1 + 0x18) * *param_2) / *(uint *)((int)this + 0x2f4));
  ShaderDefinition_DrawSelectedTechnique
            (*(void **)((int)this + param_3 * 4 + 0x2a0),&LAB_006cffc0,local_28);
  return;
}

