/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Builds the coarse display path and calls0x101FAC80 with
   both KD pointers null, installing a live raw HeightFieldShape. The initial editor and later
   adaptive rebuild paths install KD shapes; this coarse path alone does not establish unconditional
   raw-triangle world queries. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_BuildCoarseTerrainHeightField(void *this,int *param_1)

{
  int *piVar1;
  int *this_00;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int *this_01;
  int *local_14;
  short asStack_c [2];
  short asStack_8 [2];
  void *pvStack_4;
  
  this_00 = param_1;
  iVar4 = ((uint)param_1[5] >> 1) + param_1[1];
  iVar3 = ((uint)param_1[6] >> 1) + param_1[2];
  FUN_104de3a0();
  puVar2 = (undefined4 *)FUN_10918ed0(0x20,4,0,"Terrain/VertexBuffer",0);
  if (puVar2 == (undefined4 *)0x0) {
    local_14 = (int *)0x0;
  }
  else {
    local_14 = FUN_104135b0(puVar2);
    if (local_14 != (int *)0x0) {
      (**(code **)(*local_14 + 4))();
    }
  }
  puVar2 = (undefined4 *)FUN_10918ed0(0x24,4,0,"Terrain/IndexBuffer",0);
  if (puVar2 == (undefined4 *)0x0) {
    param_1 = (int *)0x0;
  }
  else {
    param_1 = FUN_104102c0(puVar2);
    if (param_1 != (int *)0x0) {
      (**(code **)(*param_1 + 4))();
    }
  }
  FUN_101f43a0(*(void **)((int)this + 0x68),local_14,param_1,iVar4,iVar3,asStack_8,asStack_c);
  CAW_SetWorldTerrainTileLocalBounds
            (this_00,asStack_8[0],asStack_c[0],(int)this + 0x80,(int)this + 0x90);
  piVar1 = (int *)this_00[0x1f];
  if (local_14 != piVar1) {
    if (local_14 != (int *)0x0) {
      (**(code **)(*local_14 + 4))();
    }
    this_00[0x1f] = (int)local_14;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))();
    }
  }
  piVar1 = (int *)this_00[0x20];
  if (param_1 != piVar1) {
    if (param_1 != (int *)0x0) {
      (**(code **)(*param_1 + 4))();
    }
    this_00[0x20] = (int)param_1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))();
    }
  }
  CAW_TerrainPublishSectorCollision
            (*(void **)((int)this + 100),iVar4,iVar3,(int *)0x0,(int *)0x0,
             (float *)((int)this + 0x90));
  pvStack_4 = (void *)FUN_1047dd40();
  if (pvStack_4 != (void *)0x0) {
    piVar1 = this_00 + 0x1c;
    if ((undefined4 *)this_00[0x1c] != (undefined4 *)0x0) {
      FUN_1047e1f0(pvStack_4,(undefined4 *)this_00[0x1c]);
    }
    puVar2 = (undefined4 *)*piVar1;
    if (puVar2 != (undefined4 *)0x0) {
      *piVar1 = 0;
      FUN_10479a60(puVar2);
    }
    FUN_101fa400(*(void **)((int)this + 100),iVar4,iVar3,piVar1);
    if (*piVar1 != 0) {
      FUN_1047e170(pvStack_4,*piVar1,0);
    }
  }
  piVar1 = (int *)this_00[0x21];
  this_01 = (int *)0x0;
  if (piVar1 != (int *)0x0) {
    this_00[0x21] = 0;
    (**(code **)(*piVar1 + 8))();
  }
  piVar1 = (int *)this_00[0x22];
  if (piVar1 != (int *)0x0) {
    this_00[0x22] = 0;
    (**(code **)(*piVar1 + 8))();
  }
  this_00[0x17] = 4;
  if (this_00[0x1d] == 0) {
    puVar2 = (undefined4 *)FUN_10918ed0(0x34,4,0,"Terrain/Texture",0);
    if ((puVar2 != (undefined4 *)0x0) && (this_01 = FUN_10412e00(puVar2), this_01 != (int *)0x0)) {
      (**(code **)(*this_01 + 4))();
    }
    FUN_10412ec0(this_01,this_00[5],this_00[6],1,0x3e,2);
    piVar1 = (int *)this_00[0x1d];
    if (this_01 != piVar1) {
      if (this_01 != (int *)0x0) {
        (**(code **)(*this_01 + 4))();
      }
      this_00[0x1d] = (int)this_01;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 8))();
      }
    }
    FUN_104117b0(this_01,0xff80ff80);
    if (this_01 != (int *)0x0) {
      (**(code **)(*this_01 + 8))();
    }
  }
  *(undefined1 *)(this_00 + 0x14) = 1;
  *this_00 = 3;
  FUN_10256710(this,this_00);
  if (((*(char *)((int)this_00 + 0x51) != '\0') || (*(char *)((int)this_00 + 0x52) != '\0')) ||
     (*(char *)((int)this_00 + 0x53) != '\0')) {
    FUN_10258910(this,this_00,'\x01','\0');
  }
  FUN_10255280(this,(int)this_00);
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 8))();
  }
  if (local_14 != (int *)0x0) {
    (**(code **)(*local_14 + 8))();
  }
  return;
}

