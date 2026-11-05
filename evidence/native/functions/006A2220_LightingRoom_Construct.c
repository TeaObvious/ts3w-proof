/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static original constructor. ECX=this plus9stackDWORDslots, including two low-byte flags;
   RET24 and EAX=this. Explicit storage labels identify LightingRoom tile/light/wall arrays.
   Initializes current quality-like fieldF4=0, prior/presented fields100/104=4 and flags164=1. The
   single guarded InteriorBuildingAmbientColor row registration also stores global01159B00 = 2 -
   (byte011D1C5D!=0), using NEG CL/SBB ECX,ECX/ADD2. Thus requested maximum is conditionally2or1,
   NOT unconditional2. Meaning and writers of opaque byte011D1C5D are not established by this
   selected slice. Global init guard01159AD8 is a plain byte, not a proved multithread once
   primitive. Array initialization/minimum capacities16tilepointers and8wallpointers, native
   allocation/ownership retained. */

void * __thiscall
LightingRoom_Construct
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined1 param_8,
          undefined1 param_9)

{
  int *piVar1;
  void *pvVar2;
  int iVar3;
  void *pvVar4;
  
  *(undefined4 *)((int)this + 4) = param_4;
  *(undefined4 *)this = param_6;
  *(undefined4 *)((int)this + 0x10) = param_2;
  *(undefined4 *)((int)this + 8) = param_5;
  *(undefined4 *)((int)this + 0xc) = param_1;
  *(undefined1 *)((int)this + 0x19) = param_9;
  *(undefined4 *)((int)this + 0x14) = param_3;
  *(undefined1 *)((int)this + 0x18) = param_8;
  FUN_0069e040((undefined4 *)((int)this + 0x30));
  *(undefined4 *)((int)this + 0xb0) = 0;
  *(undefined4 *)((int)this + 0xb4) = 0;
  *(undefined4 *)((int)this + 0xb8) = 0;
  *(char **)((int)this + 0xbc) = "Lighting/LightingRoom/mTileStorage";
  *(undefined4 *)((int)this + 200) = 0;
  *(undefined4 *)((int)this + 0xcc) = 0;
  *(undefined4 *)((int)this + 0xd0) = 0;
  *(char **)((int)this + 0xd4) = "Lighting/LightingRoom/mLightList";
  *(undefined4 *)((int)this + 0xd8) = 0;
  *(undefined4 *)((int)this + 0xdc) = 0;
  *(undefined4 *)((int)this + 0xe0) = 0;
  *(char **)((int)this + 0xe4) = "Lighting/LightingRoom/mWallStorage";
  *(undefined4 *)((int)this + 0xf8) = param_7;
  *(undefined4 *)((int)this + 0x154) = 0;
  *(undefined4 *)((int)this + 0x104) = 4;
  *(undefined4 *)((int)this + 0x100) = 4;
  *(undefined4 *)((int)this + 0x130) = 0;
  *(undefined4 *)((int)this + 0x134) = 0;
  *(undefined4 *)((int)this + 0x138) = 0;
  *(undefined4 *)((int)this + 0x13c) = 0;
  *(undefined4 *)((int)this + 0x140) = 0;
  *(undefined4 *)((int)this + 0x144) = 0;
  *(undefined4 *)((int)this + 0x148) = 0;
  *(undefined4 *)((int)this + 0x14c) = 0;
  *(undefined4 *)((int)this + 0x120) = 0;
  *(undefined4 *)((int)this + 0x124) = 0;
  *(undefined4 *)((int)this + 0x128) = 0;
  *(undefined4 *)((int)this + 300) = 0;
  *(undefined4 *)((int)this + 0x110) = 0;
  *(undefined4 *)((int)this + 0x114) = 0;
  *(undefined4 *)((int)this + 0x118) = 0;
  *(undefined4 *)((int)this + 0x11c) = 0;
  *(undefined1 *)((int)this + 0x150) = 0;
  *(undefined1 *)((int)this + 0x151) = 0;
  piVar1 = *(int **)((int)this + 0x154);
  if (piVar1 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x154) = 0;
    (**(code **)(*piVar1 + 8))();
  }
  *(undefined1 *)((int)this + 0x164) = 1;
  FUN_0069e710((int)this + 0x180);
  pvVar2 = *(void **)((int)this + 0xb0);
  if ((uint)(*(int *)((int)this + 0xb8) - (int)pvVar2 >> 2) < 0x10) {
    iVar3 = *(int *)((int)this + 0xb4);
    pvVar4 = (void *)FUN_004e4500(0x40,*(undefined4 *)((int)this + 0xbc),0);
    memmove(pvVar4,pvVar2,iVar3 - (int)pvVar2);
    if (*(void **)((int)this + 0xb0) != (void *)0x0) {
      Memory_FreeIfNonNull(*(void **)((int)this + 0xb0));
    }
    iVar3 = *(int *)((int)this + 0xb0);
    *(void **)((int)this + 0xb0) = pvVar4;
    *(void **)((int)this + 0xb4) =
         (void *)((int)pvVar4 + (*(int *)((int)this + 0xb4) - iVar3 >> 2) * 4);
    *(int *)((int)this + 0xb8) = (int)pvVar4 + 0x40;
  }
  pvVar2 = *(void **)((int)this + 0xd8);
  if ((uint)(*(int *)((int)this + 0xe0) - (int)pvVar2 >> 2) < 8) {
    iVar3 = *(int *)((int)this + 0xdc);
    pvVar4 = (void *)FUN_004e4500(0x20,*(undefined4 *)((int)this + 0xe4),0);
    memmove(pvVar4,pvVar2,iVar3 - (int)pvVar2);
    if (*(void **)((int)this + 0xd8) != (void *)0x0) {
      Memory_FreeIfNonNull(*(void **)((int)this + 0xd8));
    }
    iVar3 = *(int *)((int)this + 0xd8);
    *(void **)((int)this + 0xd8) = pvVar4;
    *(void **)((int)this + 0xdc) =
         (void *)((int)pvVar4 + (*(int *)((int)this + 0xdc) - iVar3 >> 2) * 4);
    *(int *)((int)this + 0xe0) = (int)pvVar4 + 0x20;
  }
  *(undefined1 *)((int)this + 0xe8) = 0;
  *(undefined4 *)((int)this + 0x16c) = 10;
  *(undefined4 *)((int)this + 0xf0) = 0;
  *(undefined4 *)((int)this + 0xec) = 0;
  *(undefined4 *)((int)this + 0xc0) = 0;
  *(undefined4 *)((int)this + 0xc4) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(float *)((int)this + 0x160) = 1.0;
  *(undefined4 *)((int)this + 0xf4) = 0;
  *(undefined4 *)((int)this + 0x168) = 5;
  *(undefined4 *)((int)this + 0x170) = 0;
  if (DAT_01159ad8 == '\0') {
    DAT_01159aec = ShaderParameterRegistry_RegisterNamedRow
                             (DAT_011d8530,"InteriorBuildingAmbientColor",1,2);
    DAT_01159ad8 = '\x01';
    DAT_01159b00 = 2 - (uint)(DAT_011d1c5d != '\0');
  }
  return this;
}

