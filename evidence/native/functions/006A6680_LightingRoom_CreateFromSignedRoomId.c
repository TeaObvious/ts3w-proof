/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static original. ECX manager plus1DWORD roomID/RET4; allocates6B0bytes aligned10hex and
   returnsnull on allocation failure. Signed lowInt16 selects room metadata and
   RoomLight_IsSunnyRoom. Passes nine physical DWORD constructor slots to6A2220, including low-byte
   flags, exact manager-owned pointers and original room argument. The inferred C upper-bit
   artifacts do not change physical signed room lookup or flag widths. Native
   object/allocator/resource lifetime remains independent of the CLR worker/cache adaptation. */

void * __thiscall LightingRoom_CreateFromSignedRoomId(void *this,uint param_1)

{
  uint uVar1;
  undefined1 uVar2;
  void *pvVar3;
  short sVar4;
  uint uVar5;
  int local_8 [2];
  
  pvVar3 = (void *)FUN_004e4520(0x6b0,0x10,0,"Lighting/LightSolverRoom",0);
  uVar1 = param_1;
  if (pvVar3 != (void *)0x0) {
    sVar4 = (short)param_1;
    param_1 = (uint)sVar4;
    FUN_006a6050((void *)((int)this + 0x230),local_8,&param_1);
    if (local_8[0] == *(int *)(*(int *)((int)this + 0x234) + *(int *)((int)this + 0x238) * 4)) {
      param_1 = (uint)param_1._1_3_ << 8;
    }
    else {
      param_1 = CONCAT31(param_1._1_3_,*(undefined1 *)(local_8[0] + 0x71));
    }
    uVar5 = param_1;
    uVar2 = RoomLight_IsSunnyRoom(this,sVar4);
    pvVar3 = LightingRoom_Construct
                       (pvVar3,uVar1,*(undefined4 *)((int)this + 0x90),
                        *(undefined4 *)((int)this + 0x94),(int)this + 0x160,(int)this + 0x220,this,
                        (int)this + 0xa0,uVar2,(char)uVar5);
    return pvVar3;
  }
  return (void *)0x0;
}

