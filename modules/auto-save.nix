{pkgs, ...}: {
  extraPlugins.auto-save-nvim = {
    package = pkgs.vimPlugins.auto-save-nvim;
    setup =
      # lua
      ''
        require("auto-save").setup({
          enabled = true,
          events = {"InsertLeave", "InsertCharPre", "TextChanged", "TextChangedI"},
          debounce_delay = 300,
        })
      '';
  };
}
