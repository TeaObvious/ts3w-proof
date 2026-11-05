/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 object screen-query original boundary review (2026-10-17). Complete381B109Listing. ECX
   owner and key pointer stack argument, RET4. Compare four key words; changed key stored before
   existing bounds resource request(kind736884F1). Only successful return replaces+60/+70 bounds;
   failure keeps prior bounds. Existing key/bounds command IDs73477A1C/70F3BE97, owner notification
   and conditional cleanup preserved; child resource parser/queued consumer implementation
   unexpanded. Original managed World facade and UInt64/Boolean forwarder remain authoritative. IDs,
   physical ABI, inferred prototypes/types, body/bytes/Listing/flow/references and analysis state
   remain unchanged.
   
   PC1.67 collision preparation closure: ECXModelcomponent+16bytekeypointer RET4 void. Full4keyword
   comparison; changedkey stored BEFORE replacementproxy request(kind736884F1);
   successfulquerycopies2Float4bounds at+60/+70, failure retainspriorvalues. Queues actualkey/bounds
   commands73477A1C/70F3BE97 and notifiesowner. No source-vertex AABB substitute or host lot-batch
   preparation proved. Childresourceview decoder remains sharedreader frontier. */

void __thiscall ModelComponent_ApplyResourceBoundsChange(void *this,int *param_1)

{
  bool bVar1;
  dword local_e4;
  int local_e0;
  int local_dc;
  undefined4 local_d8;
  int local_d4;
  byte local_d0 [4];
  undefined4 *local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  int local_c0;
  int local_bc;
  int local_b8;
  int local_b4;
  byte local_80 [4];
  undefined **local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if ((((*param_1 != *(int *)((int)this + 8)) || (param_1[2] != *(int *)((int)this + 0x10))) ||
      (param_1[3] != *(int *)((int)this + 0x14))) || (param_1[1] != *(int *)((int)this + 0xc))) {
    *(int *)((int)this + 8) = *param_1;
    *(int *)((int)this + 0xc) = param_1[1];
    *(int *)((int)this + 0x10) = param_1[2];
    *(int *)((int)this + 0x14) = param_1[3];
    local_dc = param_1[1];
    local_e0 = *param_1;
    local_d4 = param_1[3];
    local_d8 = 0x736884f1;
    local_e4 = 0;
    bVar1 = ModelBounds_QueryAuthoredProxy(&local_e0,&local_30,&local_e4);
    if (bVar1) {
      *(float *)((int)this + 0x60) = local_30;
      *(undefined4 *)((int)this + 100) = uStack_2c;
      *(undefined4 *)((int)this + 0x68) = uStack_28;
      *(undefined4 *)((int)this + 0x6c) = uStack_24;
      *(undefined4 *)((int)this + 0x70) = local_20;
      *(undefined4 *)((int)this + 0x74) = uStack_1c;
      *(undefined4 *)((int)this + 0x78) = uStack_18;
      *(undefined4 *)((int)this + 0x7c) = uStack_14;
    }
    local_c8 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_c4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_b8 = param_1[2];
    local_bc = param_1[1];
    local_c0 = *param_1;
    local_b4 = param_1[3];
    local_d0[0] = 0x1c;
    local_d0[1] = 0x7a;
    local_d0[2] = 0x47;
    local_d0[3] = 0x73;
    local_cc = (undefined4 *)0x0;
    RenderCommand_EnqueueIfDispatcherExists(local_d0);
    local_78 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_74 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_70 = *(undefined4 *)((int)this + 0x60);
    uStack_6c = *(undefined4 *)((int)this + 100);
    uStack_68 = *(undefined4 *)((int)this + 0x68);
    uStack_64 = *(undefined4 *)((int)this + 0x6c);
    local_60 = *(undefined4 *)((int)this + 0x70);
    uStack_5c = *(undefined4 *)((int)this + 0x74);
    uStack_58 = *(undefined4 *)((int)this + 0x78);
    uStack_54 = *(undefined4 *)((int)this + 0x7c);
    local_80[0] = 0x97;
    local_80[1] = 0xbe;
    local_80[2] = 0xf3;
    local_80[3] = 0x70;
    local_7c = &PTR_PTR_0117c9a4;
    RenderCommand_EnqueueIfDispatcherExists(local_80);
    FUN_0095eb70(*(void **)((int)this + 4));
    if (local_7c != (undefined **)0x0) {
      (**(code **)*local_7c)(&local_70);
    }
    if (local_cc != (undefined4 *)0x0) {
      (**(code **)*local_cc)(&local_c0);
    }
  }
  return;
}

