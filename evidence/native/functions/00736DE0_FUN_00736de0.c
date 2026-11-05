/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


undefined4 * __fastcall FUN_00736de0(undefined4 *param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  void *this;
  
  *param_1 = &PTR_LAB_00fff058;
  FUN_004b3580(param_1 + 2,0);
  param_1[0x76] = &PTR_LAB_00fb3ccc;
  *param_1 = &PTR_ResourceSystem_LoadAndQueryInterface_00fff360;
  param_1[2] = &PTR_LAB_00fff2c0;
  param_1[0x76] = &PTR_LAB_00fff2b4;
  param_1[0x77] = 0;
  param_1[0x78] = 0;
  param_1[0x79] = 0;
  param_1[0x7a] = &PTR_LAB_00fd92b0;
  param_1[0x7b] = 0x6b20c4f3;
  *(undefined1 *)(param_1 + 0x7c) = 0;
  *(undefined1 *)((int)param_1 + 0x1f1) = 1;
  param_1[0x7d] = 0;
  param_1[0x7e] = 0;
  param_1[0x7f] = 0;
  param_1[0x80] = "ResourceSystem/DatabaseShadowWatchers";
  param_1[0x81] = 0;
  param_1[0x82] = 0;
  param_1[0x83] = 0;
  param_1[0x84] = "ResourceSystem/DatabaseShadowWatchersSignaled";
  FUN_004e1cf0(param_1 + 0x86,(char *)0x0,'\x01');
  FUN_004e1cf0(param_1 + 0x92,(char *)0x0,'\x01');
  FUN_004e1cf0(param_1 + 0x9e,(char *)0x0,'\x01');
  param_1[0xaa] = 0;
  param_1[0xab] = 0;
  param_1[0xac] = 0;
  param_1[0xad] = "ResourceSystem/DatabaseInfoList";
  param_1[0xae] = 0;
  param_1[0xaf] = 0;
  param_1[0xb0] = 0;
  param_1[0xb1] = "ResourceSystem/DatabaseShadows";
  ElapsedClock_ConstructAndOptionallyStart(param_1 + 0xb2,4,'\0');
  param_1[0xba] = "ResourceSystem/LazyFlushQueue";
  puVar1 = param_1 + 0xb8;
  *puVar1 = puVar1;
  param_1[0xb9] = puVar1;
  puVar1 = param_1 + 0xc0;
  param_1[0xbf] = puVar1;
  param_1[0xbc] = puVar1;
  param_1[0xbb] = puVar1;
  param_1[0xbd] = param_1 + 0x142;
  *(undefined2 *)puVar1 = 0;
  puVar1 = param_1 + 0x147;
  param_1[0xbe] = "EASTL fixed_string";
  param_1[0x146] = puVar1;
  param_1[0x143] = puVar1;
  param_1[0x142] = puVar1;
  param_1[0x144] = param_1 + 0x1c9;
  *(undefined2 *)puVar1 = 0;
  param_1[0x145] = "EASTL fixed_string";
  param_1[0x1c9] = 0;
  param_1[0x1ca] = 0;
  param_1[0x1cb] = 0;
  param_1[0x1cc] = "ResourceSystem/DDFPathInfo";
  param_1[0x1cd] = 0;
  param_1[0x1ce] = 0;
  param_1[0x1cf] = 0;
  param_1[0x1d0] = "ResourceSystem/CfgFileInfo";
  param_1[0x1d4] = "ResourceSystem";
  param_1[0x1d1] = &DAT_011c8e54;
  param_1[0x1d2] = &DAT_011c8e54;
  param_1[0x1d3] = &DAT_011c8e56;
  puVar1 = param_1 + 0x1d6;
  param_1[0x1d8] = "Debug/HashTables";
  *puVar1 = puVar1;
  param_1[0x1d7] = puVar1;
  *(undefined1 *)(param_1 + 0x1d9) = 0;
  FUN_007305d0(param_1 + 0x1da);
  param_1[0x1fc] = 0;
  param_1[0x1fd] = 0;
  param_1[0x1fe] = 0;
  param_1[0x1ff] = 0;
  param_1[0x200] = 0;
  param_1[0x201] = 0;
  param_1[0x202] = 0;
  piVar2 = (int *)FUN_005a08d0();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))(L"Streaming",10000);
  }
  this = (void *)FUN_005a08d0();
  if (this != (void *)0x0) {
    FUN_007352a0(this,L"Save streaming config",param_1,&LAB_00733d50,0);
  }
  piVar2 = (int *)FUN_005a08d0();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))(0,0x7fffffff);
  }
  return param_1;
}

