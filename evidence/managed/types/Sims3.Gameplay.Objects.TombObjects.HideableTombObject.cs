/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.Objects.TombObjects;

public abstract class HideableTombObject : GameObject, IBuildBuyListener, IHasWorldBuilderData, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private sealed class SetVisible : ImmediateInteraction<Sim, HideableTombObject>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, HideableTombObject, SetVisible>
		{
			public bool IsVisible = true;

			public Definition()
			{
			}

			private Definition(bool isVisible)
			{
				IsVisible = isVisible;
			}

			protected override bool Test(Sim actor, HideableTombObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mIsVisible ^ IsVisible)
				{
					return !target.InUse;
				}
				return false;
			}

			protected override string GetInteractionName(Sim actor, HideableTombObject target, InteractionObjectPair iop)
			{
				if (IsVisible)
				{
					return LocalizeString("SetVisibleInteractionName");
				}
				return LocalizeString("SetInvisibleInteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, HideableTombObject target, List<InteractionObjectPair> results)
			{
				Definition interaction = new Definition(isVisible: false);
				InteractionObjectPair item = new InteractionObjectPair(interaction, target);
				results.Add(item);
				base.AddInteractions(iop, actor, target, results);
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/HideableTombObject/SetVisible";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/HideableTombObject/SetVisible:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mIsVisible = (InteractionDefinition as Definition).IsVisible;
			Target.UpdateOpacity();
			if (Target.mIsVisible)
			{
				Target.OnShow();
			}
			else
			{
				Target.OnHide();
			}
			return true;
		}
	}

	private const uint kIsVisible = 142613301u;

	private const string kWorldBuilderDataName = "HideableTombObject";

	protected bool mIsVisible = true;

	[Persistable(false)]
	private bool mbWasVisible;

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[2]
	{
		142613301u.ToString(),
		"Visible"
	};

	protected abstract string AppearDisappearEffectName { get; }

	protected abstract Vector3 AppearDisappearEffectPosition { get; }

	public HideableTombObject()
	{
	}

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetVisible.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	public virtual void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Appear, Appear);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Disappear, Disappear);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool result = base.ExportContent(resKeyTable, objIdTable, writer);
		writer.WriteBool(142613301u, mIsVisible);
		return result;
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		reader.ReadBool(142613301u, out mIsVisible, defaultValue: true);
		if (!mIsVisible)
		{
			Hide(bDoCallback: true);
		}
		return result;
	}

	public void OnEnterBuildBuyMode()
	{
		mbWasVisible = mIsVisible;
		Show(bDoCallback: false, mbWasVisible);
	}

	public void OnExitBuildBuyMode()
	{
		if (!mIsVisible)
		{
			Hide(bDoCallback: false, mbWasVisible);
		}
		else
		{
			Show(bDoCallback: false, mbWasVisible);
		}
	}

	public virtual void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("HideableTombObject", ObjectId, "Visible", mIsVisible, defaultValue: true);
	}

	public virtual void LoadWorldBuilderData()
	{
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("HideableTombObject", ObjectId, "Visible", ref mIsVisible);
		if (!mIsVisible)
		{
			Hide(bDoCallback: true);
		}
	}

	protected virtual void OnHide()
	{
	}

	protected virtual void OnShow()
	{
	}

	protected void Hide(bool bDoCallback)
	{
		Hide(bDoCallback, bWasVisible: true);
	}

	protected void Hide(bool bDoCallback, bool bWasVisible)
	{
		SetHiddenFlags(HiddenFlags.Model);
		if (bDoCallback && bWasVisible)
		{
			ObjectStateChanged();
			OnHide();
		}
	}

	protected void Show(bool bDoCallback)
	{
		Show(bDoCallback, bWasVisible: false);
	}

	protected void Show(bool bDoCallback, bool bWasVisible)
	{
		UpdateOpacity();
		if (bDoCallback && !bWasVisible)
		{
			OnShow();
		}
	}

	protected virtual void UpdateOpacity()
	{
		SetHiddenFlags(HiddenFlags.Nothing);
		if (!mIsVisible)
		{
			SetOpacity(0.5f, 0f);
		}
		else
		{
			SetOpacity(1f, 0f);
		}
	}

	protected virtual void ShowWithEffects()
	{
		VisualEffect visualEffect = VisualEffect.Create(AppearDisappearEffectName);
		visualEffect.SetPosAndOrient(AppearDisappearEffectPosition, ForwardVector, UpVector);
		visualEffect.SubmitOneShotEffect(VisualEffect.TransitionType.SoftTransition);
		FadeIn(yield: true);
		mIsVisible = true;
		Show(bDoCallback: true);
	}

	protected virtual void HideWithEffects()
	{
		VisualEffect visualEffect = VisualEffect.Create(AppearDisappearEffectName);
		visualEffect.SetPosAndOrient(AppearDisappearEffectPosition, ForwardVector, UpVector);
		visualEffect.SubmitOneShotEffect(VisualEffect.TransitionType.SoftTransition);
		FadeOut(yield: true);
		mIsVisible = false;
		Hide(bDoCallback: true);
		if (GameStates.IsBuildBuyLikeState)
		{
			UpdateOpacity();
		}
	}

	public bool Appear()
	{
		return Appear(null);
	}

	public bool Appear(Sim sim)
	{
		if (mIsVisible)
		{
			return false;
		}
		ShowWithEffects();
		return true;
	}

	public bool Disappear()
	{
		return Disappear(null);
	}

	public bool Disappear(Sim sim)
	{
		if (!mIsVisible)
		{
			return false;
		}
		HideWithEffects();
		return true;
	}
}
