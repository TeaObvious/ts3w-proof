/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original CAW 1.22.10 Sims3Common.dll: Initializes cached maximum packed fine vertex count +6C to
   signed -1 and cached fine threshold +70 to zero. Initializes the terrain debounce timer at +158
   through 0x10926CA0 with unit enum4 and start=false, then sets its deadline through 0x10926BE0
   with interval zero and start=false. Timer enum4 denotes milliseconds through 0x109267D0 and
   frequency conversion initialized at 0x10926450. Later dirty dispatcher 0x1025A0B0 starts an
   interval of1000 milliseconds after the first clean update. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 * __thiscall CAW_InitializeWorldTerrainCollisionState(void *this,undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  int local_2c [10];
  
  *(undefined ***)((int)this + 4) = &PTR_LAB_10ab04d0;
  *(undefined ***)this = &PTR_LAB_10acb10c;
  *(undefined ***)((int)this + 4) = &PTR_LAB_10acb0fc;
  LOCK();
  *(undefined4 *)((int)this + 0x10) = 0;
  UNLOCK();
  *(undefined4 *)((int)this + 0x60) = _DAT_10acb220;
  *(undefined4 *)((int)this + 0x14) = param_1;
  *(undefined4 *)((int)this + 100) = 0;
  *(undefined4 *)((int)this + 0x68) = 0;
  *(undefined4 *)((int)this + 0x6c) = 0xffffffff;
  *(undefined4 *)((int)this + 0x70) = 0;
  *(undefined4 *)((int)this + 0x74) = 0;
  *(undefined4 *)((int)this + 0xa0) = 0;
  *(undefined4 *)((int)this + 0xa4) = 0;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(char **)((int)this + 0xac) = "Terrain/CollisionShapes";
  *(undefined4 *)((int)this + 0xb0) = 0;
  *(undefined4 *)((int)this + 0xb4) = 0;
  *(undefined4 *)((int)this + 0xb8) = 0;
  *(char **)((int)this + 0xbc) = "Terrain/Chunks";
  *(undefined4 *)((int)this + 0xc0) = 1;
  *(undefined4 *)((int)this + 0xc4) = 1;
  *(undefined4 *)((int)this + 200) = 0x100;
  *(undefined4 *)((int)this + 0xcc) = 0;
  FUN_1058c370((undefined4 *)((int)this + 0xd0));
  *(byte *)((int)this + 0x140) = *(byte *)((int)this + 0x140) & 0x80;
  *(undefined4 *)((int)this + 0xf8) = 1;
  *(undefined1 *)((int)this + 0xf0) = 0;
  *(undefined1 *)((int)this + 0xf1) = 0;
  *(undefined1 *)((int)this + 0xf2) = 0;
  *(undefined1 *)((int)this + 0xf3) = 0;
  *(undefined1 *)((int)this + 0xf4) = 1;
  *(undefined4 *)((int)this + 0xfc) = 0;
  *(undefined4 *)((int)this + 0x144) = 0;
  *(undefined4 *)((int)this + 0x148) = 0;
  *(undefined4 *)((int)this + 0x14c) = 0;
  *(undefined4 *)((int)this + 0x150) = 0;
  *(undefined4 *)((int)this + 0x154) = 0;
  CAW_InitializeCounterTimer((void *)((int)this + 0x158),4,'\0');
  CAW_SetCounterTimerDeadline((void *)((int)this + 0x158),0,'\0');
  *(undefined4 *)((int)this + 0x188) = DAT_10acb0d4;
  *(undefined4 *)((int)this + 0x18c) = _DAT_10aadffc;
  *(char **)((int)this + 0x194) = "Terrain/LotCoverageMap";
  *(undefined4 *)((int)this + 0x180) = 1;
  *(undefined4 **)((int)this + 0x17c) = &DAT_10c571f8;
  *(undefined4 *)((int)this + 0x184) = 0;
  *(undefined4 *)((int)this + 400) = 0;
  *(undefined4 *)((int)this + 0x198) = 0;
  *(undefined4 *)((int)this + 0x19c) = 0;
  *(undefined4 *)((int)this + 0x1a0) = 0;
  *(undefined4 *)((int)this + 0x1a4) = 0;
  *(undefined4 *)((int)this + 0x1a8) = 0;
  *(undefined4 *)((int)this + 0x110) = 0;
  *(undefined4 *)((int)this + 0x114) = 0;
  *(undefined4 *)((int)this + 0x118) = 0;
  *(undefined4 *)((int)this + 0x11c) = 0;
  local_2c[6] = 0;
  local_2c[5] = 0;
  local_2c[4] = 0;
  local_2c[3] = 0;
  *(undefined4 *)((int)this + 0x130) = 0;
  *(undefined4 *)((int)this + 0x134) = 0;
  *(undefined4 *)((int)this + 0x138) = 0;
  *(undefined4 *)((int)this + 0x13c) = 0;
  local_2c[0] = FUN_103889f0((short *)PTR_u_Config_10c1e300,L"TerrainLODMode",
                             *(int *)((int)this + 0xfc));
  local_2c[1] = 0;
  local_2c[2] = 2;
  if (local_2c[0] < 1) {
    piVar2 = local_2c + 1;
  }
  else {
    piVar2 = local_2c;
    if (1 < local_2c[0]) {
      piVar2 = local_2c + 2;
    }
  }
  iVar1 = *piVar2;
  *(int *)((int)this + 0xfc) = iVar1;
  if (iVar1 == 0) {
    iVar1 = FUN_103889f0((short *)PTR_u_Config_10c1e300,L"TerrainLODBoost",0);
    *(int *)((int)this + 0x100) = iVar1;
  }
  else {
    *(undefined4 *)((int)this + 0x100) = 0;
  }
  piVar2 = (int *)FUN_1039a170();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))(L"Streaming",10000);
  }
  piVar2 = (int *)FUN_1039a170();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x40))(0,this,L"Terrain LOD mode",&LAB_10253dc0,&LAB_102546f0,0,2,1);
  }
  piVar2 = (int *)FUN_1039a170();
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))(0,0x7fffffff);
  }
  return this;
}

