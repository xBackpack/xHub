local pps = game:GetService("ProximityPromptService")

local module = {
  enabled = false
}

function module:SetInstantInteract(value)
  module.enabled = value
  print("B")
end

pps.PromptButtonHoldBegan:Connect(function(prompt, player)
    if not module.enabled then return end

    prompt.HoldDuration = 0
  end
)

return module