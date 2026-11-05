/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst static routing contract: Initializes stack RoutingJob. Output path list+0xc,
   backend+0x14, owned copies of start vector+0x18 and goal vector+0x28, selected start/goal output
   pointers+0x38/+0x3c, copied options+0x40, actor context+0xc0/+0xc8/+0xcc. Original strings
   identify start/goal arrays. Constructor returns this. */

void * __thiscall
RoutingJob_InitializeFromCandidates
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,int *param_4,
          int *param_5,int param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
          undefined4 param_10)

{
  *(undefined4 *)((int)this + 0xc) = param_1;
  *(undefined ***)this = &PTR_LAB_01022290;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = param_2;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(char **)((int)this + 0x24) = "Routing/RoutingJob/mStartPoints";
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(char **)((int)this + 0x34) = "Routing/RoutingJob/mGoalPoints";
  *(undefined4 *)((int)this + 0x38) = param_7;
  *(undefined4 *)((int)this + 0x3c) = param_8;
  FUN_0081c890((undefined4 *)((int)this + 0x40));
  *(undefined4 *)((int)this + 0xc0) = param_3;
  *(undefined4 *)((int)this + 200) = param_9;
  *(undefined4 *)((int)this + 0xcc) = param_10;
  TreeVariation_Reseed((void *)((int)this + 0xd0),-1);
  FUN_00758890((void *)((int)this + 0x18),param_4);
  FUN_00758890((undefined4 *)((int)this + 0x28),param_5);
  if (param_6 != 0) {
    FUN_0081d090((undefined4 *)((int)this + 0x40),param_6);
  }
  return this;
}

