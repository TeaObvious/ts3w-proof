/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_InitApp3D. Export ordinal(s): 1692. Entry
   VA: 0x1097db80. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009B1. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl
App3D_InitApp3D(ushort *param_1,short *param_2,int param_3,undefined4 param_4,undefined4 param_5,
               undefined4 param_6,int param_7,char param_8,undefined4 param_9,int param_10,
               short *param_11,short *param_12,undefined1 param_13)

{
  char cVar1;
  DWORD DVar2;
  undefined4 *puVar3;
  int iVar4;
  ushort *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
  int *piVar8;
  void *this;
  undefined4 uVar9;
  WCHAR *pWVar10;
  undefined *local_8e4;
  undefined *local_8e0;
  undefined2 *local_8dc;
  char *local_8d8;
  int local_8d4 [130];
  undefined1 local_6cc [520];
  undefined1 local_4c4 [648];
  int local_23c;
  undefined4 local_238;
  undefined1 local_22b;
  undefined4 local_228;
  undefined1 local_220;
  undefined1 local_21e;
  undefined4 local_21c;
  int local_218;
  undefined4 local_214;
  int local_20c;
  WCHAR local_208 [260];
  
                    /* 0x97db80  1692  App3D_InitApp3D */
  DVar2 = GetCurrentThreadId();
  FUN_105cceb0(DVar2);
  Animation_SetMissingAnimationCallback();
  FUN_109278f0((LPWSTR)&DAT_10cad710,0x3f,L"⸰⸲⸰ㄳ",0xffffffff);
  FUN_109278f0((LPWSTR)&DAT_10cad690,0x3f,(LPCWSTR)"Unknown",0xffffffff);
  FUN_109278f0((LPWSTR)&DAT_10cad610,0x3f,(LPCWSTR)"Unknown",0xffffffff);
  FUN_109278f0((LPWSTR)&DAT_10cad590,0x3f,(LPCWSTR)"2015-12-16-1153",0xffffffff);
  FUN_109278f0((LPWSTR)&DAT_10cad510,0x3f,(LPCWSTR)"Release",0xffffffff);
  FUN_103869e0((undefined2 *)local_8d4);
  local_238 = param_4;
  local_214 = param_6;
  local_21e = param_13;
  local_23c = param_3;
  local_21c = param_5;
  local_218 = param_7;
  local_22b = 0;
  local_228 = param_9;
  local_20c = param_10;
  local_220 = 0;
  if (param_2 != (short *)0x0) {
    FUN_10931e80(local_8d4,param_2,0x104);
  }
  if (param_12 != (short *)0x0) {
    FUN_10931e80(local_4c4,param_12,0x104);
  }
  if ((param_1 != (ushort *)0x0) && (*param_1 != 0)) {
    FUN_10926410((int)local_6cc,0x104,(ushort *)L"%sCache\\");
  }
  uVar9 = 0;
  puVar3 = FUN_1039b310();
  FUN_1039a180(puVar3);
  iVar4 = FUN_10910ef0(10,local_208,'\0',0x100);
  if (0 < iVar4) {
    FUN_10931f70(local_208,(short *)local_8d4,0x104);
    FUN_10931f70(local_208,&DAT_10ab4134,0x208);
  }
  pWVar10 = local_208;
  puVar5 = (ushort *)GetExePath();
  puVar6 = GetAppCommandLine();
  FUN_103890b0(&DAT_10cb7dc0,param_1,puVar6,puVar5,pWVar10);
  if (param_11 != (short *)0x0) {
    FUN_103887c0(L"AssetsLocalWorkDir",param_11);
  }
  local_8e4 = &_Dst_10ca8244;
  local_8e0 = &_Dst_10ca8244;
  local_8d8 = "Services/ErrorStr";
  local_8dc = &DAT_10ca8246;
  uVar7 = FUN_10390710(&DAT_10c726c0,&local_8e4,'\x01',(ushort *)0x0,1);
  if ((char)uVar7 == '\0') goto LAB_1097ddc0;
  uVar7 = FUN_10386ca0(local_8d4);
  if ((char)uVar7 == '\0') goto LAB_1097e01c;
  if (param_8 != '\0') {
    FUN_105168f0();
    FUN_105ddb70();
    FUN_105e2680();
    FUN_105e2400();
  }
  if (param_7 != 0) {
    FUN_1097d9c0();
  }
  if (local_20c == 0) {
    puVar3 = (undefined4 *)FUN_1038e640(0x10c726c0);
    FUN_1055d100(*puVar3,'\0',FUN_1097d4c0,0,0);
    FUN_1072c070(0);
    piVar8 = (int *)FUN_10918eb0(0x10,"World/WorldComponentsService",0);
    if (piVar8 == (int *)0x0) {
      piVar8 = (int *)0x0;
    }
    else {
      FUN_107255d0(piVar8);
      *piVar8 = (int)&PTR_FUN_10b95f54;
    }
    FUN_10725820(piVar8);
    FUN_10504f90();
  }
  iVar4 = FUN_109321d0(param_1,(ushort *)L"WorldBuilder");
  if (iVar4 == 0) {
LAB_1097deb4:
    FUN_102539e0(2);
  }
  else {
    iVar4 = FUN_109321d0(param_1,(ushort *)L"Medator");
    if (iVar4 == 0) goto LAB_1097deb4;
  }
  if (DAT_10c72d14 != (void *)0x0) {
    FUN_10399040(DAT_10c72d14,0x5922200);
  }
  cVar1 = FUN_10386a80();
  if (cVar1 != '\0') {
    piVar8 = (int *)FUN_1055b120();
    if (piVar8 != (int *)0x0) {
      (**(code **)(*piVar8 + 0x44))(0);
      (**(code **)(*piVar8 + 0x38))(1);
    }
    if (local_23c != 0) {
      FUN_104887f0(&DAT_10cad7b0,0,(undefined4 *)0x0,0);
      puVar3 = (undefined4 *)0x0;
      uVar9 = 0xefe945b2;
      this = (void *)FUN_10884a40('\x01');
      puVar3 = FUN_10895be0(this,uVar9,puVar3);
      FUN_10895a60(&DAT_10cb7b48,puVar3);
      piVar8 = FUN_108848d0('\x01');
      DAT_10cad798 = (**(code **)(*piVar8 + 0x20))(&DAT_10cb7b48,0,0,0xffff,0xffffffff,1);
    }
    uVar9 = ResourceMgr_Create();
    if (param_8 != '\0') {
      FUN_105e0ca0();
      FUN_105d9740();
      FUN_1093c3f0();
      FUN_10949dd0();
      FUN_10949df0();
      FUN_10949e10();
      FUN_1096fde0();
      FUN_10970810();
      FUN_10951130();
      FUN_10951150();
      FUN_10964be0();
      FUN_10963740();
      FUN_10967530();
      FUN_10967550();
      FUN_10955490();
      FUN_109762b0();
      FUN_10976270();
      FUN_10976290();
      FUN_10964630();
      FUN_10964650();
      FUN_1096a7f0();
      FUN_1096a810();
      FUN_1096cc50();
      FUN_1096cc70();
      FUN_1094d090();
      FUN_1094d0b0();
      FUN_1096e970();
      FUN_105dbf90();
      FUN_1056b4a0();
      FUN_1056b4f0();
      FUN_1056b540();
      FUN_10966330();
    }
LAB_1097e01c:
    FUN_1038e4b0(0x10c72638);
    FUN_1038e350(&DAT_10c72638,1);
    if ((2 < (int)((int)local_8dc - (int)local_8e4 & 0xfffffffeU)) &&
       (local_8e4 != (undefined *)0x0)) {
      FUN_10918e90((int)local_8e4);
    }
    return uVar9;
  }
LAB_1097ddc0:
  if ((2 < (int)((int)local_8dc - (int)local_8e4 & 0xfffffffeU)) && (local_8e4 != (undefined *)0x0))
  {
    FUN_10918e90((int)local_8e4);
  }
  return 0;
}

