/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67 original combo-control comparison; no execution. ECX whole object; initializes the
   selected WinComboBox control after a base-constructor call, including vtable00FBCAA0 at
   whole+250, selection0 at whole+260 and an empty16-byte-element value vector at
   whole+294/+298/+29C. Selected scalar/color/property defaults and callback/vtable stores are local
   observations, not a complete recovered C++ layout or all child constructor semantics. */

undefined4 * __fastcall WinComboBox_InitializeControl(undefined4 *param_1)

{
  Window_InitializeNativeFields(param_1);
  param_1[0x94] = &PTR_LAB_00fbec30;
  *param_1 = &PTR_thunk_FUN_007e4140_00fbcc60;
  param_1[1] = &PTR_LAB_00fbcb38;
  param_1[0x94] = &PTR_LAB_00fbcaa0;
  param_1[0x95] = &PTR_WinComboBox_BeginModalNotification_00fbca90;
  param_1[0xa0] = 0xff718aad;
  *(undefined1 *)(param_1 + 0xa4) = 0;
  param_1[0x98] = 0;
  param_1[0x99] = 0;
  *(undefined1 *)((int)param_1 + 0x291) = 0;
  param_1[0x96] = 0xffffffff;
  param_1[0x97] = 0xffffffff;
  param_1[0xa1] = 0xffffffff;
  param_1[0xa2] = 1;
  param_1[0xa3] = 1;
  param_1[0xa5] = 0;
  param_1[0xa6] = 0;
  param_1[0xa7] = 0;
  param_1[0xa8] = "UI/UTFWin/WinComboBox";
  param_1[0xa9] = 0;
  param_1[0xaa] = 0;
  param_1[0xb7] = 0x40000000;
  param_1[0xb8] = 0x40000000;
  param_1[0xb9] = 0x40000000;
  param_1[0xba] = 0x40000000;
  param_1[0xbb] = 0;
  param_1[0xbc] = 0x40000000;
  param_1[0xbd] = 0x40000000;
  param_1[0xbe] = 0x40000000;
  param_1[0xbf] = 0x40000000;
  param_1[0xc0] = 0;
  param_1[0xc1] = 0;
  param_1[0xc2] = 0;
  param_1[0xc3] = 0;
  param_1[0xc4] = 0;
  param_1[0xc5] = 0;
  if (*(char *)(param_1 + 0xa4) == '\0') {
    *(undefined1 *)(param_1 + 0xa4) = 1;
    (**(code **)(param_1[1] + 0x74))(8,1);
  }
  memset(param_1 + 0xab,0,0x30);
  param_1[0x9e] = 0xffffffff;
  param_1[0x9b] = 0xffece9d8;
  param_1[0x9c] = 0xffece9d8;
  param_1[0x9a] = 0xff000000;
  param_1[0x9d] = 0xff737163;
  param_1[0x9f] = 0xff000000;
  return param_1;
}

