local status, material = pcall(require, "material")
local status, colors = pcall(require, "material.colors")

material.setup {
  custom_colors = function(colors)
    colors.editor.bg = "#000000"
  end
}
