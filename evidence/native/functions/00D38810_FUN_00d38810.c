/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction-qualified semantics. ECXundo plus locator/four key pointers/flag sixwords RET18. Flag selects retained map+58 vs+74. First use reads current four lanes (orB49E40 alternate), copies old64+new64 into retained record. Repeated use can return on exact all-four-key equality; otherwise rewrites after lanes atnode+58..97. D38060 applies before pricing. B47DF0/C5B7B0 can suppress price; catalog/preset semantic tests govern new/oldterms andD45590 result admits depreciated oldterm. Virtual30 subtotal then x87+new-old, FSTPfloat into virtual2C. Native locator/map/ref/halfwall/default/semantic preset/funds/undo completion remain child boundaries; genuine C float pointer aliases are not stored floats. */

void __thiscall
FUN_00d38810(void *this,int *param_1,uint *param_2,int *param_3,_GUID *param_4,_GUID *param_5,
            char param_6)

{
  void *this_00;
  bool bVar1;
  uint *puVar2;
  undefined4 *puVar3;
  int *piVar4;
  uint *puVar5;
  undefined4 uVar6;
  undefined *product;
  int iVar7;
  float10 fVar8;
  void *local_110;
  float local_10c;
  float local_108;
  void *local_104;
  uint local_100 [4];
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  int local_d0;
  int local_cc;
  int local_c8;
  int local_c4;
  uint local_c0 [16];
  uint local_80 [16];
  uint local_40 [16];
  
  FUN_00afba70(local_100);
  this_00 = *(void **)(*(int *)((int)this + 0x50) + 0x298);
  if (param_6 == '\0') {
    local_110 = (void *)((int)this + 0x58);
  }
  else {
    local_110 = (void *)((int)this + 0x74);
  }
  local_104 = this_00;
  FUN_00c4c900(local_110,(int *)&local_108,(char *)param_1);
  if (local_108 == (float)((int)local_110 + 4)) {
    FUN_00afbb10(local_c0,param_2,param_3,&param_4->Data1,&param_5->Data1);
    if (param_6 == '\0') {
      puVar2 = WallPatternSide_ReadResourceKey(this_00,(char *)param_1);
      local_100[0] = *puVar2;
      local_100[1] = puVar2[1];
      local_100[2] = puVar2[2];
      local_100[3] = puVar2[3];
      puVar3 = FUN_00b4aa50(this_00,(char *)param_1);
      local_f0 = *puVar3;
      local_ec = puVar3[1];
      local_e8 = puVar3[2];
      local_e4 = puVar3[3];
      puVar3 = FUN_00b4ab10(this_00,(char *)param_1);
      local_e0 = *puVar3;
      local_dc = puVar3[1];
      local_d8 = puVar3[2];
      local_d4 = puVar3[3];
      piVar4 = FUN_00b4abd0(this_00,(char *)param_1);
      local_d0 = *piVar4;
      local_cc = piVar4[1];
      local_c8 = piVar4[2];
      local_c4 = piVar4[3];
    }
    else {
      FUN_00b49e40(this_00,(char *)param_1,local_100);
    }
    puVar2 = local_100;
    puVar5 = local_80;
    for (iVar7 = 0x10; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar5 = *puVar2;
      puVar2 = puVar2 + 1;
      puVar5 = puVar5 + 1;
    }
    puVar2 = local_c0;
    puVar5 = local_40;
    for (iVar7 = 0x10; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar5 = *puVar2;
      puVar2 = puVar2 + 1;
      puVar5 = puVar5 + 1;
    }
    puVar5 = (uint *)FUN_00d38750(local_110,param_1);
    puVar2 = local_80;
    for (iVar7 = 0x20; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar5 = *puVar2;
      puVar2 = puVar2 + 1;
      puVar5 = puVar5 + 1;
    }
    *(byte *)((int)this + 0x91) = *(byte *)((int)this + 0x91) | -2 < *(char *)((int)param_1 + 2);
  }
  else {
    puVar2 = (uint *)((int)local_108 + 0x58);
    puVar5 = local_100;
    for (iVar7 = 0x10; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar5 = *puVar2;
      puVar2 = puVar2 + 1;
      puVar5 = puVar5 + 1;
    }
    if (((((((*(uint *)((int)local_108 + 0x58) == *param_2) &&
            (*(uint *)((int)local_108 + 0x60) == param_2[2])) &&
           (*(uint *)((int)local_108 + 100) == param_2[3])) &&
          ((*(uint *)((int)local_108 + 0x5c) == param_2[1] &&
           (*(int *)((int)local_108 + 0x68) == *param_3)))) &&
         ((*(int *)((int)local_108 + 0x70) == param_3[2] &&
          ((*(int *)((int)local_108 + 0x74) == param_3[3] &&
           (*(int *)((int)local_108 + 0x6c) == param_3[1])))))) &&
        (iVar7 = _AfxIsEqualGUID((_GUID *)((int)local_108 + 0x78),param_4), (char)iVar7 != '\0')) &&
       (iVar7 = _AfxIsEqualGUID((_GUID *)((int)local_108 + 0x88),param_5), (char)iVar7 != '\0')) {
      return;
    }
    *(uint *)((int)local_108 + 0x58) = *param_2;
    *(uint *)((int)local_108 + 0x5c) = param_2[1];
    *(uint *)((int)local_108 + 0x60) = param_2[2];
    *(uint *)((int)local_108 + 100) = param_2[3];
    *(int *)((int)local_108 + 0x68) = *param_3;
    *(int *)((int)local_108 + 0x6c) = param_3[1];
    *(int *)((int)local_108 + 0x70) = param_3[2];
    *(int *)((int)local_108 + 0x74) = param_3[3];
    *(ulong *)((int)local_108 + 0x78) = param_4->Data1;
    *(undefined4 *)((int)local_108 + 0x7c) = *(undefined4 *)&param_4->Data2;
    *(undefined4 *)((int)local_108 + 0x80) = *(undefined4 *)param_4->Data4;
    *(undefined4 *)((int)local_108 + 0x84) = *(undefined4 *)(param_4->Data4 + 4);
    *(ulong *)((int)local_108 + 0x88) = param_5->Data1;
    *(undefined4 *)((int)local_108 + 0x8c) = *(undefined4 *)&param_5->Data2;
    *(undefined4 *)((int)local_108 + 0x90) = *(undefined4 *)param_5->Data4;
    *(undefined4 *)((int)local_108 + 0x94) = *(undefined4 *)(param_5->Data4 + 4);
  }
  FUN_00d38060(this,param_2,param_3,&param_4->Data1,&param_5->Data1,(char *)param_1,param_6);
  local_110 = (void *)0x0;
  local_108 = 0.0;
  puVar2 = FUN_00b47df0(local_104,(char *)param_1,'\0');
  uVar6 = FUN_00c5b7b0(puVar2);
  if ((char)uVar6 != '\0') goto LAB_00d38bed;
  if ((((*param_2 == local_100[0]) && (param_2[2] == local_100[2])) && (param_2[3] == local_100[3]))
     && (param_2[1] == local_100[1])) {
    uVar6 = FUN_00a623d0((int *)param_5,&local_d0);
    bVar1 = false;
    if ((char)uVar6 == '\0') goto LAB_00d38b49;
  }
  else {
LAB_00d38b49:
    bVar1 = true;
    local_10c = 0.0;
    product = PatternCatalog_LookupBankProduct(DAT_011ee034,2,param_2,'\x01');
    if (product != (undefined *)0x0) {
      fVar8 = CatalogPrice_ForwardDisplayPrice(product);
      local_10c = (float)fVar8;
    }
    local_110 = (void *)local_10c;
  }
  FUN_00afba70(local_c0);
  FUN_00d45590(*(int *)((int)this + 0x50),(char *)param_1,local_c0,param_6);
  if (((bVar1) && (*param_2 == local_c0[0])) &&
     ((param_2[2] == local_c0[2] && ((param_2[3] == local_c0[3] && (param_2[1] == local_c0[1]))))))
  {
    local_104 = (void *)CONCAT31(local_104._1_3_,*(char *)((int)this + 0x4c));
    fVar8 = FUN_00d37f70(local_100,*(char *)((int)this + 0x4c));
    local_108 = (float)fVar8;
  }
LAB_00d38bed:
  fVar8 = (float10)(**(code **)(*(int *)this + 0x30))();
  (**(code **)(*(int *)this + 0x2c))
            ((float)((fVar8 + (float10)(float)local_110) - (float10)local_108));
  return;
}
