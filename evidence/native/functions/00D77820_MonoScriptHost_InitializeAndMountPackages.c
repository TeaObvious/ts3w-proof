/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */

/* Retained historical annotation 1, previous canonical/import C line 6;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* PC 1.67 inferred startup entry from bounded original bytes 0x00D77820..0x00D77B3A, preceded by
   RET/INT3 boundary. At 0x00D77907 it calls 0x00769730, which mounts scripts/simcore/gameplay
   packages; at 0x00D77930 it calls 0x00D75BB0 for managed assembly load. Name summarizes this
   observed path, not a complete contract or runtime trace. Ghidra function-body boundaries may be
   incomplete; use guides/loading/native/disassembly/00d77820.asm.txt and original PC 1.67 EXE. */



/* PC 1.67 inferred startup entry from bounded original bytes 0x00D77820..0x00D77B3A, preceded by
   RET/INT3 boundary. At 0x00D77907 it calls 0x00769730, which mounts scripts/simcore/gameplay
   packages; at 0x00D77930 it calls 0x00D75BB0 for managed assembly load. Name summarizes this
   observed path, not a complete contract or runtime trace. Ghidra function-body boundaries may be
   incomplete; use domains/loading/native/raw-disassembly/00d77820.asm.txt and original EXE SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

uint __thiscall
MonoScriptHost_InitializeAndMountPackages
          (void *this,uint param_1,short *param_2,undefined *param_3,undefined4 param_4)

{
  bool bVar1;
  char cVar2;
  void *pvVar3;
  int iVar4;
  uint uVar5;
  int *piVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  
  DAT_011d5bc8 = param_1;
  FUN_00d9a8c0();
  FUN_00e3e860();
  pvVar3 = (void *)FUN_00d82a10(0x518,"Scripting/MonoScriptHost/Args Allocator",0);
  if (pvVar3 == (void *)0x0) {
    pvVar3 = (void *)0x0;
  }
  else {
    pvVar3 = FUN_004e5ff0(pvVar3,(uint *)0x0,0,0,0,0,0);
  }
  *(void **)((int)this + 0xb64) = pvVar3;
  FUN_004e4a60(pvVar3,&LAB_00d77780,(int)this + 0xb68);
  param_1 = FUN_0058b0e0(L"SimulatorRandomSeed",0);
  if (param_1 == 0) {
    FUN_004fa9b0((int)&param_1,4);
  }
  FUN_004fab80((void *)((int)this + 0xc28),param_1);
  TreeVariation_Reseed((void *)((int)this + 0x15f0),param_1);
  LOCK();
  *(undefined4 *)((int)this + 0xc08) = 0;
  UNLOCK();
  LOCK();
  *(undefined4 *)((int)this + 0xa20) = 0;
  UNLOCK();
  iVar4 = FUN_0058ac90(L"DisableIncompleteScripts",0);
  LOCK();
  *(uint *)((int)this + 0xa24) = (uint)(iVar4 == 0);
  UNLOCK();
  bVar1 = ScriptPackages_ConfigureStartupRootsAndLoad(param_2,'\0');
  if (!bVar1) {
LAB_00d77910:
    uVar5 = (**(code **)(*(int *)this + 0x2c))();
    return uVar5 & 0xffffff00;
  }
  cVar2 = FUN_00595200();
  if (cVar2 != '\0') {
    bVar1 = MonoScriptHost_CheckCoreAssemblyResourceVersions();
    if ((!bVar1) && (param_3 != (undefined *)0x0)) {
      cVar2 = (*(code *)param_3)(param_4);
      if (cVar2 != '\0') goto LAB_00d77910;
    }
  }
  piVar6 = (int *)FUN_007693a0();
  if (piVar6 != (int *)0x0) {
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0x30290f0,0,0);
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0xd488f7a1,0,0);
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0x38e3c0e,0,0);
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0x38e3c1e,0,0);
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0x510ab98,0,0);
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0x6de4f1b,0,0);
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0x7f1da75,0,0);
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0x39e4b20,0,0);
    if (this == (void *)0x8) {
      iVar4 = 0;
    }
    else {
      iVar4 = (int)this + -4;
    }
    (**(code **)(*piVar6 + 0x24))(iVar4,0x12c0b44a,0,0);
  }
  piVar6 = (int *)MessageDispatch_GetCurrent();
  if (this == (void *)0x8) {
    iVar4 = 0;
  }
  else {
    iVar4 = (int)this + -4;
  }
  (**(code **)(*piVar6 + 0x24))(iVar4,0x30290f0,0,0);
  puVar7 = (undefined4 *)FUN_004e4500(4,"Scripting/MonoScriptHost/TaskControlHost",0);
  if (puVar7 == (undefined4 *)0x0) {
    uVar8 = 0;
  }
  else {
    uVar8 = FUN_00d83df0(puVar7);
  }
  (**(code **)(*(int *)this + 0x48))(uVar8);
  puVar7 = (undefined4 *)FUN_004e4500(4,"Scripting/MonoScriptHost/SerializerHost",0);
  if (puVar7 == (undefined4 *)0x0) {
    uVar8 = 0;
  }
  else {
    uVar8 = FUN_00d835c0(puVar7);
  }
  (**(code **)(*(int *)this + 0x48))(uVar8);
  puVar7 = (undefined4 *)FUN_004e4500(4,"Scripting/MonoScriptHost/ReflectionHost",0);
  if (puVar7 == (undefined4 *)0x0) {
    uVar8 = (**(code **)(*(int *)this + 0x48))(0);
    return CONCAT31((int3)((uint)uVar8 >> 8),1);
  }
  uVar8 = FUN_00d82f70(puVar7);
  uVar8 = (**(code **)(*(int *)this + 0x48))(uVar8);
  return CONCAT31((int3)((uint)uVar8 >> 8),1);
}

