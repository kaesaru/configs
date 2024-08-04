U = {}

function U.cp(original, addedProps)
  -- create and copy original table
  local newTable = {}
  for key, value in pairs(original) do
    newTable[key] = value
  end
  -- add additional properties to table
  for key, value in pairs(addedProps) do
    newTable[key] = value
  end
  return newTable
end

return U
