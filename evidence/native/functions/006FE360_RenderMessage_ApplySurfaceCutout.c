/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX receiver, FOUR physical stack DWORDs
   GUIDlow/GUIDhigh,key pointer,origin pointer; RET10h. Existing inferred three-argument C is
   incomplete. Looks up target/interface; missing target returns low AL0. Key first DWORD0 selects
   null fixup; otherwise allocation/construction may produce null. Invokes target interface
   virtual+80h, marks state through6DCC00 and releases local reference; valid-interface path returns
   AL1 even if allocation returned null. No full allocator/material lifetime inference. */

undefined4 __thiscall
RenderMessage_ApplySurfaceCutout(void *this,uint param_1,int *param_2,undefined4 *param_3)

{
  int *piVar1;
  void *this_00;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;
  int *piVar5;
  uint local_8;
  int *local_4;
  
  local_8 = param_1;
  local_4 = param_2;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&param_1,(byte *)&local_8);
  uVar4 = param_1;
  if (((param_1 != *(uint *)((int)this + 0x1028)) && (param_1 != 0)) &&
     ((int *)(param_1 - 8) != (int *)0x0)) {
    piVar1 = (int *)(**(code **)(*(int *)(param_1 - 8) + 0xc))(0x17f1d88);
    piVar2 = param_2;
    uVar4 = 0;
    if (piVar1 != (int *)0x0) {
      piVar5 = (int *)0x0;
      if (*param_2 != 0) {
        this_00 = (void *)FUN_004e4520(0x30,0x10,0,"Renderer/CutoutFixupLOD",0);
        if (this_00 != (void *)0x0) {
          piVar2 = (int *)FUN_006fe0d0(this_00,piVar2,param_3);
          if (piVar2 != (int *)0x0) {
            (**(code **)*piVar2)();
            piVar5 = piVar2;
          }
        }
      }
      (**(code **)(*piVar1 + 0x80))(piVar5,&DAT_00ff1954);
      uVar3 = FUN_006dcc00(piVar1 + 0x84);
      if (piVar5 != (int *)0x0) {
        uVar3 = (**(code **)(*piVar5 + 4))();
      }
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  return uVar4 & 0xffffff00;
}

