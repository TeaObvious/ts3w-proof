/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot+SIGNEDcount+modeWORD RET8 void. Calls floor/otherlayers; forpositivecount andmode
   lowbyte0 growsbasementatend andzero-fillsinsertedrows. Negativecount/mode0
   shrinksclampedexistingbasementdepth. Selectedvirtual4calls physically ECXlayer+count,mode,0
   stackwords purge12; localoverridesretainframe. Full lot-height/room/callbacktopology effects not
   allclosedby this selecteddata contract.
   
   Additional verified PC1.67 floor-feature path: existing flags29C andmasks2A0 callvirtual4
   ECXgrid+signedcount/mode/0 (threewordsRET0C), preserving EACH grid rawwidth/depth/levels. For
   positivecount fills newflags0 and masksFFFF. Insertionstart is0 for mode0, else the LOT PREVIOUS
   levelcountDWORD+184 (ACDB18..27), not inferred from the grid header. Thus retained grid
   dimensions and live lot dimensions are distinct even during growth. No layer is created if
   absent. Physical world min/max/origin and all otherlotlayers remain the enclosing native
   transaction; this annotation does not close everycallback/topology effect.
   
   Selected growth ownership: retained floor manager,6partitiongraphs/4room managers and optional
   raw layers are resized by their actual owners before outerlotrange is published. Floor-feature
   layers retain independentrawdimensions and use OLD LIVE levelcount for top fill as separately
   annotated. Host sparse/decoded projections cannot infer that mismatched present layers should
   silently stay unchanged. Broader deck/water/notification parity remains separate from this
   call-order fact. */

void __thiscall Lot_InsertFloorLevelsAndBasementRows(void *this,int count,dword modeBits)

{
  int iVar1;
  int *this_00;
  int count_00;
  dword modeBits_00;
  void *_Dst;
  dword *pdVar2;
  uint firstLevel;
  int iVar3;
  char cVar4;
  undefined4 *puStack_10;
  undefined4 uStack_c;
  int iStack_8;
  undefined4 uStack_4;
  
  modeBits_00 = modeBits;
  count_00 = count;
  FUN_00abc9c0(this,count,modeBits);
  FloorManager_InsertLevelLayers(*(void **)((int)this + 0x290),count_00,modeBits_00);
  if (*(int *)((int)this + 0x2d0) != 0) {
    (**(code **)(**(int **)((int)this + 0x2d0) + 4))
              (*(int **)((int)this + 0x2d0),count_00,modeBits_00,0);
  }
  if (*(int *)((int)this + 0x29c) != 0) {
    (**(code **)(**(int **)((int)this + 0x29c) + 4))
              (*(int **)((int)this + 0x29c),count_00,modeBits_00,0);
  }
  if (*(int *)((int)this + 0x2a0) != 0) {
    (**(code **)(**(int **)((int)this + 0x2a0) + 4))
              (*(int **)((int)this + 0x2a0),count_00,modeBits_00,0);
  }
  (**(code **)(**(int **)((int)this + 0x2a4) + 4))
            (*(int **)((int)this + 0x2a4),count_00,modeBits_00,0);
  PartitionManager_InsertLevelLayers(*(void **)((int)this + 0x298),count_00,modeBits_00);
  cVar4 = (char)modeBits_00;
  if (count_00 < 1) {
    if ((count_00 < 0) && (cVar4 == '\0')) {
      modeBits = *(dword *)(*(int *)((int)this + 0x2a8) + 0xc);
      count = -count_00;
      pdVar2 = &modeBits;
      if (-count_00 <= (int)modeBits) {
        pdVar2 = (dword *)&count;
      }
      if (0 < (int)*pdVar2) {
        (**(code **)(**(int **)((int)this + 0x2a8) + 4))(*(int **)((int)this + 0x2a8),-*pdVar2,1,0);
      }
    }
  }
  else {
    firstLevel = -(uint)(cVar4 != '\0') & *(uint *)((int)this + 0x184);
    if (*(void **)((int)this + 0x2d0) != (void *)0x0) {
      puStack_10 = (undefined4 *)0x0;
      uStack_c = 0;
      iStack_8 = 0;
      FUN_00acd490(*(void **)((int)this + 0x2d0),firstLevel,count_00 + -1 + firstLevel,
                   (int *)&puStack_10);
      if (puStack_10 != (undefined4 *)0x0) {
        if ((uint)((iStack_8 - (int)puStack_10 >> 3) * 8) < 0x21) {
          FUN_00adf1d0(puStack_10);
        }
        else {
          FUN_004e5e70(DAT_011cc864,(int)puStack_10);
        }
      }
    }
    iVar1 = *(int *)((int)this + 0x29c);
    if (iVar1 != 0) {
      iVar3 = *(int *)(iVar1 + 8) * *(int *)(iVar1 + 4);
      modeBits = *(dword *)(iVar1 + 0x10);
      _Dst = (void *)(iVar3 * firstLevel + modeBits);
      memset(_Dst,0,((count_00 + firstLevel) * iVar3 - (int)_Dst) + modeBits);
    }
    if (*(void **)((int)this + 0x2a0) != (void *)0x0) {
      modeBits = 0xffff;
      UInt16WorldGrid_FillLevelRange
                (*(void **)((int)this + 0x2a0),firstLevel,count_00 + -1 + firstLevel,
                 (ushort *)&modeBits);
    }
    puStack_10 = (undefined4 *)0xffffffff;
    uStack_c = 0xffffffff;
    iStack_8 = 0xffffffff;
    uStack_4 = 0xffffffff;
    FUN_00ac6150(*(void **)((int)this + 0x2a4),firstLevel,count_00 + -1 + firstLevel,&puStack_10);
    if (cVar4 == '\0') {
      this_00 = *(int **)((int)this + 0x2a8);
      iVar1 = this_00[3];
      (**(code **)(*this_00 + 4))(this_00,count_00,1,0);
      modeBits = modeBits & 0xffffff00;
      FUN_00a971a0(*(void **)((int)this + 0x2a8),iVar1,iVar1 + -1 + count_00,(byte *)&modeBits);
      return;
    }
  }
  return;
}

