/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction preparation/interaction comparison): Analyst role from the
   actual CEBB90 parameter-preparation consumer, not a recovered C++ symbol. Physical cdecl five
   DWORD stack arguments: unsigned toolId, borrowed 16-byte resource-key pointer, UInt32 presetId,
   mutable parameter aggregate pointer, output context pointer; plain RET and caller stack cleanup.
   Resolve original WorldManager active GUID then typed lot before key/variant preparation; null
   manager/lot returns without this work. Dispatch uses unsigned (toolId-1)<=1E, byte selector
   CE92D4[31] and 10-target DWORD table CE92AC[40]. Actual data route tool1 to CE90DF (bank2) and
   tool2 to CE9095 (bank1); both call A63AF0 at CE90A7 with lot,key,preset,bank,outContext and test
   only AL at CE90AF. AL success copies context keys +28/+38/+18 to aggregate variant slots
   +20/+40/+60. Tool3/10/1F pass a UInt32 preset into +40 via distinct cases; other
   object/fence/railing/fireplace preparers are separate helpers, not inferred same grammar. These
   are concrete pre-factory material-parameter operations, not a proof of the project detached
   whole-lot warmup Task/generation/retry policy. Preserve exact 0201 type tag, key length10 hex,
   switch bounds and failures; upper EAX after helper calls is not a defined success value. */

void __cdecl
UserToolHost_PrepareParameters
          (undefined4 param_1,uint *param_2,uint param_3,void *param_4,void *param_5)

{
  void *pvVar1;
  void *pvVar2;
  bool bVar3;
  char cVar4;
  int *piVar5;
  int iVar6;
  undefined8 uVar7;
  uint uVar8;
  void *pvVar9;
  uint *puVar10;
  char *local_14;
  int local_10 [4];
  
  pvVar1 = DAT_011edbc4;
  if (DAT_011edbc4 == (void *)0x0) {
    return;
  }
  puVar10 = (uint *)0x0;
  uVar7 = FUN_00c5f560((int)DAT_011edbc4);
  piVar5 = WorldObjects_FindLotByGuid(pvVar1,(uint)uVar7,(uint)((ulonglong)uVar7 >> 0x20),puVar10);
  pvVar1 = param_4;
  if (piVar5 == (int *)0x0) {
    return;
  }
  if ((*(byte *)((int)param_4 + 8) & 4) != 0) {
    FUN_004f5760(param_4,'\x01');
  }
  FUN_004f59c0(pvVar1,0x201,0,param_2,0x10,1);
  pvVar2 = param_5;
  switch(param_1) {
  case 1:
    iVar6 = 2;
    goto LAB_00ce909a;
  case 2:
    iVar6 = 1;
LAB_00ce909a:
    bVar3 = PatternContext_PrepareFromBankProduct((int)piVar5,param_2,param_3,iVar6,param_5);
    if (bVar3) {
      FUN_00c9fa90((void *)((int)pvVar1 + 0x20),(void *)((int)pvVar2 + 0x28));
      FUN_00c9fa90((void *)((int)pvVar1 + 0x40),(void *)((int)pvVar2 + 0x38));
      FUN_00c9fa90((void *)((int)pvVar1 + 0x60),(void *)((int)pvVar2 + 0x18));
    }
    break;
  case 3:
    Variant_AssignUInt32((void *)((int)pvVar1 + 0x40),&param_3);
    return;
  case 4:
    if (param_3 != 0) {
      cVar4 = FUN_00a63ba0((int)piVar5,param_2,param_3,param_5);
LAB_00ce9205:
      if (cVar4 != '\0') {
        FUN_00c9fa90((void *)((int)pvVar1 + 0x20),(void *)((int)pvVar2 + 0x28));
        FUN_00c9fa90((void *)((int)pvVar1 + 0x40),(void *)((int)pvVar2 + 0x38));
        local_14 = "UserTool/UserToolHost/InitUserToolParameters";
        FUN_004088f0(local_10,&local_14);
        FUN_00b0aed0((int)pvVar2 + 0x18,local_10);
LAB_00ce9254:
        FUN_004f6460((void *)((int)pvVar1 + 0x60),local_10);
        FUN_004ef8f0(local_10);
        return;
      }
    }
    break;
  case 5:
  case 6:
  case 7:
  case 9:
  case 10:
  case 0xb:
  case 0xc:
  case 0xd:
  case 0xe:
  case 0xf:
  case 0x12:
  case 0x14:
  case 0x15:
  case 0x16:
  case 0x17:
  case 0x18:
  case 0x19:
  case 0x1a:
  case 0x1b:
  case 0x1c:
  case 0x1d:
  case 0x1e:
    break;
  case 8:
    if (param_3 != 0) {
      cVar4 = FUN_00a63b20((int)piVar5,param_2,param_3,param_5);
      goto LAB_00ce9205;
    }
    break;
  case 0x10:
    Variant_AssignUInt32((void *)((int)pvVar1 + 0x40),&param_3);
    return;
  case 0x11:
    if ((param_3 != 0) && (cVar4 = FUN_00a63b80((int)piVar5,param_2,param_3,param_5), cVar4 != '\0')
       ) {
      FUN_00c9fa90((void *)((int)pvVar1 + 0x20),(void *)((int)pvVar2 + 0x28));
      FUN_00c9fa90((void *)((int)pvVar1 + 0x40),(void *)((int)pvVar2 + 0x38));
      local_14 = "UserTool/UserToolHost/InitUserToolParameters";
      FUN_004088f0(local_10,&local_14);
      FUN_00b0aed0((int)pvVar2 + 0x18,local_10);
      goto LAB_00ce9254;
    }
    break;
  case 0x13:
    iVar6 = FUN_00c8e890(DAT_011ee034,param_2,'\x01');
    pvVar2 = param_5;
    if ((param_3 != 0) && (iVar6 != 0)) {
      uVar8 = param_3;
      pvVar9 = param_5;
      puVar10 = (uint *)FUN_00c95320(iVar6);
      cVar4 = FUN_00a63ba0((int)piVar5,puVar10,uVar8,pvVar9);
      if (cVar4 != '\0') {
        FUN_00c9fa90((void *)((int)pvVar1 + 0x20),(void *)((int)pvVar2 + 0x28));
        FUN_00c9fa90((void *)((int)pvVar1 + 0x40),(void *)((int)pvVar2 + 0x38));
        local_14 = "UserTool/UserToolHost/InitUserToolParameters";
        FUN_004088f0(local_10,&local_14);
        FUN_00b0aed0((int)pvVar2 + 0x18,local_10);
        goto LAB_00ce9254;
      }
    }
    break;
  case 0x1f:
    Variant_AssignUInt32((void *)((int)pvVar1 + 0x40),&param_3);
    return;
  default:
    goto switchD_00ce908e_default;
  }
switchD_00ce908e_default:
  return;
}

