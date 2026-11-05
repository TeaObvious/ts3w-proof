// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Situations.VisitSituation selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	private class GuestLeftAlone : ChildSituation<VisitSituation>
	{
		private DateAndTime mTimeStarted;

		private AlarmHandle mRemindGuestToGoOutside;

		private GuestLeftAlone()
		{
		}

		public GuestLeftAlone(VisitSituation parent)
			: base(parent)
		{
		}

		public override void Init(VisitSituation parent)
		{
			mTimeStarted = SimClock.CurrentTime();
			mRemindGuestToGoOutside = AlarmManager.AddAlarmRepeating(10f, TimeUnit.Minutes, AddInteractionToGoOutside, 10f, TimeUnit.Minutes, "Remind guests to go outside", AlarmType.AlwaysPersisted, parent.mGuest);
			if (parent.mGuest.IsSelectable && parent.mLastHostRemoved != null)
			{
				string titleText = LocalizeString("LastHostLeft");
				StyledNotification.Format format = new StyledNotification.Format(titleText, parent.mLastHostRemoved.ObjectId, StyledNotification.NotificationStyle.kSimTalking);
				StyledNotification.Show(format);
			}
			AddInteractionToGoOutside();
		}

		private void AddInteractionToGoOutside()
		{
			if (Parent.mHosts.Count > 0)
			{
				Parent.SetState(new VisitorWantsToComeIn(Parent, null));
			}
			else if (FirefighterEmergencySituation.FindFirefighterEmergencySituationInvolvingSim(Parent.mGuest) != null)
			{
				Parent.SetState(new AlreadyGreeted(Parent));
			}
			else
			{
				if (GameplayMovingModel.MovingCurrentlyInProgress || Parent.mGuest.GetSituationOfType<MovingSituation>() != null)
				{
					return;
				}
				float num = SimClock.ElapsedTime(TimeUnit.Minutes, mTimeStarted);
				if (!Parent.mGuest.IsOutside && !Parent.mGuest.IsInPublicResidentialRoom)
				{
					bool flag = true;
					if (Parent.Lot.Household != null && Parent.Lot.Household.IsActive && Parent.mGuest.Household != null && !Parent.mGuest.Household.IsServiceNpcHousehold)
					{
						flag = false;
					}
					if (flag)
					{
						if (num > kForceOutsideResetSendHomeTime)
						{
							Parent.mGuest.SetToResetAndSendHome();
							return;
						}
						if (num > kForceOutsideTeleportTime)
						{
							AddInteractionToTeleportOutside();
							return;
						}
						if (Parent.mGuest.InteractionQueue != null)
						{
							InteractionInstance currentInteraction = Parent.mGuest.InteractionQueue.GetCurrentInteraction();
							if (currentInteraction != null && currentInteraction.GetTargetLot() == Lot)
							{
								Parent.mGuest.InteractionQueue.CancelAllInteractions();
							}
						}
						MakeSimGoHomeOrWork(Parent.mGuest);
					}
					else
					{
						MakeSimGoHomeOrWork(Parent.mGuest);
					}
				}
				else
				{
					if (!(num > 30f))
					{
						return;
					}
					if (Parent.mGuest.InteractionQueue == null)
					{
						MakeSimGoHomeOrWork(Parent.mGuest);
						return;
					}
					InteractionInstance currentInteraction2 = Parent.mGuest.InteractionQueue.GetCurrentInteraction();
					if (currentInteraction2 == null || currentInteraction2.GetTargetLot() == Lot)
					{
						MakeSimGoHomeOrWork(Parent.mGuest);
					}
				}
			}
		}

		private void MakeSimGoHomeOrWork(Sim guest)
		{
			if (guest.Occupation is ActiveFireFighter activeFireFighter && activeFireFighter.ShouldBeAtWork())
			{
				activeFireFighter.StartReturnToStationAlarm(1f);
			}
			else
			{
				Sim.MakeSimGoHome(guest, drivenSimsGoHomeWith: false);
			}
		}

		private void AddInteractionToTeleportOutside()
		{
			if (Parent.mGuest.IsOutside || Parent.mGuest.IsInPublicResidentialRoom)
			{
				return;
			}
			Mailbox mailbox = Parent.Lot.FindMailbox();
			if (mailbox == null)
			{
				mailbox = Parent.mGuest.LotHome.FindMailbox();
			}
			if (mailbox != null)
			{
				World.FindGoodLocationParams fglParams = new World.FindGoodLocationParams(mailbox.Position);
				fglParams.RequiredRoomID = 0;
				IGameObject gameObject = GlobalFunctions.CreateAtGoodLocation("ReservedTile", null, fglParams);
				if (gameObject != null)
				{
					gameObject.AddToWorld();
					Terrain.TeleportMeHere teleportMeHere = Terrain.TeleportMeHere.Singleton.CreateInstance(Terrain.Singleton, Parent.mGuest, new InteractionPriority(InteractionPriorityLevel.High), isAutonomous: false, cancellableByPlayer: false) as Terrain.TeleportMeHere;
					teleportMeHere.SetAndReserveDestination(gameObject);
					Parent.mGuest.InteractionQueue.AddAfterCheckingForDuplicates(teleportMeHere);
				}
			}
		}

		protected override void CleanUp()
		{
			AlarmManager.RemoveAlarm(mRemindGuestToGoOutside);
			base.CleanUp();
		}
	}

		protected override void CleanUp()
		{
			AlarmManager.RemoveAlarm(mRemindThemToLeave);
			base.CleanUp();
		}

	private class ArrivedOnLot : ChildSituation<VisitSituation>
	{
		private ArrivedOnLot()
		{
		}

		public ArrivedOnLot(VisitSituation parent)
			: base(parent)
		{
		}

		public override void Init(VisitSituation parent)
		{
			if (parent.mGuest.IsPerformingAService)
			{
				return;
			}
			SituationSocial.Definition i = new NotAutonomousForSelectableSims("Ask to Go Inside", new string[0], null, initialGreet: false);
			foreach (Sim mHost in parent.mHosts)
			{
				AddSituationSpecificInteraction(mHost, parent.mGuest, i, null, null, null, "Sims3.Gameplay.Autonomy.AskToGoInside+Definition");
			}
		}
	}

	private class AlreadyGreeted : ChildSituation<VisitSituation>
	{
		private AlreadyGreeted()
		{
		}

		public AlreadyGreeted(VisitSituation parent)
			: base(parent)
		{
		}

		public override void Init(VisitSituation parent)
		{
			parent.Guest.GreetSimOnLot(parent.Lot);
		}
	}

	public class HostOutside : ChildSituation<VisitSituation>
	{
		private Sim mOutdoorHost;

		private InteractionPriority mPriority;

		private bool mbIsAutonomous;

		private bool mbIsCancellableByPlayer;

		private List<Sim> mFollowers;

		public List<Sim> Followers => mFollowers;

		private HostOutside()
		{
		}

		public HostOutside(VisitSituation parent, Sim host, List<Sim> followers, InteractionPriority pri, bool auto, bool cancel)
			: base(parent)
		{
			mOutdoorHost = host;
			mPriority = pri;
			mbIsAutonomous = auto;
			mbIsCancellableByPlayer = cancel;
			mFollowers = followers;
		}

		public override void Init(VisitSituation parent)
		{
			if (parent.mDescendantHost != null && parent.mGuest.SimDescription.TeenOrAbove)
			{
				SituationSocial.Definition i = new NotAutonomousForSelectableSims("Hug Ancestor", new string[0], null, initialGreet: false);
				ForceSituationSpecificInteraction(parent.mGuest, mOutdoorHost, i, null, null, FailedToInteractWithHost);
				return;
			}
			Sim guest = parent.Guest;
			if (guest.IsHuman)
			{
				InteractionInstance instance = ((!guest.IsSelectable) ? CreateSituationSpecificInteraction(mOutdoorHost, guest, new SocialInteractionA.Definition("Chat", new string[0], null, initialGreet: false), mPriority, null, SetStateVisitorWantsToComeIn, FailedToInteractWithHost) : CreateSituationSpecificInteraction(mOutdoorHost, guest, new SocialInteractionA.Definition("Ask to Go Inside", new string[0], null, initialGreet: false), mPriority, null, null, FailedToInteractWithHost));
				ForceSituationSpecificInteraction(guest, instance);
			}
			else
			{
				ForceSituationSpecificInteraction(guest, mOutdoorHost, InviteInOrRefuseEntrance.Singleton, null, null, null);
			}
		}

		private void SetStateVisitorWantsToComeIn(Sim actor, float x)
		{
			Parent.SetState(new VisitorWantsToComeIn(Parent, mFollowers));
		}

		private void FailedToInteractWithHost(Sim actor, float x)
		{
			if (actor.HasExitReason(ExitReason.RouteFailed))
			{
				Sim guest = Parent.Guest;
				VisitLot.Definition definition = new VisitLot.Definition();
				definition.mShouldTestTimeOfLastVisit = false;
				VisitLot visitLot = definition.CreateInstance(guest.LotCurrent, guest, mPriority, mbIsAutonomous, mbIsCancellableByPlayer) as VisitLot;
				visitLot.IgnoreOutdoorHosts = true;
				guest.InteractionQueue.PushAsContinuation(visitLot, mustRun: true);
			}
		}
	}

	public class VisitorWantsToComeIn : ChildSituation<VisitSituation>
	{
		public class WaitOutside : Interaction<Sim, Sim>
		{
			private class Definition : InteractionDefinition<Sim, Sim, WaitOutside>
			{
				protected override bool Test(Sim a, Sim target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
				{
					return true;
				}
			}

			public static readonly InteractionDefinition Singleton = new Definition();

			protected override bool Run()
			{
				Actor.RegisterGroupTalk();
				DateAndTime previousDateAndTime = SimClock.CurrentTime();
				float num = 0f;
				num = ((!Actor.SocialComponent.IsInvitedOver(Actor.LotCurrent)) ? RandomUtil.RandomFloatGaussianDistribution(MinWaitingTimeWhenNotInvited, MaxWaitingTimeWhenNotInvited) : RandomUtil.RandomFloatGaussianDistribution(GetMinWaitingTimeWhenInvited(Actor), GetMaxWaitingTimeWhenInvited(Actor)));
				Actor.LoopIdle();
				while (!Actor.WaitForExitReason(0.33f, ExitReason.Default))
				{
					Actor.TryGroupTalk();
					if (Actor.InteractionQueue.GetNextInteraction() != null)
					{
						Actor.UnregisterGroupTalk();
						return true;
					}
					if (SimClock.ElapsedTime(TimeUnit.Hours, previousDateAndTime) > num)
					{
						Actor.UnregisterGroupTalk();
						return true;
					}
				}
				Actor.UnregisterGroupTalk();
				return false;
			}
		}

		private int mRetryCount;

		private AlarmHandle mWaitForGreetingHandle;

		private AlarmHandle mHeadingOffLotHandle;

		private AlarmHandle mWaitToInviteAgainHandle;

		private List<Sim> mFollowers;

		public List<Sim> Followers => mFollowers;

		private VisitorWantsToComeIn()
		{
		}

		public VisitorWantsToComeIn(VisitSituation parent)
			: base(parent)
		{
			mFollowers = null;
		}

		public VisitorWantsToComeIn(VisitSituation parent, List<Sim> followers)
			: base(parent)
		{
			mFollowers = followers;
		}

		public override void Init(VisitSituation parent)
		{
			if (Parent.mGuest.IsGreetedOnLot(Parent.Lot))
			{
				parent.SetState(new AlreadyGreeted(parent));
				return;
			}
			bool flag = parent.mMostFriendlyHost != null && parent.mMostFriendlyHost.IsSelectable;
			if (parent.mDescendantHost != null && parent.mGuest.SimDescription.TeenOrAbove)
			{
				SituationSocial.Definition i = new NotAutonomousForSelectableSims("Hug Ancestor", new string[0], null, initialGreet: false);
				ForceSituationSpecificInteraction(parent.mGuest, parent.mDescendantHost, i, null, null, InvitedInFailed);
			}
			else if (parent.mMostFriendlyHost != null && !flag)
			{
				DaycareTransportSituation daycareTransportSituation = DaycareSituation.GetDaycareSituationForSim(parent.mMostFriendlyHost) as DaycareTransportSituation;
				if (parent.mMostFriendlyHost.IsAtHome && daycareTransportSituation == null)
				{
					ForceSituationSpecificInteraction(parent.mGuest, parent.mMostFriendlyHost, InviteInOrRefuseEntrance.Singleton, null, null, InvitedInFailed);
					flag = true;
				}
				else
				{
					foreach (Sim mHost in parent.mHosts)
					{
						DaycareTransportSituation daycareTransportSituation2 = DaycareSituation.GetDaycareSituationForSim(mHost) as DaycareTransportSituation;
						if (mHost.IsAtHome && !mHost.IsSelectable && daycareTransportSituation2 == null)
						{
							new NotAutonomousForSelectableSims("Invite In", new string[0], null, initialGreet: false);
							ForceSituationSpecificInteraction(parent.mGuest, mHost, InviteInOrRefuseEntrance.Singleton, null, null, InvitedInFailed);
							flag = true;
							break;
						}
					}
				}
			}
			if (flag)
			{
				float time = sMaxWaitForGreeting;
				if (ForeignVisitorsSituation.TryGetForeignVisitorsSituation(parent.mGuest) != null)
				{
					time = MaxWaitingTimeForeignVisitor;
				}
				mWaitForGreetingHandle = AlarmManager.AddAlarm(time, TimeUnit.Hours, WaitedTooLongForGreeting, "Waiting to be Greeted", AlarmType.AlwaysPersisted, parent.mGuest);
				AddSituationSpecificInteraction(parent.mGuest, parent.mGuest, WaitOutside.Singleton, null, null, null, "Sims3.Gameplay.Situations.VisitSituation+VisitorWantsToComeIn+WaitOutside+Definition");
			}
			else
			{
				if (parent.mGuest == null)
				{
					return;
				}
				if (parent.mGuest.InteractionQueue == null)
				{
					parent.mGuest.PlayReaction(ReactionTypes.Shrug, ReactionSpeed.NowOrLater);
					WaitedTooLongForGreeting();
					return;
				}
				InteractionInstance currentInteraction = Parent.mGuest.InteractionQueue.GetCurrentInteraction();
				if (currentInteraction == null || currentInteraction.GetTargetLot() == Lot)
				{
					parent.mGuest.PlayReaction(ReactionTypes.Shrug, ReactionSpeed.NowOrLater);
					WaitedTooLongForGreeting();
				}
				else
				{
					mHeadingOffLotHandle = AlarmManager.AddAlarm(1f, TimeUnit.Minutes, StillHeadedOffLotCheck, "HeadingOffLot", AlarmType.AlwaysPersisted, parent.mGuest);
				}
			}
		}

		private void InvitedIn(Sim actor, float x)
		{
			Parent.OnInvitedIn(actor, x);
		}

		private void InvitedInFailed(Sim actor, float x)
		{
			if (Parent.Guest != null)
			{
				if (Parent.Guest.IsGreetedOnLot(Parent.Lot))
				{
					Parent.SetState(new AlreadyGreeted(Parent));
				}
				else if (mRetryCount < kInviteInNumRetries && Parent.mMostFriendlyHost != null)
				{
					mRetryCount++;
					mWaitToInviteAgainHandle = AlarmManager.AddAlarm(kWaitTimeToRetryGreet, TimeUnit.Minutes, TryInvitingAgain, "Waiting to Greet", AlarmType.AlwaysPersisted, Parent.mMostFriendlyHost);
				}
				else
				{
					WaitedTooLongForGreeting();
				}
			}
		}

		private void TryInvitingAgain()
		{
			Init(Parent);
		}

		private void WaitedTooLongForGreeting()
		{
			if (!Parent.DoesLotRequireGreeting())
			{
				Parent.SetState(new AlreadyGreeted(Parent));
			}
			else
			{
				Parent.SetState(new GuestLeavesAfterWaitingTooLong(Parent));
			}
		}

		private void StillHeadedOffLotCheck()
		{
			Init(Parent);
		}

		protected override void CleanUp()
		{
			AlarmManager.RemoveAlarm(mWaitForGreetingHandle);
			AlarmManager.RemoveAlarm(mWaitToInviteAgainHandle);
			AlarmManager.RemoveAlarm(mHeadingOffLotHandle);
			base.CleanUp();
		}
	}

	private class GuestLeavesAfterWaitingTooLong : ChildSituation<VisitSituation>
	{
		private GuestLeavesAfterWaitingTooLong()
		{
		}

		public GuestLeavesAfterWaitingTooLong(VisitSituation parent)
			: base(parent)
		{
		}

		public override void Init(VisitSituation parent)
		{
			if (!parent.mGuest.IsSelectable)
			{
				Sim.MakeSimGoHome(parent.mGuest, drivenSimsGoHomeWith: false);
			}
		}
	}

	private class Socializing : ChildSituation<VisitSituation>
	{
		private Socializing()
		{
		}

		public Socializing(VisitSituation parent)
			: base(parent)
		{
		}

		public override void Init(VisitSituation parent)
		{
			foreach (Sim mHost in parent.mHosts)
			{
				Check check = new Check(CheckType.SelfRegarding, null, null, new CommodityChange(CommodityKind.BeAppropriateInVisit, -10f));
				Check[] checks = new Check[1] { check };
				AddChecks(mHost, checks);
				mHost.SocialComponent.AddShortTermDesireToSocializeWith(parent.mGuest, sDesireToSocializeWithGuest);
			}
		}
	}

	private Sim mMostFriendlyHost;

	private List<Sim> mHosts = new List<Sim>();

	private Sim mGuest;

	private bool mIsVisitingDescendants;

	private DateAndTime WhenCreated = new DateAndTime(0L);

	private DateAndTime WhenInvitedIn = new DateAndTime(0L);

	[Tunable]
	[TunableComment("Range: -100 to 100. If LTR is below this, the sim won't be invited in")]
	public static float kLTRThresholdForInviteIn = -20f;

	[TunableComment("Range: Sim hours. Maximum time that Foreign Visitors will wait outside door after ringing the bell when invited over.")]
	[Tunable]
	private static float kMaxWaitingTimeForeignVisitor = 3f;

	[TunableComment("How long (in hours) the visitor will stay on the lot ungreeted before returning home")]
	[Tunable]
	private static float sMaxWaitForGreeting = 1f;

	[TunableComment("How long (in minutes) before the host will retry an attept to invite a Sim inside.")]
	[Tunable]
	private static float kWaitTimeToRetryGreet = 2f;

	[TunableComment("Range:  Sim days.  Description:  Number of days after inviting a Sim over for which the visit situation will automatically start that Sim in the greeted state.")]
	[Tunable]
	private static float kAskToStayOverDaysPermission = 1f;

	[Tunable]
	[TunableComment("The number Of times a guest will retry to be invited in by the host.")]
	public static int kInviteInNumRetries = 3;

	[Tunable]
	[TunableComment("Range:  Sim days.  Description: Descendants Version: Number of days after inviting a Sim over for which the visit situation will automatically start that Sim in the greeted state.")]
	private static float kAskToStayOverDaysPermission_Descendants = 1f;

	public bool IsVisitingDescendants
	{
		get
		{
			return mIsVisitingDescendants;
		}
		set
		{
			mIsVisitingDescendants = value;
		}
	}

	public static float MinWaitingTimeWhenNotInvited => kMinWaitingTimeWhenNotInvited;

	public static float MaxWaitingTimeWhenNotInvited => kMaxWaitingTimeWhenNotInvited;

	public static float MaxWaitingTimeForeignVisitor => kMaxWaitingTimeForeignVisitor;

	private VisitSituation()
	{
	}

	private VisitSituation(Sim guest, Lot lot, Sim mostFriendlyHost)
		: base(lot)
	{
		WhenCreated = SimClock.CurrentTime();
		lot.TimeOfLastVisit = SimClock.CurrentTime();
		mAlarmHandle = AlarmManager.AddAlarmRepeating(kMinVisitingTime, TimeUnit.Hours, CheckIfItsTimeToLeave, 0.5f, TimeUnit.Hours, "Visit CheckIfItsTimeToLeave", AlarmType.AlwaysPersisted, mGuest);
		mCheckForArrivingAndLeaving = AlarmManager.AddAlarmRepeating(5f, TimeUnit.Minutes, CheckForArrivingAndLeaving, 10f, TimeUnit.Minutes, "Visit checking if hosts have arrived or left", AlarmType.AlwaysPersisted, mGuest);
		mGuest = guest.AssignRole(this);
		foreach (Sim sim in lot.Household.Sims)
		{
			if (sim.IsAtHome)
			{
				AddHost(sim);
			}
		}
		mMostFriendlyHost = mostFriendlyHost;
		mPreviousHost = mostFriendlyHost;
		Reason = GuestLeaveReason.None;
		foreach (Sim mHost in mHosts)
		{
			ActiveTopic.AddToSim(mGuest, "Visit", mHost, mHost);
			ActiveTopic.AddToSim(mHost, "Visit", mHost, mHost);
		}
		if (LotManager.RoomIdIsOutside(mGuest.RoomId))
		{
			ActiveTopic.AddToSim(mGuest, "Compliment Garden", mGuest, mGuest);
		}
		if (mGuest.IsNPC)
		{
			mGuest.Motives.SetValue(CommodityKind.Hunger, 100f);
			mGuest.Motives.SetValue(CommodityKind.Bladder, 100f);
		}
		LTRData lTRData;
		if (mostFriendlyHost != null)
		{
			LongTermRelationshipTypes longTermRelationship = Relationship.GetLongTermRelationship(mostFriendlyHost, mGuest);
			lTRData = LTRData.Get(longTermRelationship);
		}
		else
		{
			lTRData = LTRData.Get(LongTermRelationshipTypes.Stranger);
		}
		float threshold = lTRData.VisitorPriveleges;
		Check check = new Check(CheckType.InappropriateForVisitor, threshold, GuestStartingInappropriateAction, null, new CommodityChange(CommodityKind.BeAppropriateInVisit, -100f));
		Check check2 = new Check(CheckType.OutsideLot, null, null, new CommodityChange(CommodityKind.BeAppropriateInVisit, -100f));
		Check check3 = new Check(CheckType.SelfRegarding, threshold, null, null, new CommodityChange(CommodityKind.BeAppropriateInVisit, -50f));
		Check[] checks;
		if (mGuest.Service != null)
		{
			if (mGuest.IsPerformingAnyServiceOfType(ServiceType.Butler) || mGuest.SimDescription.IsBonehilda)
			{
				AllowedToStayOver = true;
			}
			checks = new Check[2] { check2, check };
		}
		else
		{
			checks = new Check[3] { check2, check, check3 };
		}
		AddChecks(mGuest, checks);
		DaycareSituation daycareSituationForChild = DaycareSituation.GetDaycareSituationForChild(mGuest);
		if (daycareSituationForChild != null)
		{
			AllowedToStayOver = true;
		}
		mEventListeners[mGuest] = new List<EventListener>();
		mEventListeners[mGuest].Add(EventTracker.AddListener(EventTypeId.kEventSimMovedToLot, GuestLeftLot, mGuest));
	}

	private void AddHost(Sim host)
	{
		if (mHosts.Contains(host))
		{
			return;
		}
		Check check = new Check(CheckType.OutsideLot, null, null, new CommodityChange(CommodityKind.BeAppropriateInVisit, -100f));
		Check[] checks = new Check[1] { check };
		AddChecks(host, checks);
		mEventListeners[host] = new List<EventListener>();
		mEventListeners[host].Add(EventTracker.AddListener(EventTypeId.kRelationshipChanged, RelationshipChanged, mGuest, host));
		mEventListeners[host].Add(EventTracker.AddListener(EventTypeId.kRelationshipLTRChanged, RelationshipChanged, mGuest, host));
		if (mGuest.IsHuman)
		{
			SituationSocial.Definition i = new NotAutonomousForSelectableSims("Invite In", new string[0], null, initialGreet: false);
			SituationSocial.Definition i2 = new NotAutonomousForSelectableSims("Invite Everyone In", new string[0], null, initialGreet: false);
			AddSituationSpecificInteraction(mGuest, host, i, null, null, null, "Sims3.Gameplay.Autonomy.InviteIn+Definition");
			AddSituationSpecificInteraction(mGuest, host, i2, null, null, null, "Sims3.Gameplay.Autonomy.InviteIn+Definition");
		}
		else
		{
			SituationSocial.Definition i3 = new NotAutonomousForSelectableSims("Pet Invite Inside", new string[0], null, initialGreet: false);
			AddSituationSpecificInteraction(mGuest, host, i3, null, null, null, "Sims3.Gameplay.Autonomy.InviteIn+Definition");
		}
		if (ForeignVisitorsSituation.TryGetForeignVisitorsSituation(mGuest) != null && GameUtils.IsInstalled(ProductVersion.EP1))
		{
			SituationSocial.Definition i4 = new NotAutonomousForSelectableSims("Ask Foreign Visitor to Leave", new string[0], null, initialGreet: false);
			SituationSocial.Definition i5 = new NotAutonomousForSelectableSims("Ask Every Foreign Visitor to Leave", new string[0], null, initialGreet: false);
			AddSituationSpecificInteraction(mGuest, host, i4, null, null, null, "Sims3.Gameplay.Autonomy.RefuseEntrance+Definition");
			AddSituationSpecificInteraction(mGuest, host, i5, null, null, null, "Sims3.Gameplay.Autonomy.RefuseEntrance+Definition");
		}
		else
		{
			SituationSocial.Definition i6 = new NotAutonomousForSelectableSims("Shoo", new string[0], null, initialGreet: false);
			SituationSocial.Definition definition = null;
			definition = ((!mGuest.IsHuman) ? new NotAutonomousForSelectableSims("Ask Pet to Leave", new string[0], null, initialGreet: false) : new NotAutonomousForSelectableSims("Ask to Leave", new string[0], null, initialGreet: false));
			definition.DisallowInteractionNameCaching = true;
			SituationSocial.Definition i7 = new NotAutonomousForSelectableSims("Ask Everyone to Leave", new string[0], null, initialGreet: false);
			AddSituationSpecificInteraction(mGuest, host, i6, null, null, null, "Sims3.Gameplay.Autonomy.RefuseEntrance+Definition");
			AddSituationSpecificInteraction(mGuest, host, definition, null, null, null, "Sims3.Gameplay.Autonomy.RefuseEntrance+Definition");
			AddSituationSpecificInteraction(mGuest, host, i7, null, null, null, "Sims3.Gameplay.Autonomy.RefuseEntrance+Definition");
			AddSituationSpecificInteraction(mGuest, host, Sim.AskToStop.DerivedSingleton, null, null, null, "Sims3.Gameplay.Actors.Sim+AskToStop+DerivedDefinition");
		}
		host.AssignRole(this);
		mHosts.Add(host);
		ActiveTopic.AddToSim(host, "Visit", host, host);
		ActiveTopic.AddToSim(mGuest, "Visit", host, host);
		if (mMostFriendlyHost == null)
		{
			mMostFriendlyHost = host;
		}
		if (GameUtils.IsInstalled(ProductVersion.EP11) && GameUtils.IsFutureWorld())
		{
			if (mDescendantHost == null && FutureDescendantService.IsDescendantOf(host.SimDescription, mGuest.SimDescription))
			{
				mDescendantHost = host;
			}
			if (mMostFriendlyHost != null && mDescendantHost != null && mMostFriendlyHost != mDescendantHost && FutureDescendantService.IsDescendantOf(mMostFriendlyHost.SimDescription, mGuest.SimDescription))
			{
				mDescendantHost = mMostFriendlyHost;
			}
		}
		if (Child is GuestLeftAlone)
		{
			SetState(new VisitorWantsToComeIn(this, null));
		}
	}

	private void RemoveHost(Sim host)
	{
		if (!mHosts.Contains(host))
		{
			return;
		}
		if (!host.HasBeenDestroyed)
		{
			mLastHostRemoved = host;
		}
		Remove(host);
		host.RemoveRole(this);
		mHosts.Remove(host);
		if (mInteractions != null)
		{
			List<InteractionObjectPair> situationSpecificInteractionsForActor = mGuest.GetSituationSpecificInteractionsForActor(host);
			if (situationSpecificInteractionsForActor != null && mInteractions != null)
			{
				for (int i = 0; i < situationSpecificInteractionsForActor.Count; i++)
				{
					for (int j = 0; j < mInteractions.Count; j++)
					{
						if (mInteractions[j].InteractionObjectPair == situationSpecificInteractionsForActor[i])
						{
							mInteractions.RemoveAt(j);
							break;
						}
					}
				}
				mGuest.RemoveSituationSpecificInteractions(host);
			}
		}
		if (mMostFriendlyHost == host)
		{
			mMostFriendlyHost = FindMostFriendlyHost(Lot, mGuest);
			if (mMostFriendlyHost == null)
			{
				if (mGuest.IsActiveSim && !mGuest.IsGreetedOnLot(Lot))
				{
					string titleText = LocalizeString("NoHosts");
					StyledNotification.Format format = new StyledNotification.Format(titleText, ObjectGuid.InvalidObjectGuid, mGuest.ObjectId, StyledNotification.NotificationStyle.kGameMessagePositive);
					StyledNotification.Show(format);
				}
			}
			else
			{
				mPreviousHost = mMostFriendlyHost;
			}
		}
		mSimsWithInteractions.Remove(host);
	}

	public void PostWorldFixUp()
	{
		foreach (KeyValuePair<Sim, List<EventListener>> mEventListener in mEventListeners)
		{
			foreach (EventListener item in mEventListener.Value)
			{
				if (!item.IsCompleted)
				{
					EventTracker.AddListener(item);
				}
			}
		}
	}

	private void CheckForArrivingAndLeaving()
	{
		if (Lot.Household != null)
		{
			foreach (Sim sim in Lot.Household.Sims)
			{
				if (sim.IsAtHome)
				{
					AddHost(sim);
				}
				else
				{
					RemoveHost(sim);
				}
			}
		}
		if (!GuestIsAllowedToStayAlone())
		{
			if (mHosts.Count == 0 && !(Child is GuestLeftAlone) && ForeignVisitorsSituation.TryGetForeignVisitorsSituation(mGuest) == null)
			{
				SetState(new GuestLeftAlone(this));
			}
			Sim parent = mGuest;
			if (parent.Posture is BeingCarriedPosture beingCarriedPosture)
			{
				parent = beingCarriedPosture.Parent;
			}
			if (parent.RoutingComponent.GetDestinationLot() != Lot && mGuest.LotCurrent != Lot)
			{
				Exit();
			}
		}
	}

	private bool GuestIsAllowedToStayAlone()
	{
		if (mGuest.Service != null)
		{
			return true;
		}
		if (Occupation.SimIsWorkingAtJobOnLot(mGuest, Lot))
		{
			return true;
		}
		if (FirefighterEmergencySituation.FindFirefighterEmergencySituationInvolvingSim(mGuest) != null)
		{
			return true;
		}
		if (mGuest.Occupation is ActiveFireFighter { HasReturnToStationAlarm: not false })
		{
			return true;
		}
		if (OccultImaginaryFriend.TryGetOccultFromSim(mGuest, out var occult) && !occult.IsReal)
		{
			return true;
		}
		DaycareSituation daycareSituationForSim = DaycareSituation.GetDaycareSituationForSim(mGuest);
		if (daycareSituationForSim != null && daycareSituationForSim.Lot == Lot)
		{
			return true;
		}
		return false;
	}

	public static VisitSituation Create(Sim guest, Lot lot)
	{
		if (lot == null)
		{
			return null;
		}
		if (lot.IsCommunityLot)
		{
			return null;
		}
		if (guest.LotCurrent == null)
		{
			return null;
		}
		if (guest.LotHome == lot)
		{
			return null;
		}
		if (lot.Household == null)
		{
			return null;
		}
		if (guest.SimDescription.IsBonehilda)
		{
			if (GameStates.IsInWorld())
			{
				guest.GreetSimOnLot(lot);
			}
			return null;
		}
		if (guest.SimDescription.IsGhost && !guest.SimDescription.IsPlayableGhost)
		{
			if (GameStates.IsInWorld())
			{
				guest.GreetSimOnLot(lot);
			}
			return null;
		}
		if (guest.IsWildAnimal)
		{
			return null;
		}
		VisitSituation visitSituation = FindVisitSituationInvolvingGuest(guest);
		if (visitSituation != null && visitSituation.Lot == lot)
		{
			return visitSituation;
		}
		Sim sim = null;
		if (guest.School != null && guest.School.SimToVisit != null && guest.School.SimToVisit.LotHome == lot)
		{
			guest.GreetSimOnLot(lot);
			sim = guest.School.SimToVisit;
		}
		Occupation occupation = guest.Occupation;
		bool flag = false;
		if (occupation != null)
		{
			Job currentJob = occupation.CurrentJob;
			if (currentJob != null && currentJob.Lot == lot)
			{
				flag = true;
				guest.GreetSimOnLot(lot);
			}
		}
		if (guest.IsInPublicResidentialRoom && !flag)
		{
			return null;
		}
		if (sim == null)
		{
			sim = FindMostFriendlyHost(lot, guest);
		}
		if (sim != null)
		{
			VisitSituation visitSituation2 = new VisitSituation(guest, lot, sim);
			GroupingSituation situationOfType = guest.GetSituationOfType<GroupingSituation>();
			if (situationOfType != null && situationOfType.Leader.LotHome == lot)
			{
				guest.GreetSimOnLot(lot);
				visitSituation2.SetStateSocializing();
			}
			if (guest.Service != null && guest.Service.NPCIsAutomaticallyGreeted(guest))
			{
				visitSituation2.SetState(new AlreadyGreeted(visitSituation2));
			}
			else if (IsInvitedOver(lot, guest))
			{
				visitSituation2.AllowedToStayOver = true;
				visitSituation2.SetState(new AlreadyGreeted(visitSituation2));
			}
			else if (guest.IsGreetedOnLot(lot))
			{
				visitSituation2.SetState(new AlreadyGreeted(visitSituation2));
			}
			else
			{
				visitSituation2.SetState(new ArrivedOnLot(visitSituation2));
			}
			return visitSituation2;
		}
		if (sim == null)
		{
			VisitSituation visitSituation3 = new VisitSituation(guest, lot, sim);
			if (flag)
			{
				visitSituation3.SetState(new AlreadyGreeted(visitSituation3));
			}
			else if (guest.Service != null)
			{
				if (guest.Service.NPCIsAutomaticallyGreeted(guest))
				{
					visitSituation3.SetState(new AlreadyGreeted(visitSituation3));
				}
				else
				{
					visitSituation3.SetState(new ArrivedOnLot(visitSituation3));
				}
			}
			else if (ForeignVisitorsSituation.TryGetForeignVisitorsSituation(guest) != null)
			{
				visitSituation3.SetState(new ArrivedOnLot(visitSituation3));
			}
			else
			{
				visitSituation3.SetState(new GuestLeftAlone(visitSituation3));
			}
		}
		return null;
	}

	public static void SetVisitToSocializing(Sim actor)
	{
		VisitSituation visitSituation = FindVisitSituationInvolvingGuest(actor);
		if (visitSituation != null)
		{
			visitSituation.Guest.GreetSimOnLot(visitSituation.Lot);
			visitSituation.SetStateSocializing();
		}
	}

	public static void SetVisitToGreeted(Sim actor)
	{
		FindVisitSituationInvolvingGuest(actor)?.SetStateAlreadyGreeted();
	}

	public static void SetVisitToHostOutside(Sim actor, List<Sim> followers, Sim host, InteractionPriority priority, bool isAutonomous, bool isCancellableByPlayer)
	{
		VisitSituation visitSituation = FindVisitSituationInvolvingGuest(actor);
		if (visitSituation == null)
		{
			visitSituation = Create(actor, actor.LotCurrent);
		}
		visitSituation?.SetStateHostOutside(host, followers, priority, isAutonomous, isCancellableByPlayer);
	}

	public static void SetVisitToVisitorHasRungDoorbell(Sim actor, List<Sim> followers)
	{
		VisitSituation visitSituation = FindVisitSituationInvolvingGuest(actor);
		if (visitSituation == null)
		{
			visitSituation = Create(actor, actor.LotCurrent);
		}
		visitSituation?.SetStateVisitorHasRungDoorbell(followers);
	}

	public static VisitSituation FindVisitSituationInvolvingGuest(Sim guest)
	{
		Sims3.Gameplay.Autonomy.Autonomy autonomy = guest.Autonomy;
		if (autonomy != null)
		{
			foreach (Situation situation in autonomy.SituationComponent.Situations)
			{
				if (situation is VisitSituation visitSituation && visitSituation.Guest == guest)
				{
					return visitSituation;
				}
			}
		}
		return null;
	}

	public static bool IsInvitedOver(Lot lot, Sim guest)
	{
		if (lot.Household != null)
		{
			float num = kAskToStayOverDaysPermission;
			foreach (Sim sim in lot.Household.Sims)
			{
				Relationship relationship = Relationship.Get(guest, sim, createIfNone: false);
				VisitSituation visitSituation = FindVisitSituationInvolvingGuest(guest);
				if (visitSituation != null)
				{
					num = ((!visitSituation.IsVisitingDescendants) ? kAskToStayOverDaysPermission : kAskToStayOverDaysPermission_Descendants);
				}
				if (relationship != null)
				{
					if (relationship.mWhenAllowedToStayOverSimA.Ticks != 0 && relationship.SimDescriptionA == guest.SimDescription && SimClock.ElapsedTime(TimeUnit.Days, relationship.mWhenAllowedToStayOverSimA) < num)
					{
						return true;
					}
					if (relationship.mWhenAllowedToStayOverSimB.Ticks != 0 && relationship.SimDescriptionB == guest.SimDescription && SimClock.ElapsedTime(TimeUnit.Days, relationship.mWhenAllowedToStayOverSimB) < num)
					{
						return true;
					}
				}
			}
		}
		return false;
	}

	private static Sim FindMostFriendlyHost(Lot lot, Sim guest)
	{
		Sim sim = null;
		float num = float.MinValue;
		if (lot.Household != null)
		{
			foreach (Sim sim2 in lot.Household.Sims)
			{
				SimDescription simDescription = sim2.SimDescription;
				if ((simDescription == null || (simDescription.IsHuman && !simDescription.ToddlerOrBelow)) && sim2.LotCurrent == lot && sim2 != guest)
				{
					Relationship relationship = Relationship.Get(guest, sim2, createIfNone: false);
					if (relationship != null && relationship.LTR.Liking > num)
					{
						num = relationship.LTR.Liking;
						sim = sim2;
					}
					else if (sim == null)
					{
						sim = sim2;
					}
				}
			}
		}
		return sim;
	}

	public static void OnInvitedIn(Sim sim)
	{
		FindVisitSituationInvolvingGuest(sim)?.OnInvitedIn(sim, 0f);
	}

	public static void OnSimLeavingLot(Sim leavingSim)
	{
		if (leavingSim == null)
		{
			return;
		}
		HostedSituation.GetHostedSituationIAmGuestAtCurrently(leavingSim)?.RemoveGuest(leavingSim, bLeftEarly: true);
		HostedSituation hostedSituationIAmLeaving = HostedSituation.GetHostedSituationIAmLeaving(leavingSim);
		if (leavingSim.IsSelectable || Household.ActiveHousehold == null || ((!leavingSim.LotCurrent.IsResidentialLot || !leavingSim.IsOnAGreetedLot || leavingSim.LotCurrent != Household.ActiveHousehold.LotHome) && (hostedSituationIAmLeaving == null || hostedSituationIAmLeaving.Host == null || !hostedSituationIAmLeaving.Host.IsSelectable || hostedSituationIAmLeaving.Lot != leavingSim.LotCurrent)))
		{
			return;
		}
		VisitSituation visitSituation = FindVisitSituationInvolvingGuest(leavingSim);
		if (visitSituation == null)
		{
			return;
		}
		if (visitSituation.BroughtOverPetId != 0)
		{
			SimDescription simDescription = SimDescription.Find(visitSituation.BroughtOverPetId);
			if (simDescription != null)
			{
				Sim createdSim = simDescription.CreatedSim;
				if (createdSim != null)
				{
					VisitSituation visitSituation2 = FindVisitSituationInvolvingGuest(createdSim);
					if (visitSituation2 != null && visitSituation2.Lot == visitSituation.Lot)
					{
						Sim.MakeSimGoHome(createdSim, drivenSimsGoHomeWith: false);
					}
					visitSituation.BroughtOverPetId = 0uL;
				}
			}
		}
		if ((visitSituation.Reason == GuestLeaveReason.None && leavingSim.IsPerformingAnyServiceOfType(ServiceType.Burglar | ServiceType.GrimReaper | ServiceType.Repoman | ServiceType.Firefighter | ServiceType.SocialWorkerChildProtection | ServiceType.Butler)) || visitSituation.mbSimAnnouncedLeaving)
		{
			return;
		}
		visitSituation.mbSimAnnouncedLeaving = true;
		string titleText;
		if (hostedSituationIAmLeaving != null)
		{
			titleText = hostedSituationIAmLeaving.LeavingMessage(leavingSim);
		}
		else
		{
			if (visitSituation != null && visitSituation.Reason == GuestLeaveReason.AskedToLeave)
			{
				return;
			}
			DaycareSituation daycareSituationForSim = DaycareSituation.GetDaycareSituationForSim(leavingSim);
			if (daycareSituationForSim != null)
			{
				return;
			}
			titleText = Localization.LocalizeString("Gameplay/Core/Lot/GoHome:NPCLeaving" + (RandomUtil.GetInt(2) + 1));
		}
		if (leavingSim.IsHuman)
		{
			StyledNotification.Format format = new StyledNotification.Format(titleText, leavingSim.ObjectId, StyledNotification.NotificationStyle.kSimTalking);
			StyledNotification.Show(format);
		}
	}

	public void SetStateSocializing()
	{
		if (!(Child is Socializing))
		{
			SetState(new Socializing(this));
		}
	}

	private void SetStateAlreadyGreeted()
	{
		if (!(Child is AlreadyGreeted))
		{
			SetState(new AlreadyGreeted(this));
		}
	}

	private void SetStateVisitorHasRungDoorbell(List<Sim> followers)
	{
		SetState(new VisitorWantsToComeIn(this, followers));
	}

	public bool IsInStateHostOutside()
	{
		return Child is HostOutside;
	}

	private void SetStateHostOutside(Sim host, List<Sim> followers, InteractionPriority priority, bool isAutonomous, bool isCancellableByPlayer)
	{
		if (!(Child is HostOutside))
		{
			SetState(new HostOutside(this, host, followers, priority, isAutonomous, isCancellableByPlayer));
		}
	}

	private void OnInvitedIn(Sim sim, float x)
	{
		mGuest.GreetSimOnLot(Lot);
		WhenInvitedIn = SimClock.CurrentTime();
		ForeignVisitorsSituation foreignVisitorsSituation = ForeignVisitorsSituation.TryGetForeignVisitorsSituation(sim);
		if (foreignVisitorsSituation != null)
		{
			AllowedToStayOver = true;
		}
		if (sim.IsSelectable || Lot.IsActive)
		{
			sim.RunPetGreetBehavior(findDoor: false, considerLtr: true);
		}
		SetState(new Socializing(this));
	}

	protected override void CleanUp()
	{
		bool flag = false;
		if (mGuest != null)
		{
			if (mGuest.IsNPC)
			{
				mGuest.Motives.SetValue(CommodityKind.Social, 100f);
			}
			mGuest.RemoveRole(this);
		}
		foreach (Sim mHost in mHosts)
		{
			if (mHost.IsNPC)
			{
				mHost.Motives.SetValue(CommodityKind.Social, 100f);
			}
			mHost.SocialComponent.RemoveShortTermDesireToSocializeWith(mGuest);
			mHost.RemoveRole(this);
		}
		foreach (Sim sim in Lot.GetSims())
		{
			if (sim != mGuest && sim.Household == mGuest.Household)
			{
				flag = true;
			}
		}
		if (!flag && mGuest.Household != null && mGuest.LotCurrent != Lot)
		{
			mGuest.RemoveSimGreetedOnLot(Lot);
		}
		foreach (KeyValuePair<Sim, List<EventListener>> mEventListener in mEventListeners)
		{
			foreach (EventListener item in mEventListener.Value)
			{
				EventTracker.RemoveListener(item);
			}
		}
		AlarmManager.RemoveAlarm(mAlarmHandle);
		AlarmManager.RemoveAlarm(mCheckForArrivingAndLeaving);
		PortfolioPhotoData = null;
		BroughtOverPetId = 0uL;
		base.CleanUp();
	}

	private bool DoesLotRequireGreeting()
	{
		if (Lot.GetFrontDoor(eFrontDoorType.kFrontDoorTypeDefault) == null)
		{
			foreach (Sim mHost in mHosts)
			{
				Relationship relationship = Relationship.Get(mGuest, mHost, createIfNone: false);
				if (relationship != null && relationship.WhenLastTalked.Ticks > WhenCreated.Ticks)
				{
					return false;
				}
			}
		}
		return true;
	}

	public static float GetMinWaitingTimeWhenInvited(Sim sim)
	{
		ForeignVisitorsSituation foreignVisitorsSituation = ForeignVisitorsSituation.TryGetForeignVisitorsSituation(sim);
		if (foreignVisitorsSituation != null)
		{
			return MinWaitingTimeForeignVisitor;
		}
		return MinWaitingTimeWhenInvited;
	}

	public static float GetMaxWaitingTimeWhenInvited(Sim sim)
	{
		ForeignVisitorsSituation foreignVisitorsSituation = ForeignVisitorsSituation.TryGetForeignVisitorsSituation(sim);
		if (foreignVisitorsSituation != null)
		{
			return MaxWaitingTimeForeignVisitor;
		}
		return MaxWaitingTimeWhenInvited;
	}
