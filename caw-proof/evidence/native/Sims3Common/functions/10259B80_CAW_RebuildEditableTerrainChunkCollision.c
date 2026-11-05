/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Calls0x101F69C0 first with detail1 for the coarse mesh,
   then detail0 for the fine mesh; passes the coarse KD into the fine builder. Installs fine KD and
   coarse KD through0x101FAC80, publishes buffers and tile state. Native lot clipping/secondary
   vertex displacement remain separate branches in0x101F69C0. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

uint __thiscall CAW_RebuildEditableTerrainChunkCollision(void *this,int *param_1)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int *this_00;
  undefined4 *puVar4;
  uint uVar5;
  undefined4 uVar6;
  int *piStack_2c;
  int *piStack_28;
  int *piStack_24;
  int *local_20;
  int *piStack_18;
  int *piStack_14;
  short asStack_10 [2];
  short asStack_c [2];
  uint uStack_8;
  uint uStack_4;
  
  puVar4 = (undefined4 *)FUN_10918ed0(0xb0,0x10,0,"Terrain/KDTree",0);
  if (puVar4 == (undefined4 *)0x0) {
    local_20 = (int *)0x0;
  }
  else {
    local_20 = (int *)FUN_10475bf0(puVar4);
    if (local_20 != (int *)0x0) {
      (**(code **)*local_20)();
    }
  }
  puVar4 = (undefined4 *)FUN_10918ed0(0xb0,0x10,0,"Terrain/KDTree",0);
  if (puVar4 == (undefined4 *)0x0) {
    piStack_18 = (int *)0x0;
  }
  else {
    piStack_18 = (int *)FUN_10475bf0(puVar4);
    if (piStack_18 != (int *)0x0) {
      (**(code **)*piStack_18)();
    }
  }
  puVar4 = (undefined4 *)FUN_10918ed0(0x20,4,0,"Terrain/VertexBuffer",0);
  if (puVar4 == (undefined4 *)0x0) {
    piStack_24 = (int *)0x0;
  }
  else {
    piStack_24 = FUN_104135b0(puVar4);
    if (piStack_24 != (int *)0x0) {
      (**(code **)(*piStack_24 + 4))();
    }
  }
  puVar4 = (undefined4 *)FUN_10918ed0(0x24,4,0,"Terrain/IndexBuffer",0);
  if (puVar4 == (undefined4 *)0x0) {
    piStack_28 = (int *)0x0;
  }
  else {
    piStack_28 = FUN_104102c0(puVar4);
    if (piStack_28 != (int *)0x0) {
      (**(code **)(*piStack_28 + 4))();
    }
  }
  puVar4 = (undefined4 *)FUN_10918ed0(0x20,4,0,"Terrain/VertexBuffer",0);
  if (puVar4 == (undefined4 *)0x0) {
    piStack_2c = (int *)0x0;
  }
  else {
    piStack_2c = FUN_104135b0(puVar4);
    if (piStack_2c != (int *)0x0) {
      (**(code **)(*piStack_2c + 4))();
    }
  }
  puVar4 = (undefined4 *)FUN_10918ed0(0x24,4,0,"Terrain/IndexBuffer",0);
  if (puVar4 == (undefined4 *)0x0) {
    piStack_14 = (int *)0x0;
  }
  else {
    piStack_14 = FUN_104102c0(puVar4);
    if (piStack_14 != (int *)0x0) {
      (**(code **)(*piStack_14 + 4))();
    }
  }
  this_00 = param_1;
  iVar1 = param_1[4];
  iVar2 = param_1[3];
  uVar5 = CAW_TerrainBuildSectorCollision
                    (*(void **)((int)this + 0x68),iVar2,iVar1,1,piStack_2c,(undefined4 *)0x0,
                     piStack_14,(int *)0x0,local_20,(void *)0x0,&uStack_4,&uStack_8);
  if ((char)uVar5 == '\0') {
    if (piStack_14 != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_14 + 8))();
    }
    if (piStack_2c != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_2c + 8))();
    }
    if (piStack_28 != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_28 + 8))();
    }
    if (piStack_24 != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_24 + 8))();
    }
    if (piStack_18 != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_18 + 4))();
    }
    if (local_20 != (int *)0x0) {
      uVar5 = (**(code **)(*local_20 + 4))();
    }
  }
  else {
    uVar5 = CAW_TerrainBuildSectorCollision
                      (*(void **)((int)this + 0x68),iVar2,iVar1,0,piStack_24,(undefined4 *)0x0,
                       piStack_28,(int *)0x0,piStack_18,local_20,(uint *)asStack_c,
                       (uint *)asStack_10);
    if ((char)uVar5 != '\0') {
      param_1 = (int *)this_00[0x21];
      if (piStack_2c != param_1) {
        if (piStack_2c != (int *)0x0) {
          (**(code **)(*piStack_2c + 4))();
        }
        this_00[0x21] = (int)piStack_2c;
        if (param_1 != (int *)0x0) {
          (**(code **)(*param_1 + 8))();
        }
      }
      param_1 = (int *)this_00[0x22];
      if (piStack_14 != param_1) {
        if (piStack_14 != (int *)0x0) {
          (**(code **)(*piStack_14 + 4))();
        }
        this_00[0x22] = (int)piStack_14;
        if (param_1 != (int *)0x0) {
          (**(code **)(*param_1 + 8))();
        }
      }
      piVar3 = (int *)this_00[0x1f];
      if (piStack_24 != piVar3) {
        if (piStack_24 != (int *)0x0) {
          (**(code **)(*piStack_24 + 4))();
        }
        this_00[0x1f] = (int)piStack_24;
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 8))();
        }
      }
      piVar3 = (int *)this_00[0x20];
      if (piStack_28 != piVar3) {
        if (piStack_28 != (int *)0x0) {
          (**(code **)(*piStack_28 + 4))();
        }
        this_00[0x20] = (int)piStack_28;
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 8))();
        }
      }
      CAW_SetWorldTerrainTileLocalBounds
                (this_00,asStack_c[0],asStack_10[0],(int)this + 0x80,(int)this + 0x90);
      CAW_TerrainPublishSectorCollision
                (*(void **)((int)this + 100),iVar2,iVar1,piStack_18,local_20,
                 (float *)((int)this + 0x90));
      param_1 = (int *)FUN_1047dd40();
      if (param_1 != (int *)0x0) {
        piVar3 = this_00 + 0x1c;
        if ((undefined4 *)this_00[0x1c] != (undefined4 *)0x0) {
          FUN_1047e1f0(param_1,(undefined4 *)this_00[0x1c]);
        }
        puVar4 = (undefined4 *)*piVar3;
        if (puVar4 != (undefined4 *)0x0) {
          *piVar3 = 0;
          FUN_10479a60(puVar4);
        }
        FUN_101fa400(*(void **)((int)this + 100),iVar2,iVar1,piVar3);
        if (*piVar3 != 0) {
          FUN_1047e170(param_1,*piVar3,0);
        }
      }
      if ((*(int *)(*(int *)((int)this + 0x14) + 0x1b4) == 0) && (this_00[0x1d] == 0)) {
        FUN_101f4fb0(&param_1,"Terrain/Texture");
        piVar3 = param_1;
        FUN_10412ec0(param_1,this_00[5],this_00[6],1,0x24,2);
        FUN_1000c5d0(this_00 + 0x1d,(int *)&param_1);
        FUN_104117b0(piVar3,0xff80ff80);
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 8))();
        }
      }
      this_00[0x17] = this_00[0x18];
      *this_00 = 2;
      FUN_10258fe0(this,this_00);
      FUN_10258910(this,this_00,'\x01','\0');
      uVar6 = FUN_10255280(this,(int)this_00);
      if (piStack_14 != (int *)0x0) {
        uVar6 = (**(code **)(*piStack_14 + 8))();
      }
      if (piStack_2c != (int *)0x0) {
        uVar6 = (**(code **)(*piStack_2c + 8))();
      }
      if (piStack_28 != (int *)0x0) {
        uVar6 = (**(code **)(*piStack_28 + 8))();
      }
      if (piStack_24 != (int *)0x0) {
        uVar6 = (**(code **)(*piStack_24 + 8))();
      }
      if (piStack_18 != (int *)0x0) {
        uVar6 = (**(code **)(*piStack_18 + 4))();
      }
      if (local_20 != (int *)0x0) {
        uVar6 = (**(code **)(*local_20 + 4))();
      }
      return CONCAT31((int3)((uint)uVar6 >> 8),1);
    }
    if (piStack_14 != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_14 + 8))();
    }
    if (piStack_2c != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_2c + 8))();
    }
    if (piStack_28 != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_28 + 8))();
    }
    if (piStack_24 != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_24 + 8))();
    }
    if (piStack_18 != (int *)0x0) {
      uVar5 = (**(code **)(*piStack_18 + 4))();
    }
    if (local_20 != (int *)0x0) {
      uVar5 = (**(code **)(*local_20 + 4))();
      return uVar5 & 0xffffff00;
    }
  }
  return uVar5 & 0xffffff00;
}

