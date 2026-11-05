/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Loads Default.ini, Default.local.ini, application-name.ini
   and application-name.local.ini in that order into the config registry before later resource
   initialization. LocalIni command-line overrides and alternate application names are visible
   separate caller inputs; the supported editor host supplies its explicit tool asset root.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

void __thiscall
CAW_ConfigInitializeEditorOverlays
          (void *this,undefined4 param_1,void *param_2,ushort *param_3,undefined4 param_4)

{
  ushort uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  ushort *puVar5;
  undefined4 *puVar6;
  void *this_00;
  int *piVar7;
  int unaff_EDI;
  ushort *puVar8;
  undefined *local_228;
  undefined *local_224;
  undefined2 *local_220;
  char *local_21c;
  ushort *local_218;
  undefined *local_214;
  undefined2 *local_210;
  char *local_20c;
  wchar_t local_208 [256];
  undefined2 local_8;
  
  local_20c = "Scratch/installDir";
  local_218 = (ushort *)&_Dst_10ca8244;
  local_214 = &_Dst_10ca8244;
  local_210 = &DAT_10ca8246;
  iVar3 = FUN_105c4b20(&local_218);
  if ((iVar3 < 0) || (iVar3 = thunk_FUN_105c4440(&local_218), puVar8 = local_218, iVar3 < 0)) {
    puVar8 = param_3;
  }
  local_228 = &_Dst_10ca8244;
  local_224 = &_Dst_10ca8244;
  local_21c = "Debug/ProfilerManager";
  local_220 = &DAT_10ca8246;
  uVar4 = FUN_1091ee40(param_2,(ushort *)L"LocalIni",'\0',&local_228,0);
  if ((uVar4 == 0xffffffff) &&
     (uVar4 = FUN_1091ee40(param_2,(ushort *)L"gameplayscripts",'\0',&local_228,0),
     uVar4 == 0xffffffff)) {
    uVar1 = *puVar8;
    puVar5 = puVar8;
    while (uVar1 != 0) {
      puVar5 = puVar5 + 1;
      uVar1 = *puVar5;
    }
    FUN_1001f8c0(&local_228,puVar8,(int *)(puVar8 + ((int)puVar5 - (int)puVar8 >> 1)));
  }
  else {
    FUN_105c0680((int *)&local_228,puVar8);
  }
  puVar6 = (undefined4 *)FUN_10918eb0(0xd78,"Services/ConfigManager/CrashReporter",0);
  if (puVar6 == (undefined4 *)0x0) {
    puVar6 = (undefined4 *)0x0;
  }
  else {
    puVar6 = FUN_1038bc80(puVar6);
  }
  *(undefined4 **)this = puVar6;
  if (puVar6 != (undefined4 *)0x0) {
    FUN_1038bf90(puVar6,param_1,param_2,puVar8,param_4,unaff_EDI);
  }
  this_00 = (void *)FUN_10918eb0(0x3c,"Services/Config/ConfigRegistry",0);
  if ((this_00 != (void *)0x0) && (piVar7 = FUN_1038b9b0(this_00,0), piVar7 != (int *)0x0)) {
    FUN_10389510(piVar7);
    local_8 = 0;
    FUN_10926410((int)local_208,0x103,(ushort *)L"%lsDefault.ini");
    CAW_ConfigRegistryReadIni(piVar7,local_208);
    FUN_10926410((int)local_208,0x103,(ushort *)L"%lsDefault.local.ini");
    CAW_ConfigRegistryReadIni(piVar7,local_208);
    FUN_10389dc0(piVar7,local_208);
    FUN_10926410((int)local_208,0x103,(ushort *)L"%ls%ls.ini");
    CAW_ConfigRegistryReadIni(piVar7,local_208);
    FUN_10926410((int)local_208,0x103,(ushort *)L"%ls%ls.local.ini");
    CAW_ConfigRegistryReadIni(piVar7,local_208);
    FUN_1038af20(L"Config",param_2);
  }
  piVar7 = (int *)FUN_1039a170();
  if (piVar7 != (int *)0x0) {
    (**(code **)(*piVar7 + 0x18))(L"Profiling",7000);
  }
  if (*(int *)((int)this + 4) != 0) {
    *(undefined1 *)((int)this + 0xc) = 0;
    piVar7 = (int *)FUN_1039a170();
    if (piVar7 != (int *)0x0) {
      (**(code **)(*piVar7 + 0x28))((undefined1 *)((int)this + 0xc),L"LogEnabled");
    }
    piVar7 = (int *)FUN_1039a170();
    if (piVar7 != (int *)0x0) {
      uVar2 = *(undefined4 *)((int)this + 4);
      puVar6 = (undefined4 *)FUN_10918eb0(8,"Debug/DebugVarMan/CmdCallback",0);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = &PTR_LAB_10b106c0;
        puVar6[1] = Animation_SetMissingAnimationCallback;
      }
      (**(code **)(*piVar7 + 0x58))(L"LogReconfig",uVar2,puVar6);
    }
  }
  if (*(int *)((int)this + 8) != 0) {
    *(undefined1 *)((int)this + 0xd) = 0;
    *(undefined1 *)((int)this + 0xe) = 0;
    piVar7 = (int *)FUN_1039a170();
    if (piVar7 != (int *)0x0) {
      (**(code **)(*piVar7 + 0x28))((undefined1 *)((int)this + 0xd),L"ProfileEnabled");
    }
    piVar7 = (int *)FUN_1039a170();
    if (piVar7 != (int *)0x0) {
      (**(code **)(*piVar7 + 0x28))((undefined1 *)((int)this + 0xe),L"ProfileFrames");
    }
    piVar7 = (int *)FUN_1039a170();
    if (piVar7 != (int *)0x0) {
      uVar2 = *(undefined4 *)((int)this + 8);
      puVar6 = (undefined4 *)FUN_10918eb0(8,"Debug/DebugVarMan/CmdCallback",0);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = &PTR_LAB_10b106c0;
        puVar6[1] = Animation_SetMissingAnimationCallback;
      }
      (**(code **)(*piVar7 + 0x58))(L"ProfileFrame",uVar2,puVar6);
    }
    piVar7 = (int *)FUN_1039a170();
    if (piVar7 != (int *)0x0) {
      uVar2 = *(undefined4 *)((int)this + 8);
      puVar6 = (undefined4 *)FUN_10918eb0(8,"Debug/DebugVarMan/CmdCallback",0);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = &PTR_LAB_10b106c0;
        puVar6[1] = Animation_SetMissingAnimationCallback;
      }
      (**(code **)(*piVar7 + 0x58))(L"ProfileAverages",uVar2,puVar6);
    }
    piVar7 = (int *)FUN_1039a170();
    if (piVar7 != (int *)0x0) {
      uVar2 = *(undefined4 *)((int)this + 8);
      puVar6 = (undefined4 *)FUN_10918eb0(8,"Debug/DebugVarMan/CmdCallback",0);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = &PTR_LAB_10b106c0;
        puVar6[1] = Animation_SetMissingAnimationCallback;
      }
      (**(code **)(*piVar7 + 0x58))(L"ProfileReconfig",uVar2,puVar6);
    }
  }
  piVar7 = (int *)FUN_1039a170();
  if (piVar7 != (int *)0x0) {
    (**(code **)(*piVar7 + 0x18))(0,0x7fffffff);
  }
  if ((2 < (int)((int)local_220 - (int)local_228 & 0xfffffffeU)) && (local_228 != (undefined *)0x0))
  {
    FUN_10918e90((int)local_228);
  }
  if ((2 < (int)((int)local_210 - (int)local_218 & 0xfffffffeU)) && (local_218 != (ushort *)0x0)) {
    FUN_10918e90((int)local_218);
  }
  return;
}

