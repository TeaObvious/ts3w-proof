/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX packed signed-byte x,z,level/mask descriptor,
   plus1stackDWORD output vector/RET4. Onehot mask1/2/4/8 writes3Vector2 points: two tile corners
   then centre(+.5,+.5), order -Z,+X,+Z,-X. Invalid/nononehot selector clears vector end to begin
   and returns; it does not throw. Managed zero-based int index and out-of-range exception are
   explicit adapter behavior. No tile-clamping inferred here.
   
   PC1.67 original static instructions. Surfacecutoutclosure: ECXpackedtilepart+1outputvector RET4,
   onehotmask1/2/4/8 givesoutercorners thencentre; invalidclearsoutputend. This WRITESgeometry and
   doesnotclassifyarbitrarypoint; formerhostQuarterOfcommentcitedwrongrole.
   ActualclassifierisAF7BC0. SharedhostCreateuseszero-basedpart adapter. */

void __thiscall TileQuarter_WriteTriangle(void *this,int *param_1)

{
  char cVar1;
  int iVar2;
  float *pfVar3;
  float fVar4;
  
  switch(*(undefined1 *)((int)this + 3)) {
  case 1:
    FUN_0062af00(param_1,3);
    cVar1 = *(char *)this;
    pfVar3 = (float *)*param_1;
    pfVar3[1] = (float)(int)*(char *)((int)this + 1);
    *pfVar3 = (float)(int)cVar1 + 1.0;
    fVar4 = (float)(int)*(char *)((int)this + 1);
    break;
  case 2:
    FUN_0062af00(param_1,3);
    cVar1 = *(char *)((int)this + 1);
    pfVar3 = (float *)*param_1;
    *pfVar3 = (float)(int)*(char *)this + 1.0;
    pfVar3[1] = (float)(int)cVar1 + 1.0;
    pfVar3 = (float *)(*param_1 + 8);
    fVar4 = (float)(int)*(char *)((int)this + 1);
    *pfVar3 = (float)(int)*(char *)this + 1.0;
    goto LAB_00ac2d72;
  default:
    param_1[1] = *param_1;
    return;
  case 4:
    FUN_0062af00(param_1,3);
    cVar1 = *(char *)this;
    pfVar3 = (float *)*param_1;
    pfVar3[1] = (float)(int)*(char *)((int)this + 1) + 1.0;
    *pfVar3 = (float)(int)cVar1;
    pfVar3 = (float *)(*param_1 + 8);
    fVar4 = (float)(int)*(char *)((int)this + 1) + 1.0;
    *pfVar3 = (float)(int)*(char *)this + 1.0;
    goto LAB_00ac2d72;
  case 8:
    FUN_0062af00(param_1,3);
    cVar1 = *(char *)this;
    pfVar3 = (float *)*param_1;
    pfVar3[1] = (float)(int)*(char *)((int)this + 1);
    *pfVar3 = (float)(int)cVar1;
    fVar4 = (float)(int)*(char *)((int)this + 1) + 1.0;
  }
  pfVar3 = (float *)(*param_1 + 8);
  *pfVar3 = (float)(int)*(char *)this;
LAB_00ac2d72:
  pfVar3[1] = fVar4;
  cVar1 = *(char *)((int)this + 1);
  iVar2 = *param_1;
  *(float *)(iVar2 + 0x10) = (float)(int)*(char *)this + 0.5;
  *(float *)(iVar2 + 0x14) = (float)(int)cVar1 + 0.5;
  return;
}

