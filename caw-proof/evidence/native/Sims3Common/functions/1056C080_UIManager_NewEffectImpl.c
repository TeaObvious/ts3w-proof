/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_NewEffectImpl. Export ordinal(s): 1137.
   Entry VA: 0x1056c080. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006D9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl UIManager_NewEffectImpl(undefined4 param_1)

{
  uint *puVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 uVar4;
  
  switch(param_1) {
  case 0:
    puVar1 = FUN_10937870(0x78,4,"Scripting/UIHost/FadeEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_109542d0(puVar1);
    break;
  case 1:
    puVar1 = FUN_10937870(0x80,4,"Scripting/UIHost/GlideEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_109553e0(puVar1);
    break;
  case 2:
    puVar1 = FUN_10937870(0xcc,4,"Scripting/UIHost/InflateEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_10964570(puVar1);
    break;
  case 3:
    puVar1 = FUN_10937870(0x7c,4,"Scripting/UIHost/ModulateEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_10966290(puVar1);
    break;
  case 4:
    puVar1 = FUN_10937870(0xa0,0x10,"Scripting/UIHost/RotateEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_10967470(puVar1);
    break;
  case 5:
    puVar1 = FUN_10937870(0x88,4,"Scripting/UIHost/GrowEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_105d7290(puVar1);
    break;
  case 6:
    puVar1 = FUN_10937870(0x28,4,"Scripting/UIHost/ControllerEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = (undefined4 *)FUN_10948340(puVar1);
    break;
  default:
    goto switchD_1056b64f_default;
  }
  if ((puVar2 != (undefined4 *)0x0) && (puVar2 = puVar2 + 4, puVar2 != (undefined4 *)0x0)) {
    piVar3 = (int *)FUN_1055b120();
    (**(code **)*puVar2)();
    uVar4 = (**(code **)(*piVar3 + 200))(puVar2,0x30);
    return uVar4;
  }
switchD_1056b64f_default:
  return 0;
}

