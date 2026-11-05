# Tomb puzzles and underwater transitions: original evidence

The reference is the original PC 1.67 game. Native work selected `/TS3W.exe`
explicitly through GhidrAssist. Analyst names describe established contracts;
they are not recovered original symbols. Managed evidence comes from the
matching pristine S3SA assemblies, never their retargeted copies or a mod.

Original DLL identities and S3SA resource keys are recorded centrally in the
[managed reference](../../evidence/managed/README.md#matching-original-assembly-identities).

The original GameplayObjects identity is version1.0.0.0, MVID
`b67f5f42-2c02-4bc7-9878-87a75e61a538`. Systems is version1.0.0.0,
MVID `e8701302-f3cd-4f23-9387-d9d17a68ff9e`. Package extraction mapping,
DLL hashes and original gameplay.package hash were checked before analysis.
The base executable identity is recorded by the [main proof](../../references/retained-proof-overview.md).

- [Linked puzzles, room discovery and persistence](tomb-puzzles-and-discovery.md)
- [Scuba, underwater caves and dive wells](../travel/diving-and-dive-wells.md)
- [Native room and level geometry](../world/lot-spatial-lookup.md)
- [Object ownership and transforms](../objects/object-handling.md)

## Complete focused managed evidence

Each pair preserves the actual complete original type IL and its ILSpy C#
rendering. Analyst comments are in C#. The guides identify reviewed methods;
retaining the enclosing type is not a claim that every contained interaction,
loot table, skill or reaction has been fully resolved.

| Type | Evidence |
| --- | --- |
| `Sims3.Gameplay.Abstracts.NonAnimatedDoor` | [NonAnimatedDoor C#](../../evidence/managed/types/Sims3.Gameplay.Abstracts.NonAnimatedDoor.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Abstracts.NonAnimatedDoor.il.txt)) |
| `Sims3.Gameplay.Controllers.FogStatus` | [FogStatus C#](../../evidence/managed/types/Sims3.Gameplay.Controllers.FogStatus.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Controllers.FogStatus.il.txt)) |
| `Sims3.Gameplay.Controllers.TombRoomInfo` | [TombRoomInfo C#](../../evidence/managed/types/Sims3.Gameplay.Controllers.TombRoomInfo.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Controllers.TombRoomInfo.il.txt)) |
| `Sims3.Gameplay.Controllers.TombRoomManager` | [TombRoomManager C#](../../evidence/managed/types/Sims3.Gameplay.Controllers.TombRoomManager.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Controllers.TombRoomManager.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.ActivatedBehavior` | [ActivatedBehavior C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.ActivatedBehavior.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.ActivatedBehavior.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.TombObjectComponent` | [TombObjectComponent C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectComponent.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectComponent.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.TombObjectData` | [TombObjectData C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectData.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectData.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.TombObjectDynamicComponent` | [TombObjectDynamicComponent C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectDynamicComponent.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectDynamicComponent.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.TombObjectStaticComponent` | [TombObjectStaticComponent C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectStaticComponent.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectStaticComponent.il.txt)) |
| `Sims3.Gameplay.ObjectComponents.Trigger` | [Trigger C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.Trigger.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.Trigger.il.txt)) |
| `Sims3.Gameplay.Objects.Door.RotatingWallDoor` | [RotatingWallDoor C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Door.RotatingWallDoor.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Door.RotatingWallDoor.il.txt)) |
| `Sims3.Gameplay.Objects.Door.SecretDoor` | [SecretDoor C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Door.SecretDoor.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Door.SecretDoor.il.txt)) |
| `Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCave` | [UnderwaterCave C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCave.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCave.il.txt)) |
| `Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCaveSurfaceDestinationMarker` | [UnderwaterCaveSurfaceDestinationMarker C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCaveSurfaceDestinationMarker.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCaveSurfaceDestinationMarker.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.DiveWell` | [DiveWell C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.DiveWell.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.DiveWell.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.FloorSwitch` | [FloorSwitch C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.FloorSwitch.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.FloorSwitch.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.HideableTombObject` | [HideableTombObject C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.HideableTombObject.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.HideableTombObject.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.KeystonePanel` | [KeystonePanel C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.KeystonePanel.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.KeystonePanel.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.LogicGate` | [LogicGate C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.LogicGate.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.LogicGate.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.PushableStatue` | [PushableStatue C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.PushableStatue.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.PushableStatue.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.RubblePile` | [RubblePile C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.RubblePile.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.RubblePile.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.Sarcophagus` | [Sarcophagus C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.Sarcophagus.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.Sarcophagus.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.SmallHole` | [SmallHole C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.SmallHole.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.SmallHole.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.TombTrap` | [TombTrap C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TombTrap.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TombTrap.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.TreasureChest` | [TreasureChest C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TreasureChest.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TreasureChest.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.TriggerPanel` | [TriggerPanel C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TriggerPanel.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TriggerPanel.il.txt)) |
| `Sims3.Gameplay.Objects.TombObjects.WallLampLever` | [WallLampLever C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.WallLampLever.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.WallLampLever.il.txt)) |
| `Sims3.Gameplay.Objects.TombRoomMarker` | [TombRoomMarker C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombRoomMarker.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombRoomMarker.il.txt)) |
| `Sims3.Gameplay.Scuba.EndScubaDive` | [EndScubaDive C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.EndScubaDive.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.EndScubaDive.il.txt)) |
| `Sims3.Gameplay.Scuba.GoHereAndScubaDive` | [GoHereAndScubaDive C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.GoHereAndScubaDive.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.GoHereAndScubaDive.il.txt)) |
| `Sims3.Gameplay.Scuba.GoHereAndScubaDiveWith` | [GoHereAndScubaDiveWith C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.GoHereAndScubaDiveWith.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.GoHereAndScubaDiveWith.il.txt)) |
| `Sims3.Gameplay.Scuba.ProxyGoToTargetsLotAndScubaDive` | [ProxyGoToTargetsLotAndScubaDive C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.ProxyGoToTargetsLotAndScubaDive.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.ProxyGoToTargetsLotAndScubaDive.il.txt)) |
| `Sims3.Gameplay.Scuba.ScubaDive` | [ScubaDive C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.ScubaDive.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.ScubaDive.il.txt)) |
| `Sims3.Gameplay.Scuba.ScubaDiving` | [ScubaDiving C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.ScubaDiving.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.ScubaDiving.il.txt)) |
| `Sims3.SimIFace.RoomMarkerTypes` | [RoomMarkerTypes C#](../../evidence/managed/types/Sims3.SimIFace.RoomMarkerTypes.cs) ([original IL](../../evidence/managed/types/Sims3.SimIFace.RoomMarkerTypes.il.txt)) |
