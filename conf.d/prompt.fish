# pure prompt (fish-pure-prompt) with the git segment rendered asynchronously
# by fish-async-prompt. No interactive guard: the async worker is a
# non-interactive fish that re-sources conf.d and needs the same colors.
set -g pure_color_primary cyan
set -g pure_color_prompt_on_success cyan
set -g pure_show_numbered_git_indicator true

set -g async_prompt_functions _pure_prompt_git
