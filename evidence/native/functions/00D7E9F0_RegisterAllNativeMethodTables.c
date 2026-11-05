/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 registration path: Walks the host descriptor list at +0x1600. For each
   descriptor, calls vtable +0x10 to obtain a table, then iterates eight-byte (function pointer,
   managed-name pointer) records until a null function pointer. The pair reaches
   0x00E82820(name,function). The observed order is source code addresses 0x00D7EB1A and
   0x00D7EB31..6B; this is static PC 1.67 instruction evidence, not a runtime registration trace.
   Source: evidence/bindings/consumer-trace.md. */



/* Verified PC 1.67 registration path: Walks the host descriptor list at +0x1600. For each
   descriptor, calls vtable +0x10 to obtain a table, then iterates eight-byte (function pointer,
   managed-name pointer) records until a null function pointer. The pair reaches
   0x00E82820(name,function). The observed order is source code addresses 0x00D7EB1A and
   0x00D7EB31..6B; this is static PC 1.67 instruction evidence, not a runtime registration trace.
   Source: the canonical ASM/C pair for this function; TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined4 __fastcall RegisterAllNativeMethodTables(int *param_1)

{
  int *piVar1;
  int *piVar2;
  void *pvVar3;
  int iVar4;
  undefined4 *puVar5;
  ushort *puVar6;
  int *piVar7;
  char *pcVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  int *piStack_4;
  
  piStack_4 = param_1;
  piVar2 = (int *)FUN_005a08d0();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))(L"Scripting",10000);
  }
  pvVar3 = (void *)FUN_005a08d0();
  if (pvVar3 != (void *)0x0) {
    FUN_007352a0(pvVar3,L"Dump Mono task list",param_1 + -2,&LAB_00d72870,0);
  }
  pvVar3 = (void *)FUN_005a08d0();
  if (pvVar3 != (void *)0x0) {
    FUN_007352a0(pvVar3,L"Enable task profiling",param_1 + -2,&LAB_00d710d0,0);
  }
  pvVar3 = (void *)FUN_005a08d0();
  if (pvVar3 != (void *)0x0) {
    FUN_007352a0(pvVar3,L"Scan for new scripts",param_1 + -2,&LAB_00d710f0,0);
  }
  piVar2 = (int *)FUN_005a08d0();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))(0,0x7fffffff);
  }
  FUN_00e4e740();
  iVar4 = FUN_00e5a970("MonoEngine");
  param_1[0x2b1] = iVar4;
  if (iVar4 == 0) {
    return 0;
  }
  DAT_01235360 = ScriptCore.Animation::Animation_SetMissingAnimationCallback;
  puVar5 = FUN_00e4c280(0x1a0);
  if (puVar5 == (undefined4 *)0x0) {
    puVar5 = (undefined4 *)0x0;
  }
  else {
    puVar5[0x66] = 0;
    memset(puVar5,0,0x194);
    puVar5[0x65] = 0xffffffff;
  }
  param_1[0x2df] = (int)puVar5;
  BindManagedNameToNativeAddress
            ("ScriptCore.Simulator::MonoScriptHost_GetEnumSimpleName",&LAB_00d7ce10);
  BindManagedNameToNativeAddress
            ("ScriptCore.Simulator::MonoScriptHost_GetEnumSimpleHash",&LAB_00d7cea0);
  piVar2 = (int *)param_1[0x580];
  piStack_4 = (int *)0x0;
  if (piVar2 != param_1 + 0x580) {
    do {
      (**(code **)(*(int *)piVar2[2] + 0x10))(&piStack_4);
      iVar11 = 0;
      iVar4 = *piStack_4;
      piVar7 = piStack_4;
      while (iVar4 != 0) {
        BindManagedNameToNativeAddress((char *)piVar7[1],*piVar7);
        iVar11 = iVar11 + 1;
        piVar7 = piStack_4 + iVar11 * 2;
        iVar4 = *piVar7;
      }
      piVar2 = (int *)*piVar2;
    } while (piVar2 != param_1 + 0x580);
  }
  piVar2 = param_1 + -2;
  FUN_00d7e1a0(piVar2);
  puVar6 = FUN_00d7caf0(piVar2,"Sims3.SimIFace","ITask","get_ExecuteType");
  param_1[0x584] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"Sims3.SimIFace","ITask","set_ObjectId");
  param_1[0x585] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"Sims3.SimIFace","ITask","Simulate");
  param_1[0x586] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"Sims3.SimIFace","ITask","Stop");
  param_1[0x587] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"Sims3.SimIFace","Simulator","SignalAssembliesLoaded");
  param_1[0x588] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","LoadSaveManager","BindLoadedObject");
  param_1[0x589] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","LoadSaveManager","DisposeLoadedObject");
  param_1[0x58a] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","LoadSaveManager","LoadObjectStack");
  param_1[0x58b] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","LoadSaveManager","SaveObject");
  param_1[0x58c] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","LoadSaveManager","SaveObjectStack");
  param_1[0x58d] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","Simulator","RefObj");
  param_1[0x58e] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","Simulator","DerefObj");
  param_1[0x58f] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","ScriptProxy","get_Target");
  param_1[0x590] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","ScriptProxy","Load");
  param_1[0x591] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","ScriptProxy","PostLoad");
  param_1[0x592] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"ScriptCore","ScriptProxy","CreateLogic");
  param_1[0x593] = (int)puVar6;
  puVar6 = FUN_00d7caf0(piVar2,"System","IDisposable","Dispose");
  param_1[0x594] = (int)puVar6;
  iVar4 = FUN_00d7a090(piVar2,"ScriptCore","ScriptProxy");
  param_1[0x595] = iVar4;
  if (iVar4 == 0) {
    return 0;
  }
  piVar7 = (int *)FUN_00d7a090(piVar2,"ScriptCore","Simulator");
  if (piVar7 != (int *)0x0) {
    puVar5 = FUN_00ea2dd0((LPCRITICAL_SECTION)param_1[0x2b1],(int)piVar7);
    iVar4 = FUN_00e6fa10(piVar7,(byte *)"sSimTickCnt");
    if ((iVar4 != 0) && (puVar5 != (undefined4 *)0x0)) {
      iVar11 = FUN_00e9e030((int)puVar5);
      param_1[0x308] = iVar11 + *(int *)(iVar4 + 8);
    }
  }
  piVar7 = (int *)FUN_00d7a090(piVar2,"Sims3.Gameplay.Utilities","SimClock");
  if (piVar7 != (int *)0x0) {
    puVar5 = FUN_00ea2dd0((LPCRITICAL_SECTION)param_1[0x2b1],(int)piVar7);
    iVar4 = FUN_00e6fa10(piVar7,(byte *)"sSimTickCnt");
    if ((iVar4 != 0) && (puVar5 != (undefined4 *)0x0)) {
      iVar11 = FUN_00e9e030((int)puVar5);
      param_1[0x309] = iVar11 + *(int *)(iVar4 + 8);
    }
  }
  piVar7 = (int *)param_1[0x580];
  if (piVar7 != param_1 + 0x580) {
    do {
      piVar1 = (int *)piVar7[2];
      pcVar8 = (char *)(**(code **)(*piVar1 + 0xc))();
      if (pcVar8 != (char *)0x0) {
        FUN_00d7e010(piVar2,"ScriptCore",pcVar8);
      }
      (**(code **)(*piVar1 + 4))();
      piVar7 = (int *)*piVar7;
    } while (piVar7 != param_1 + 0x580);
  }
  uVar9 = ThreadIdentity_ReadRegisteredPumpThreadId();
  uVar10 = ThreadIdentity_ReadRemoteDispatchThreadId();
  if (uVar9 != uVar10) {
    piVar2 = JobManager_GetInterface();
    uVar10 = (**(code **)(*piVar2 + 0x14))(0x80000004,0,0xffffffff);
    param_1[0x2b0] = uVar10;
  }
  return CONCAT31((int3)(uVar10 >> 8),1);
}

