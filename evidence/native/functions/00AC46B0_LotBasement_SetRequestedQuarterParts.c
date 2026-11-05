/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot+packedtilepartpointer+lowbytesetflag RET8 void. Nonnegativelevel ignored. For
   requestedbits1/2/4/8 individually set/clear rawcell; requesthighbitsareignored
   andexistinghighbitsretained. Writesbyte andnotifiesFloorManagerA91AA0. Bounds/layer allocation
   areupstreamcontracts; managedimmutableWithdoesnotreproduceallnative notifications. */

void __thiscall LotBasement_SetRequestedQuarterParts(void *this,char *param_1,char param_2)

{
  char cVar1;
  char cVar2;
  byte bVar3;
  char *pcVar4;
  byte *pbVar5;
  int relativeLevel;
  
  pcVar4 = param_1;
  if (0x7f < (byte)param_1[2]) {
    cVar1 = param_1[1];
    cVar2 = *param_1;
    relativeLevel = -1 - param_1[2];
    pbVar5 = ByteTileGrid_CellPointer
                       (*(void **)((int)this + 0x2a8),(int)cVar2,(int)cVar1,relativeLevel);
    bVar3 = pcVar4[3];
    param_1 = (char *)CONCAT31(param_1._1_3_,*pbVar5);
    if ((bVar3 & 1) != 0) {
      if (param_2 == '\0') {
        param_1 = (char *)((uint)param_1 & 0xfffffffe);
      }
      else {
        param_1 = (char *)((uint)param_1 | 1);
      }
    }
    if ((bVar3 & 2) != 0) {
      if (param_2 == '\0') {
        param_1 = (char *)((uint)param_1 & 0xfffffffd);
      }
      else {
        param_1 = (char *)((uint)param_1 | 2);
      }
    }
    if ((bVar3 & 4) != 0) {
      if (param_2 == '\0') {
        param_1 = (char *)((uint)param_1 & 0xfffffffb);
      }
      else {
        param_1 = (char *)((uint)param_1 | 4);
      }
    }
    if ((bVar3 & 8) != 0) {
      if (param_2 == '\0') {
        param_1 = (char *)((uint)param_1 & 0xfffffff7);
      }
      else {
        param_1 = (char *)((uint)param_1 | 8);
      }
    }
    FloorOwnerGrid_WriteTileOwnerId
              (*(void **)((int)this + 0x2a8),(char *)&param_1,(int)cVar2,(int)cVar1,relativeLevel);
    FUN_00a91aa0(*(void **)((int)this + 0x290),pcVar4);
  }
  return;
}

