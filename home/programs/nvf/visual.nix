{
  lib,
  #colorScheme',
  ...
}: {
  vim = {
    visuals = {
      nvim-web-devicons.enable = true;
      rainbow-delimiters.enable = true;
    };

    #  highlight = {
    #    SignColumn.bg = colorScheme'.base00;
    #  };

    ui.borders = {
      enable = true;
      globalStyle = "single";
    };
  };
}
