/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX terrain, lot stackarg. Bind floor
   manager and dimensions; alpha samples are4*lotWidth+1 by4*lotDepth+1. Read current catalog/config
   inputs; MaxPaintsPerLot default inherited from constructorFFFFFFFF, not fixed64. No literal
   Cliff-index creation in this binder.
   
   Additional paint state input: binds sample dimensions1C/20 to4*lotWidth+1 and4*lotDepth+1, then
   reads Config/MaxPaintsPerLot with currentE8 as default. The cap is a raw DWORD later compared
   unsigned in AEFF20; a caller-supplied cap mechanism does not establish the host has implemented
   every Config provider. */

undefined4 __thiscall LotTerrain_BindLot(void *this,int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  void *this_00;
  uint *puVar4;
  int iVar5;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  *(int *)((int)this + 4) = param_1;
  *(undefined1 *)this = 1;
  *(undefined4 *)((int)this + 8) = *(undefined4 *)(param_1 + 0x290);
  iVar5 = *(int *)(param_1 + 0x174);
  *(int *)((int)this + 0xc) = iVar5;
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)(param_1 + 0x178);
  iVar5 = iVar5 * 4;
  iVar2 = iVar5 + 1;
  iVar1 = *(int *)((int)this + 0x10) * 4;
  iVar3 = iVar1 + 1;
  *(int *)((int)this + 0x24) = iVar5;
  *(int *)((int)this + 0x20) = iVar3;
  *(int *)((int)this + 0x1c) = iVar2;
  *(int *)((int)this + 0x28) = iVar1;
  *(int *)((int)this + 0x2c) = iVar3 * iVar2;
  this_00 = DAT_011ee034;
  puVar4 = (uint *)FUN_00c8b430();
  local_10 = *puVar4;
  local_c = puVar4[1];
  local_8 = puVar4[2];
  local_4 = puVar4[3];
  iVar5 = FUN_00c8ee80(this_00,&local_10,'\x01');
  if (iVar5 != 0) {
    *(undefined4 *)((int)this + 0xf0) = *(undefined4 *)(iVar5 + 0xc0);
    *(undefined4 *)((int)this + 0xf4) = *(undefined4 *)(iVar5 + 0xc4);
    *(undefined4 *)((int)this + 0xf8) = *(undefined4 *)(iVar5 + 200);
    *(undefined4 *)((int)this + 0xfc) = *(undefined4 *)(iVar5 + 0xcc);
  }
  iVar5 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"MaxPaintsPerLot",*(int *)((int)this + 0xe8))
  ;
  *(int *)((int)this + 0xe8) = iVar5;
  return CONCAT31((int3)((uint)iVar5 >> 8),1);
}

