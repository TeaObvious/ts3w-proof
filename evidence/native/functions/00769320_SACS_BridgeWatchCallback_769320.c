/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 bridge state watch callback (raw 83-byte body; Ghidra may leave this entry undefined).
   Null watch/source returns true. Source walker byte +0x71 invokes destination release and returns
   false. Otherwise compare current-state hash at state+0x28 with watch+0x18. A matching one-shot
   state retargets the watch to Return hash and returns false. A matching ordinary state releases
   destination and returns true. No deadline or clip-completion check appears in this body. Raw
   proof: 
   guides/sacs/native/disassembly/bridge-watch-callback-769320.objdump.txt;
   reference . */

uint __cdecl SACS_BridgeWatchCallback_769320(void *param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 in_EAX;
  
  if ((param_1 == (void *)0x0) || (in_EAX = 0, param_2 == 0)) {
LAB_00769370:
    return CONCAT31((int3)((uint)in_EAX >> 8),1);
  }
  if (*(char *)(param_2 + 0x71) == '\0') {
    iVar1 = *(int *)(param_2 + 0x10);
    if ((iVar1 != 0) && (*(int *)(iVar1 + 0x28) == *(int *)((int)param_1 + 0x18))) {
      if ((*(char *)(iVar1 + 0x53) != '\0') && (*(int *)(param_2 + 0x28) != 0)) {
        uVar2 = *(uint *)(*(int *)(param_2 + 0x28) + 0x28);
        *(uint *)((int)param_1 + 0x18) = uVar2;
        return uVar2 & 0xffffff00;
      }
      in_EAX = SACS_BridgeDestinationRelease_7691e0(param_1,param_2);
      goto LAB_00769370;
    }
  }
  else {
    param_2 = SACS_BridgeDestinationRelease_7691e0(param_1,param_2);
  }
  return param_2 & 0xffffff00;
}

