/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Initializes owned state and caches, installs
   vtable0x10ABF190, records walkway/dirt/bridge flags at+12C/+12D/+12E and unlocked byte+24, then
   calls0x1013C7A0 with the four absolute authored knots. Consequently constructor geometry includes
   the setter's ordered coincident-knot adjustments before network creation tests virtual+5C
   self-overlap. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

undefined4 * __thiscall
CAW_RoadSplineConstruct
          (void *this,int *param_1,int *param_2,int *param_3,int *param_4,undefined1 param_5,
          undefined1 param_6,undefined1 param_7,undefined2 param_8)

{
  undefined4 *puVar1;
  int iVar2;
  
  *(undefined1 *)((int)this + 4) = 0;
  *(undefined1 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined1 *)((int)this + 300) = param_5;
  *(undefined1 *)((int)this + 0x12d) = param_6;
  *(undefined1 *)((int)this + 0x12e) = param_7;
  *(undefined1 *)((int)this + 0x24) = 0;
  *(void **)((int)this + 8) = this;
  *(undefined ***)this = &PTR_LAB_10abf190;
  *(undefined4 *)((int)this + 0x170) = 0;
  puVar1 = (undefined4 *)((int)this + 0x174);
  iVar2 = 1;
  do {
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1 = puVar1 + 2;
    iVar2 = iVar2 + -1;
  } while (-1 < iVar2);
  *(undefined4 *)((int)this + 0x184) = 0;
  *(undefined4 *)((int)this + 0x188) = 0;
  *(undefined4 *)((int)this + 0x18c) = 0;
  *(char **)((int)this + 400) = "RoadNetwork/Spline";
  *(undefined4 *)((int)this + 0x194) = 0;
  *(undefined4 *)((int)this + 0x198) = 0;
  *(undefined4 *)((int)this + 0x19c) = 0;
  *(char **)((int)this + 0x1a0) = "RoadNetwork/Spline";
  *(undefined2 *)((int)this + 0x1a4) = param_8;
  *(uint *)((int)this + 0x20) = (*(char *)((int)this + 300) != '\0') + 1;
  CAW_RoadSplineSetKnotsWhenUnlocked(this,param_1,param_2,param_3,param_4);
  return this;
}

