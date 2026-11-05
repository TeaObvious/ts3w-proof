/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67, full241B/82 instructions checked against pristine PE. ECX receiver/four incoming stack
   DWORDs/physical RET16. Third argument null skips operation. Two registry payload writes require
   second-argument+20 bit0 clear, receiver+14 zero, receiver+0C nonnull and pointee+3D8 nonzero.
   Receiver+138/+13C become payload+28 only if nonzero and low two tag bits clear, else null. Final
   draw call pushes five outgoing arguments including a low-byte receiver+4C==1 Boolean, omitted by
   the existing decompiler callee prototype. Exact slot/map/provider identities remain unproved; no
   ABI/type correction is made. */

void __thiscall
TaggedTextureSlots_BindThenDispatch(void *this,int param_1,int param_2,void *param_3,int param_4)

{
  int iVar1;
  void *pvVar2;
  
  if (param_3 != (void *)0x0) {
    if (*(int *)(param_2 + 0xc) != 0) {
      FUN_006c96f0(*(int *)(param_2 + 0xc));
    }
    if ((*(byte *)(param_2 + 0x20) & 1) == 0) {
      if (param_4 != 0) {
        FUN_006acf60(param_4);
      }
      FUN_00a9b6c0(this,0,'\0','\0','\0','\0');
      pvVar2 = DAT_011d8530;
      if (((*(int *)((int)this + 0x14) == 0) && (*(int *)((int)this + 0xc) != 0)) &&
         (*(char *)(*(int *)((int)this + 0xc) + 0x3d8) != '\0')) {
        if (((*(uint *)((int)this + 0x138) & 3) == 0) && (*(int *)((int)this + 0x138) != 0)) {
          iVar1 = *(int *)((int)this + 0x138) + 0x28;
        }
        else {
          iVar1 = 0;
        }
        ShaderParameterRegistry_SetTexturePayload(DAT_011d8530,DAT_01183b94,iVar1);
        if (((*(uint *)((int)this + 0x13c) & 3) == 0) && (*(int *)((int)this + 0x13c) != 0)) {
          iVar1 = *(int *)((int)this + 0x13c) + 0x28;
        }
        else {
          iVar1 = 0;
        }
        ShaderParameterRegistry_SetTexturePayload(pvVar2,DAT_01183b98,iVar1);
      }
    }
    pvVar2 = *(void **)(param_2 + 0x14);
    if ((*(byte *)(param_1 + 4) & 0x80) != 0) {
      param_3 = *(void **)((int)this + 0x10c);
      pvVar2 = *(void **)((int)this + 0x110);
    }
    LotTerrain_DrawWithSelectedTechnique
              (*(void **)((int)this + 0x100),param_1,param_2,param_3,pvVar2);
  }
  return;
}

