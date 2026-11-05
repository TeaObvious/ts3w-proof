/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Loads Config InvertHorizontalRotation and InvertVerticalRotation
   through0058AE30 with fallback0 (false); stores manager+E1/+E2 and applies to gameplay controllers
   via MainCamera_ApplyRotationInversion. Missing preference values therefore produce +1 axis
   modifiers, not implicit inversion. */

void __fastcall CameraManager_LoadRotationPreferences(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  wchar_t *pwVar3;
  wchar_t *pwVar4;
  wchar_t local_64 [24];
  wchar_t local_34 [26];

  pwVar3 = L"InvertHorizontalRotation";
  pwVar4 = local_34;
  for (iVar2 = 0xc; iVar2 != 0; iVar2 = iVar2 + -1) {
    *(undefined4 *)pwVar4 = *(undefined4 *)pwVar3;
    pwVar3 = pwVar3 + 2;
    pwVar4 = pwVar4 + 2;
  }
  *pwVar4 = *pwVar3;
  pwVar3 = L"InvertVerticalRotation";
  pwVar4 = local_64;
  for (iVar2 = 0xb; iVar2 != 0; iVar2 = iVar2 + -1) {
    *(undefined4 *)pwVar4 = *(undefined4 *)pwVar3;
    pwVar3 = pwVar3 + 2;
    pwVar4 = pwVar4 + 2;
  }
  *pwVar4 = *pwVar3;
  uVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,local_34,0);
  *(undefined1 *)(param_1 + 0xe1) = uVar1;
  uVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,local_64,0);
  *(undefined1 *)(param_1 + 0xe2) = uVar1;
  uVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"EdgeScrolling",1);
  *(undefined1 *)(*(int *)(param_1 + 0x94) + 0x8cc) = uVar1;
  MainCamera_ApplyRotationInversion
            (*(void **)(param_1 + 0x94),*(char *)(param_1 + 0xe1),*(char *)(param_1 + 0xe2));
  FUN_0097ac20(*(void **)(param_1 + 0xa8),*(char *)(param_1 + 0xe2));
  MainCamera_ApplyRotationInversion
            (*(void **)(param_1 + 0xa0),*(char *)(param_1 + 0xe1),*(char *)(param_1 + 0xe2));
  uVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"ForceSquarePixels",0);
  *(undefined1 *)(param_1 + 0xe3) = uVar1;
  return;
}

