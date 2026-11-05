/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_RegisterResourceFactories. Export
   ordinal(s): 2171. Entry VA: 0x1098c9a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CD0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void SacsWrap_RegisterResourceFactories(void)

{
  int *piVar1;
  undefined4 *puVar2;
  
  piVar1 = (int *)FUN_108e50d0();
  puVar2 = FUN_10919060(0xc,"SACS/Factory/StateMachine",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fac0;
    puVar2[2] = "SACS/Resource/StateMachine";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/State",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fb08;
    puVar2[2] = "SACS/Resource/State";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/DecisionGraph",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fb68;
    puVar2[2] = "SACS/Resource/DecisionGraph";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/ActorDefinition",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fbf8;
    puVar2[2] = "SACS/Resource/ActorDefinition";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/ParameterDefinition",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fc58;
    puVar2[2] = "SACS/Resource/ParameterDefinition";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/PlayAnimationNode",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fca0;
    puVar2[2] = "SACS/Resource/PlayAnimationNode";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/StopAnimationNode",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fd18;
    puVar2[2] = "SACS/Resource/StopAnimationNode";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/RandomNode",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fda8;
    puVar2[2] = "SACS/Resource/RandomNode";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/NextStateNode",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fdf0;
    puVar2[2] = "SACS/Resource/NextStateNode";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/CreatePropNode",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fe80;
    puVar2[2] = "SACS/Resource/CreatePropNode";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/SelectOnParameterNode",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2fec8;
    puVar2[2] = "SACS/Resource/SelectOnParameterNode";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/SelectOnDestinationNode",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2ff10;
    puVar2[2] = "SACS/Resource/SelectOnDestinationNode";
  }
  (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
  puVar2 = FUN_10919060(0xc,"SACS/Factory/ActorOperationNode",0);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = &PTR_LAB_10ac7444;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_LAB_10b2ff58;
    puVar2[2] = "SACS/Resource/ActorOperationNode";
    (**(code **)(*piVar1 + 0x28))(1,puVar2,0);
    return;
  }
  (**(code **)(*piVar1 + 0x28))(1,0,0);
  return;
}

