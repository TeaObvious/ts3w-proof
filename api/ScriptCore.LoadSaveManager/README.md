# ScriptCore.LoadSaveManager

17 original PC 1.67 registered methods.

| Original registration name | Native address | Guide |
| --- | --- | --- |
| [LoadSaveManager_CreateLoadSaveFileInfo_Impl](0x011611d8.md) | `0x00743250` | persistence |
| [LoadSaveManager_CreateNativeWriter](0x01161230.md) | `0x00742be0` | persistence |
| [LoadSaveManager_DestroyNativeWriter](0x01161238.md) | `0x00742e60` | persistence |
| [LoadSaveManager_GetCurrentGameGuid_Impl](0x01161200.md) | `0x00742d00` | persistence |
| [LoadSaveManager_GetCurrentSaveGameInfo_Impl](0x01161208.md) | `0x00742ef0` | persistence |
| [LoadSaveManager_GetLoadSaveFileInfoID_Impl](0x01161210.md) | `0x00743310` | persistence |
| [LoadSaveManager_LoadChallengeData](0x01161248.md) | `0x00743650` | persistence |
| [LoadSaveManager_LoadGame_Impl](0x011611f0.md) | `0x00742cb0` | persistence |
| [LoadSaveManager_LoadNativeObject](0x01161220.md) | `0x00742b60` | persistence |
| [LoadSaveManager_LoadPassportData](0x01161258.md) | `0x00743660` | persistence |
| [LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl](0x01161218.md) | `0x00742f30` | persistence |
| [LoadSaveManager_ResetSaveLocation_Impl](0x011611e8.md) | `0x00742c90` | persistence |
| [LoadSaveManager_SaveChallengeData](0x01161240.md) | `0x00742ea0` | persistence |
| [LoadSaveManager_SaveGame_Impl](0x011611e0.md) | `0x00742c40` | persistence |
| [LoadSaveManager_SaveNativeObject](0x01161228.md) | `0x00742ba0` | persistence |
| [LoadSaveManager_SavePassportData](0x01161250.md) | `0x00742eb0` | persistence |
| [LoadSaveManager_SaveWorld](0x011611f8.md) | `0x00743880` | callbacks, persistence |

Every link opens the exact binding page with its managed signature, IL callers, native address, original bytes and annotated pseudocode.

The original managed [table preparation and completion](../../guides/objects/managed-object-table-preparation.md)
and [existing-target binding](../../guides/objects/managed-loaded-proxy-binding.md)
are distinct from these registered native boundaries.
