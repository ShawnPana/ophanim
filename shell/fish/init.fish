# terminum fish integration. Loaded via `fish --init-command "source <this>"`
# when a terminum pane spawns fish. User config has already been sourced
# by fish itself; we just re-prepend $TERMINUM_BIN in case anything wiped it.
if set -q TERMINUM_BIN
  if not contains -- $TERMINUM_BIN $PATH
    set -gx PATH $TERMINUM_BIN $PATH
  end
end
