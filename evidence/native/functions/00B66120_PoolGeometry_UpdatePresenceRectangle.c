/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 static: ECX geometry plus two endpoint pointers and flag word, RET0x0C. Use
   signed-byte coordinates and high ends minus1 with existing rectangle iterator; index X*depth+Z
   and clear for flag lowbyte0, set otherwise. No added bounds/malformed-rectangle validation or
   current source admission rule is inferred. Descriptive role, not recovered symbol. */

void __thiscall
PoolGeometry_UpdatePresenceRectangle(void *this,char *param_1,char *param_2,char param_3)

{
  char *pcVar1;
  char cVar2;
  bool bVar3;
  byte bVar4;
  char *pcVar5;
  char *pcVar6;
  int iVar7;
  byte *pbVar8;
  char *pcVar9;
  char *pcVar10;
  undefined1 local_c [12];
  
  pcVar6 = param_1;
  pcVar5 = param_2;
  if (*param_1 <= *param_2) {
    pcVar5 = param_1;
  }
  pcVar1 = param_2 + 1;
  pcVar10 = param_1 + 1;
  pcVar9 = pcVar1;
  if (param_1[1] <= param_2[1]) {
    pcVar9 = pcVar10;
  }
  if (*param_1 < *param_2) {
    param_1 = param_2;
  }
  cVar2 = *param_1;
  if (*pcVar10 < *pcVar1) {
    pcVar10 = pcVar1;
  }
  param_1._3_1_ = SUB41(pcVar6,3);
  param_1._0_3_ = CONCAT12(*(undefined1 *)((int)this + 0x264),CONCAT11(*pcVar9,*pcVar5));
  param_2._3_1_ = *pcVar5 >> 7;
  param_2 = (char *)CONCAT22(CONCAT11(param_2._3_1_,*(undefined1 *)((int)this + 0x264)),
                             CONCAT11(*pcVar10 + -1,cVar2 + -1));
  FUN_00af6450(local_c,(undefined2 *)&param_1,(undefined2 *)&param_2);
  bVar3 = TilePartRectangleIterator_IsDone((int)local_c);
  cVar2 = param_3;
  while (!bVar3) {
    pcVar6 = (char *)TilePartRectangleIterator_Current((int)local_c);
    iVar7 = (int)*pcVar6 * *(int *)((int)this + 0x220) + (int)pcVar6[1];
    bVar4 = '\x01' << ((byte)iVar7 & 7);
    pbVar8 = (byte *)(*(int *)((int)this + 0x224) + (iVar7 >> 3));
    if (cVar2 == '\0') {
      *pbVar8 = *pbVar8 & ~bVar4;
    }
    else {
      *pbVar8 = *pbVar8 | bVar4;
    }
    FUN_00af6610(local_c);
    bVar3 = TilePartRectangleIterator_IsDone((int)local_c);
  }
  return;
}

