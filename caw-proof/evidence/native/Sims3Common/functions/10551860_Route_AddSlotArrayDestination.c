/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_AddSlotArrayDestination. Export ordinal(s):
   618. Entry VA: 0x10551860. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600016F. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl
Route_AddSlotArrayDestination
          (undefined4 param_1,undefined1 param_2,int param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,int param_7,undefined4 param_8,int param_9)

{
  uint in_EAX;
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  void *this;
  int iVar4;
  undefined4 uVar5;
  int unaff_EBX;
  int unaff_EBP;
  int *unaff_ESI;
  int *piVar6;
  undefined4 unaff_retaddr;
  int *local_18;
  uint local_14;
  uint local_10 [2];
  uint uStack_8;
  undefined4 uStack_4;
  
                    /* 0x551860  618  Route_AddSlotArrayDestination */
  if ((DAT_10c78944 != (void *)0x0) && (param_9 != 0)) {
    piVar1 = (int *)FUN_1055b120();
    local_14 = 0;
    local_10[0] = 0;
    local_18 = (int *)0x0;
    in_EAX = (**(code **)(*piVar1 + 0x6c))(param_9,&local_14,&local_18);
    if ((unaff_EBP != 0) && (0 < (int)unaff_ESI)) {
      if (param_7 != 0) {
        local_18 = (int *)0x0;
        (**(code **)(*piVar1 + 0x78))(param_7,&stack0xffffffe4,&local_18);
        if (local_18 != unaff_ESI) {
          unaff_EBX = 0;
        }
      }
      piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,uStack_8);
      in_EAX = 0;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 0x10))();
        puVar3 = (undefined4 *)FUN_105435a0((int)piVar2);
        FUN_1016b7e0(&local_18,puVar3);
        piVar6 = local_18;
        if (local_18 != (int *)0x0) {
          puVar3 = (undefined4 *)FUN_10918eb0(0x58,"Routing/SlotArrayDestination",0);
          if ((puVar3 != (undefined4 *)0x0) &&
             (this = (void *)FUN_1053fc00(puVar3), piVar6 = local_18, this != (void *)0x0)) {
            *(undefined4 *)((int)this + 0x28) = uStack_4;
            *(undefined4 *)((int)this + 0x2c) = unaff_retaddr;
            *(int *)((int)this + 0x40) = piVar2[0x10];
            *(int *)((int)this + 0x44) = piVar2[0x11];
            *(undefined4 *)((int)this + 0x48) = param_4;
            *(undefined4 *)((int)this + 0x4c) = param_5;
            if (param_3 != 0) {
              local_10[0] = 0;
              local_14 = 0;
              (**(code **)(*piVar1 + 0x78))(param_3,local_10,&local_14);
              FUN_1053c730(this,local_10[0],local_14);
            }
            piVar1 = (int *)((int)this + 0x30);
            FUN_10551680(piVar1,(uint)unaff_ESI);
            piVar6 = local_18;
            iVar4 = 0;
            if (0 < (int)unaff_ESI) {
              do {
                *(undefined4 *)(*piVar1 + iVar4 * 8) = *(undefined4 *)(unaff_EBP + iVar4 * 4);
                if (unaff_EBX != 0) {
                  *(undefined4 *)(*piVar1 + 4 + iVar4 * 8) = *(undefined4 *)(unaff_EBX + iVar4 * 4);
                }
                iVar4 = iVar4 + 1;
              } while (iVar4 < (int)unaff_ESI);
            }
            *(undefined1 *)((int)this + 0x54) = param_2;
            *(undefined4 *)((int)this + 0x50) = param_1;
            FUN_1053fac0(local_18,(int)this);
            (**(code **)(*piVar6 + 4))();
            uVar5 = (**(code **)(*piVar2 + 0x14))();
            return CONCAT31((int3)((uint)uVar5 >> 8),1);
          }
          (**(code **)(*piVar6 + 4))();
        }
        in_EAX = (**(code **)(*piVar2 + 0x14))();
      }
    }
  }
  return in_EAX & 0xffffff00;
}

