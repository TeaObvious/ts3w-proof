/* Initializes the floor-render manager, installs listener table 01064B9C, clears
   attached/registration state and local delayed-message vector, and initializes retained
   containers/locks. Enabled byte +70 and nesting counter +80 initially zero. Analyst-assigned name.
    */

undefined4 * __fastcall InitializeFloorRenderManager(undefined4 *param_1)

{
  /* 00AA3086: Listener table 01064B9C has inspected callback slot +4 equal to AA4350. No receiver adjustment is inserted by AA0640; it registers this exact pointer. */
  *param_1 = &PTR_FUN_01064b9c;
  *(undefined1 *)(param_1 + 1) = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = 0;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = 0;
  param_1[0x10] = 0;
  param_1[0x11] = 0;
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x1b] = "LotRenderer/FloorRenderManager/FloorRenderers";
  FUN_00727750(param_1 + 0x11,0);
  *(undefined1 *)(param_1 + 0x1c) = 0;
  *(undefined1 *)((int)param_1 + 0x71) = 0;
  *(undefined1 *)((int)param_1 + 0x72) = 0;
  *(undefined1 *)((int)param_1 + 0x73) = 0;
  *(undefined1 *)(param_1 + 0x1d) = 3;
  param_1[0x1e] = 0;
  param_1[0x1f] = 0;
  param_1[0x20] = 0;
  param_1[0x21] = 0;
  param_1[0x22] = 0;
  param_1[0x23] = 0;
  param_1[0x24] = "LotRenderer/FloorRenderManager/DelayedMessages";
  *(undefined1 *)(param_1 + 0x25) = 0;
  FUN_00722fa0(param_1 + 0x26);
  FUN_00722fa0(param_1 + 0x2c);
  FUN_00722fa0(param_1 + 0x32);
  FUN_00722fa0(param_1 + 0x38);
  param_1[0x3e] = 0;
  param_1[0x3f] = 0;
  param_1[0x40] = 0;
  param_1[0x41] = 0;
  param_1[0x42] = "LotRenderer/FloorRenderManager/DoorTileSet";
  InitializeCriticalSection((LPCRITICAL_SECTION)(param_1 + 0x44));
  LOCK();
  param_1[0x4c] = 0;
  UNLOCK();
  InitializeCriticalSection((LPCRITICAL_SECTION)(param_1 + 0x4e));
  LOCK();
  param_1[0x56] = 0;
  UNLOCK();
  *(undefined1 *)(param_1 + 0x57) = 0;
  *(undefined1 *)((int)param_1 + 0x15d) = 0;
  return param_1;
}
