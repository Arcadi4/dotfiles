export ALIEN_SECTIONS_LEFT=(
    exit
    path
    vcs_branch:async
    vcs_status:async
    vcs_dirty:async
    newline
    prompt
)

export ALIEN_SECTIONS_RIGHT=(
    versions
    time
    battery
)

export ALIEN_SECTION_TIME_FORMAT=%H:%M
export ALIEN_SECTIONS_LEFT_SEP_SYM=''
export ALIEN_SECTIONS_RIGHT_SEP_SYM=''

export ALIEN_VERSIONS_PROMPT='PYTHON GO NODE'
export ALIEN_SECTION_PATH_COMPONENTS=3
export ALIEN_KEEP_PROMPT=0

# base foreground
ALIEN_PROMPT_FG=15

# --- exit (primary signal) ---
ALIEN_SECTION_EXIT_FG=0
ALIEN_SECTION_EXIT_BG=2       # dark green (success)
ALIEN_SECTION_EXIT_BG_ERROR=9 # bright red (only strong highlight)

# --- path (neutral but not gray anymore) ---
ALIEN_SECTION_PATH_FG=15
ALIEN_SECTION_PATH_BG=0 # blends into terminal background

# --- git (cohesive + semantic, all dark tones) ---
ALIEN_SECTION_VCS_BRANCH_FG=15
ALIEN_SECTION_VCS_BRANCH_BG=4 # blue (context)

ALIEN_SECTION_VCS_STATUS_FG=15
ALIEN_SECTION_VCS_STATUS_BG=6 # aqua (info)

ALIEN_SECTION_VCS_DIRTY_FG=0
ALIEN_SECTION_VCS_DIRTY_BG=3 # yellow (warning)

# --- right side (very low emphasis, still colored) ---
ALIEN_SECTION_TIME_FG=15
ALIEN_SECTION_TIME_BG=5 # muted purple (low attention)

ALIEN_SECTION_BATTERY_FG=15
ALIEN_SECTION_BATTERY_BG=6 # reuse aqua, consistent with "status"

ALIEN_SECTION_VERSION_BG=0 # no gray block

# --- language accents ---
ALIEN_PYTHON_COLOR=3
ALIEN_GO_COLOR=4
ALIEN_NODE_COLOR=2

# --- git file indicators ---
ALIEN_GIT_TRACKED_COLOR=2
ALIEN_GIT_UN_TRACKED_COLOR=3
