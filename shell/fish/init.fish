# ophanim fish integration. Loaded via `fish --init-command "source <this>"`
# when a ophanim pane spawns fish. User config has already been sourced
# by fish itself; we just re-prepend $OPHANIM_BIN in case anything wiped it.
if set -q OPHANIM_BIN
  if not contains -- $OPHANIM_BIN $PATH
    set -gx PATH $OPHANIM_BIN $PATH
  end
end
