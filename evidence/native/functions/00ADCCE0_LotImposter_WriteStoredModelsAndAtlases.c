/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 authored-lot representations comparison): Analyst original persistence role.
   ECX LOD creation owner plus four DWORD stack slots (stream context seed inputs, instance
   low/high), RET10 hex. Stack stream context begins original fixed frame+40; returned AL samples
   context status byte+14 at ADCF9D before destructor7D7990, then MOV AL,BL. Existing inferred
   local_18[8]/uStack_4 names understate the real aggregate; do not interpret status as an
   uninitialized independent success flag. Original OpenWrite7D84C0 releases prior subcontext,
   requires accumulated status and ANDs service result; failed status suppresses later opens. Exact
   three model keys type01661233 groups00B0C507/001DA7E9/001064CA use supplied instance; nonnull
   model invokes6D29E0, admitted stream closes7D7A70 then store notification virtual30. Even null
   model still closes/notifies an admitted empty stream. Five existing generated textures at
   owner+50/+68/+80/+98/+B0 use keys+58/+70/+88/+A0/+B8, write618E40 only if texture and OpenWrite
   admitted, then close/notify. This is actual original multi-resource writing/status, not current
   reader cache, aggregate GPU completion or a guarantee that every stream succeeded. Full original
   children and errors remain their owners. */

undefined1 __thiscall
LotImposter_WriteStoredModelsAndAtlases
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  bool bVar2;
  int *piVar3;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined1 local_18 [8];
  int *local_10;
  undefined1 uStack_4;
  
  FUN_007d7920(local_18,param_1,param_2);
  pvVar1 = *(void **)((int)this + 0x38);
  local_48 = param_3;
  local_44 = param_4;
  local_40 = 0x1661233;
  local_3c = 0xb0c507;
  bVar2 = ResourceStreamContext_OpenWrite(local_18,&local_48,1);
  if (bVar2) {
    if (pvVar1 != (void *)0x0) {
      FUN_006d29e0(pvVar1,local_10,(undefined8 *)&local_48);
    }
    ResourceStreamContext_Close(local_18);
    piVar3 = (int *)FUN_0072f140();
    (**(code **)(*piVar3 + 0x30))(&local_48);
  }
  pvVar1 = *(void **)((int)this + 0x3c);
  local_38 = param_3;
  local_34 = param_4;
  local_30 = 0x1661233;
  local_2c = 0x1da7e9;
  bVar2 = ResourceStreamContext_OpenWrite(local_18,&local_38,1);
  if (bVar2) {
    if (pvVar1 != (void *)0x0) {
      FUN_006d29e0(pvVar1,local_10,(undefined8 *)&local_38);
    }
    ResourceStreamContext_Close(local_18);
    piVar3 = (int *)FUN_0072f140();
    (**(code **)(*piVar3 + 0x30))(&local_38);
  }
  uStack_28 = param_3;
  pvVar1 = *(void **)((int)this + 0x40);
  uStack_24 = param_4;
  uStack_20 = 0x1661233;
  uStack_1c = 0x1064ca;
  bVar2 = ResourceStreamContext_OpenWrite(local_18,&uStack_28,1);
  if (bVar2) {
    if (pvVar1 != (void *)0x0) {
      FUN_006d29e0(pvVar1,local_10,(undefined8 *)&uStack_28);
    }
    ResourceStreamContext_Close(local_18);
    piVar3 = (int *)FUN_0072f140();
    (**(code **)(*piVar3 + 0x30))(&uStack_28);
  }
  if (*(int *)((int)this + 0x50) != 0) {
    bVar2 = ResourceStreamContext_OpenWrite(local_18,(void *)((int)this + 0x58),1);
    if (bVar2) {
      FUN_00618e40(*(void **)((int)this + 0x50),local_10,0,0);
      ResourceStreamContext_Close(local_18);
      piVar3 = (int *)FUN_0072f140();
      (**(code **)(*piVar3 + 0x30))((void *)((int)this + 0x58));
    }
  }
  if (*(int *)((int)this + 0x68) != 0) {
    bVar2 = ResourceStreamContext_OpenWrite(local_18,(void *)((int)this + 0x70),1);
    if (bVar2) {
      FUN_00618e40(*(void **)((int)this + 0x68),local_10,0,0);
      ResourceStreamContext_Close(local_18);
      piVar3 = (int *)FUN_0072f140();
      (**(code **)(*piVar3 + 0x30))((void *)((int)this + 0x70));
    }
  }
  if (*(int *)((int)this + 0x80) != 0) {
    bVar2 = ResourceStreamContext_OpenWrite(local_18,(void *)((int)this + 0x88),1);
    if (bVar2) {
      FUN_00618e40(*(void **)((int)this + 0x80),local_10,0,0);
      ResourceStreamContext_Close(local_18);
      piVar3 = (int *)FUN_0072f140();
      (**(code **)(*piVar3 + 0x30))((void *)((int)this + 0x88));
    }
  }
  if (*(int *)((int)this + 0x98) != 0) {
    bVar2 = ResourceStreamContext_OpenWrite(local_18,(void *)((int)this + 0xa0),1);
    if (bVar2) {
      FUN_00618e40(*(void **)((int)this + 0x98),local_10,0,0);
      ResourceStreamContext_Close(local_18);
      piVar3 = (int *)FUN_0072f140();
      (**(code **)(*piVar3 + 0x30))((void *)((int)this + 0xa0));
    }
  }
  if (*(int *)((int)this + 0xb0) != 0) {
    bVar2 = ResourceStreamContext_OpenWrite(local_18,(void *)((int)this + 0xb8),1);
    if (bVar2) {
      FUN_00618e40(*(void **)((int)this + 0xb0),local_10,0,0);
      ResourceStreamContext_Close(local_18);
      piVar3 = (int *)FUN_0072f140();
      (**(code **)(*piVar3 + 0x30))((void *)((int)this + 0xb8));
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return uStack_4;
}

