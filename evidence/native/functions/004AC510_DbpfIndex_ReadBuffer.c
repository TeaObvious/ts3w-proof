/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original DBPF index closure: PC1.67 index vtableFB3920+34, ECX index plus
   buffer/byteCount/mark-loaded RET0C; only AL success. Flags lowbits1/2/4 share T/G/instancehigh;
   ignore otherbits. End=buffer+(byteCount&~3); loop uses physical extent, not headercount. Each row
   consumes unshared keys then instancelow,offset,storedsize,memsize. Storedsize highbit controls
   OPTIONAL extraDWORD; clear bit, lowushort codec and bit16flag. Without highbit NO extraDWORD;
   codec=0 if stored==mem elseFFFF. Markloaded forces flagbyte1. First-duplicate4AB900 insert; no
   offsetFFFFFFFF filter. Native trusts boundaries; current safe reader must state explicit bounds
   policy. */

undefined4 __thiscall DbpfIndex_ReadBuffer(void *this,uint *param_1,uint param_2,char param_3)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  char cVar4;
  int *piVar5;
  uint uVar6;
  uint *puVar7;
  uint *puVar8;
  int *local_64;
  int *local_60;
  uint local_58;
  int local_4c [5];
  int *local_38;
  int *local_34;
  undefined4 local_24;
  uint local_20;
  uint local_1c;
  int *local_18;
  int *local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  puVar1 = (uint *)((int)param_1 + (param_2 & 0xfffffffc));
  uVar2 = *param_1;
  puVar8 = param_1 + 1;
  piVar5 = (int *)(uVar2 >> 2 & 0xffffff01);
  uVar6 = 0xffffffff;
  cVar4 = (char)piVar5;
  if ((uVar2 & 1) == 0) {
    local_64 = (int *)0xffffffff;
  }
  else {
    piVar5 = (int *)*puVar8;
    puVar8 = param_1 + 2;
    local_64 = piVar5;
  }
  if ((uVar2 >> 1 & 1) == 0) {
    local_60 = (int *)0xffffffff;
  }
  else {
    piVar5 = (int *)*puVar8;
    puVar8 = puVar8 + 1;
    local_60 = piVar5;
  }
  if (cVar4 != '\0') {
    uVar6 = *puVar8;
    puVar8 = puVar8 + 1;
  }
  if (puVar8 < puVar1) {
    do {
      if ((uVar2 & 1) == 0) {
        local_38 = (int *)*puVar8;
        puVar7 = puVar8 + 1;
      }
      else {
        local_38 = local_64;
        puVar7 = puVar8;
      }
      if ((uVar2 >> 1 & 1) == 0) {
        local_34 = (int *)*puVar7;
        puVar7 = puVar7 + 1;
      }
      else {
        local_34 = local_60;
      }
      local_1c = uVar6;
      if (cVar4 == '\0') {
        local_1c = *puVar7;
        puVar7 = puVar7 + 1;
      }
      local_20 = *puVar7;
      local_10 = puVar7[1];
      local_c = puVar7[2];
      local_8 = puVar7[3];
      puVar8 = puVar7 + 4;
      if ((int)local_c < 0) {
        uVar3 = *puVar8;
        puVar8 = puVar7 + 5;
        local_c = local_c & 0x7fffffff;
        local_24 = CONCAT13(local_24._3_1_,(int3)uVar3) & 0xff01ffff;
      }
      else {
        local_24._0_3_ = (uint3)(ushort)-(ushort)(local_c != local_8);
      }
      if (param_3 != '\0') {
        local_24._0_3_ = CONCAT12(1,(undefined2)local_24);
      }
      local_18 = local_38;
      local_14 = local_34;
      local_58 = local_58 & 0xffffff00;
      local_4 = local_24;
      piVar5 = DbpfIndex_InsertFirstRecord((void *)((int)this + 8),local_4c,&local_20,local_58);
    } while (puVar8 < puVar1);
  }
  return CONCAT31((int3)((uint)piVar5 >> 8),1);
}

