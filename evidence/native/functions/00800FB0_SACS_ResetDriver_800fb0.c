/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 driver Reset clears each walker state, sets source walker byte +0x71 to 1, runs forced
   callback cleanup at 0x008006A0, then clears +0x71. Bridge callbacks release destination on this
   path. It also clears driver error byte +0x145. This does not establish general driver disposal
   behavior. Raw proof:
   /home/lego/WorldTool/build/ts3w-proof-20261012/sacs/raw/source-reset-800fb0.objdump.txt;
   reference SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __fastcall SACS_ResetDriver_800fb0(int param_1)

{
  int iVar1;
  void *this;
  void *this_00;
  void *pvVar2;
  void *pvVar3;
  int iVar4;
  
  iVar1 = *(int *)(param_1 + 0x14);
  iVar4 = *(int *)(param_1 + 0x10);
  if (iVar4 == iVar1) {
    *(undefined1 *)(param_1 + 0x145) = 0;
    return;
  }
  do {
    this = *(void **)(iVar4 + 4);
    this_00 = *(void **)((int)this + 8);
    if ((this_00 != (void *)0x0) &&
       (pvVar2 = (void *)FUN_00581870(this_00,'\0'), pvVar2 != (void *)0x0)) {
      pvVar3 = Object_GetComponentByMask(pvVar2,DAT_011dd484);
      if (pvVar3 != (void *)0x0) {
        (**(code **)(*(int *)((int)pvVar3 + 8) + 0x18))();
      }
      pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011e9e90);
      if (pvVar2 != (void *)0x0) {
        FUN_009436b0(pvVar2,0);
      }
      if (((byte)*(undefined4 *)((int)this_00 + 0xc) & 2) == 2) {
        SceneEntity_ReleaseOwnedProp((int)this_00);
      }
    }
    *(undefined4 *)((int)this + 0x20) = 0x40;
    *(undefined1 *)((int)this + 0xc) = 0;
    *(undefined4 *)((int)this + 0x10) = 0;
    *(undefined4 *)((int)this + 0x14) = 0;
    *(undefined4 *)((int)this + 0x18) = 0;
    *(undefined4 *)((int)this + 0x1c) = 0;
    *(undefined4 *)((int)this + 0x24) = 0;
    *(undefined4 *)((int)this + 0x28) = 0;
    FUN_00aa07d0((int)this + 0x2c);
    *(undefined1 *)((int)this + 0x68) = 0;
    LOCK();
    *(undefined4 *)((int)this + 0x6c) = 0;
    UNLOCK();
    *(undefined1 *)((int)this + 0x72) = 0;
    *(undefined1 *)((int)this + 0x73) = 0;
    *(undefined1 *)((int)this + 0x70) = 0;
    *(undefined1 *)((int)this + 0x74) = 0;
    *(undefined1 *)((int)this + 0x71) = 1;
    SACS_ForceClearWalkerCallbacks_8006a0(this,1);
    iVar4 = iVar4 + 8;
    *(undefined1 *)((int)this + 0x71) = 0;
  } while (iVar4 != iVar1);
  *(undefined1 *)(param_1 + 0x145) = 0;
  return;
}

