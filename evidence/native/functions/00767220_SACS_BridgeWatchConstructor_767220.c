/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 bridge watch constructor. Stores callback pointer 0x00769320 at +0x10, literal source
   state hash at +0x18, retained destination driver pointer at +0x1C, destination actor hash at
   +0x20. Zero notification target fields +0x08/+0x0C come from registered RequestState. Constructor
   argument 8 carries native timeout but is not read. Do not infer more fields from RequestState
   pseudocode. Raw proof:
   guides/sacs/native/disassembly/bridge-watch-constructor-767220.objdump.txt;
   reference . */

void * __thiscall
SACS_BridgeWatchConstructor_767220
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int in_stack_00000024;
  undefined4 in_stack_00000028;
  
  *(undefined ***)this = &PTR_FUN_0106c91c;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined4 *)((int)this + 0xc) = param_2;
  *(undefined4 *)((int)this + 8) = param_1;
  *(code **)((int)this + 0x10) = SACS_BridgeWatchCallback_769320;
  *(undefined ***)this = &PTR_SACS_BridgeWatchDestructor_767290_01007dfc;
  *(undefined4 *)((int)this + 0x18) = param_5;
  *(int *)((int)this + 0x1c) = in_stack_00000024;
  if (in_stack_00000024 != 0) {
    (*(code *)**(undefined4 **)(in_stack_00000024 + 8))();
    *(undefined4 *)((int)this + 0x20) = in_stack_00000028;
    return this;
  }
  *(undefined4 *)((int)this + 0x20) = in_stack_00000028;
  return this;
}

