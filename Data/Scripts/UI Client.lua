local clientPlayer = Game.GetLocalPlayer()

function OnBindingPressed(player, action)
  if action == "ability_extra_1" then
      UI.SetRewardsDialogVisible(true, RewardsDialogTab.REWARD_POINT_GAMES)

  elseif action == "ability_extra_2" then
      UI.SetRewardsDialogVisible(true, RewardsDialogTab.QUESTS)
  end
end

clientPlayer.bindingPressedEvent:Connect(OnBindingPressed)
