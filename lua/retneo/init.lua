local M = {};

-- ============================================================================
-- HYBRID RICH PALETTE DEFINITIONS (Pure Black Void Edition)
-- ============================================================================
-- This configuration utilizes a custom organic hybrid setup.
-- The background utilizes a pure black ("#000000") anchor for maximum contrast,
-- while semantic tokens feature the classic desaturated pastel shades.
local colors = {
  -- Core Interface Structures (Base Canvas & Containers)
  bg            = "#000000", -- Pure dark void black (Main editor window background)
  bg_subtle     = "#000000", -- Warm, earthy dark charcoal for floating blocks
  selection     = "#2B2B2B", -- Retneo selection block
  border        = "#7EACB5", -- Retneo border
  fg            = "#FFF4EA", -- Retneo foreground
  gray          = "#7EACB5", -- Retneo muted
    
    
-- Muted & Warm Tones (Desaturated)
--   terracotta    = "#6098b0", -- Dull crimson clay (Statements, Errors, Keywords)
--   forest_green  = "#ad7c3a", -- Muted leaf green (Strings)
--   sand_gold     = "#cc9391", -- Soft warm honey gold (Functions, Labels)
--   sky_teal      = "#6b979f", -- Muted pool teal (Types, Structure Tags)
--   blossom_rose  = "#df8ca4", -- Dusty flower pink (Constants, Numbers)
--   clay_orange   = "#e8b07f", -- Soft desert orange (Specials, Identifiers)
--   water_blue    = "#9788a9", -- Soft pool blue (Parameters, Attributes)
--
-- -- Zenbones x Rosé Pine Inspired Muted & Warm Tones
--   terracotta    = "#806669", -- Rose-tinted ash clay (Statements, Errors, Keywords)
--   forest_green  = "#8c7e6c", -- Dry leaf pine green / olive (Strings)
--   sand_gold     = "#ab908a", -- Milk-honey soft gold (Functions, Labels)
--   sky_teal      = "#6e7f80", -- Faded slate pine teal (Types, Structure Tags)
--   blossom_rose  = "#b38b95", -- Dusty, chalky rose (Constants, Numbers)
--   clay_orange   = "#b59882", -- Soft sun-bleached terracotta (Specials, Identifiers)
--   water_blue    = "#80788a", -- Faded lavender-tinted blue (Parameters, Attributes)
       
    
-- -- Zenbones x Rosé Pine (Micro-Brightened Muted Warm Tones)
--   terracotta    = "#9d8285", -- Micro-brightened rose-ash clay (Statements, Errors, Keywords)
--   forest_green  = "#a89987", -- Softly lifted dry pine green / olive (Strings)
--   sand_gold     = "#c7ae9c", -- Luminous milk-honey gold (Functions, Labels)
--   sky_teal      = "#899b9c", -- Crisp slate pine teal (Types, Structure Tags)
--   blossom_rose  = "#cca9b3", -- Softly glowing dusty rose (Constants, Numbers)
--   clay_orange   = "#d1b49e", -- Warmly lit sun-bleached orange (Specials, Identifiers)
--   water_blue    = "#9b93a6", -- Subtly lifted lavender-blue (Parameters, Attributes)
  --   
-- -- Zenbones x Rosé Pine (Muted Warm Base with a Tiny Bright Lift)
    -- 
   terracotta    = "#C96868", -- Barely brightened rose-ash clay (Statements, Errors, Keywords)
   forest_green  = "#79C9C5", -- Tiny lift dry pine green / olive (Strings)
   sand_gold     = "#FADFA1", -- Softly lit milk-honey gold (Functions, Labels)
   sky_teal      = "#7EACB5", -- Slightly glowing slate pine teal (Types, Structure Tags)
   blossom_rose  = "#C96868", -- Tiny pop of dusty chalky rose (Constants, Numbers)
   clay_orange   = "#FADFA1", -- Softly illuminated sun-bleached orange (Specials, Identifiers)
   water_blue    = "#79C9C5", -- Barely brightened lavender-tinted blue (Parameters, Attributes)
  
  -- terracotta    = "#3e8fb0", -- Rich crimson clay (Statements, Errors, Keywords)
  -- forest_green  = "#ad680a", -- Vibrant leaf green (Strings)
  -- sand_gold     = "#d7827e", -- Rich warm honey gold (Functions, Labels)
  -- sky_teal      = "#56949f", -- Saturated pool teal (Types, Structure Tags)
  -- blossom_rose  = "#eb6f92", -- Saturated flower pink (Constants, Numbers)
  -- clay_orange   = "#f5a056", -- Vibrant desert orange (Specials, Identifiers)
  -- water_blue    = "#907aa9", -- Deep pool blue (Parameters, Attributes)
  -- --
  -- Diagnostics & Git Gutters
  git_add       = "#79C9C5",
  git_change    = "#FADFA1",
  git_delete    = "#C96868",
  hint          = "#79C9C5",
  info          = "#7EACB5",
  warn          = "#FADFA1",
}

function M.colorscheme()
    
    vim.cmd('highlight clear')
    vim.cmd('syntax reset')
    vim.o.background = 'dark' 
    vim.g.colors_name = 'retneo'
    -- Make the block cursor gold/yellow with dark text inside it
    
    vim.opt.guicursor = {
      "n-v-c:block-Cursor",
      "i-ci-ve:ver25-Cursor",
      "r-cr:hor20-Cursor", 
      "o:hor50-Cursor",     
    }
    vim.api.nvim_set_hl(0, 'Cursor', { fg = '#000000', bg = '#FADFA1'})
    
    local set = vim.api.nvim_set_hl
    
    -- ========================================================================
    -- 1. STANDARD CODE SYNTAX HIGHLIGHT GROUPS
    -- ========================================================================
    -- Defines core fallback behaviors for classic Vim regex-based programming syntax highlighting.
    set(0, 'Normal',     { fg = colors.fg, bg = colors.bg })       -- Normal active window workspace text (Foreground/Background)
    set(0, 'Comment',    { fg = colors.gray, italic = true })      -- Source code comments (Stays grayed out and tilted)
    set(0, 'Constant',   { fg = colors.blossom_rose, bold = true }) -- Constant variables, predefined structural attributes
    set(0, 'Number',     { fg = colors.blossom_rose })             -- Integer values, float structures, numeric literals
    set(0, 'String',     { fg = colors.forest_green })             -- Code text inside quotes ("strings", 'chars')
    set(0, 'Identifier', { fg = colors.clay_orange })              -- Standard basic variables and plain names
    set(0, 'Function',   { fg = colors.sand_gold, bold = true })   -- Invoked code functions, method parameters, and execution hooks
    set(0, 'Statement',  { fg = colors.terracotta, bold = true })  -- Built-in system execution calls and conditionals
    set(0, 'PreProc',    { fg = colors.terracotta})               -- Macro definitions, directives (#include, import, require)
    set(0, 'Type',       { fg = colors.sky_teal, bold = true })    -- Struct declarations, interfaces, data type markers (int, string)
    set(0, 'Special',    { fg = colors.blossom_rose })             -- Special characters, regex string escapements, or inner built-ins
    set(0, 'Underlined', { fg = colors.sky_teal, underline = true }) -- Terminal links, Markdown references, underlined elements
    set(0, 'Error',      { fg = colors.terracotta, bold = true })  -- Native compiler issues, visual code crash markers
    set(0, 'Todo',       { fg = colors.bg, bg = colors.sand_gold, bold = true }) -- Reminders (TODO:, FIXME:) inverted block overlay
    set(0, '@keyword.return',  { fg = colors.clay_orange, bold = false })
    set(0, '@keyword.repeat',  { fg = colors.clay_orange, bold = false })
    set(0, 'Repeat',           { fg = colors.clay_orange, bold = false })
    set(0, 'Conditional',      { fg = colors.clay_orange, bold = false })
    set(0, '@keyword.conditional', { fg = colors.clay_orange, bold = false }) -- Modern Tree-sitter engine
    
        -- ========================================================================
    -- 2. EDITOR WINDOW BASE UI ELEMENTS
    -- ========================================================================
    -- Shapes structural components like split panels, cursor paths, selection tracks, and menus.
    set(0, 'NormalFloat',   { fg = colors.fg, bg = colors.bg_subtle }) -- Floating terminal menus, LSP documentation cards
    set(0, 'FloatBorder',   { fg = colors.border, bg = colors.bg_subtle }) -- Border line enclosing floating dialog menus
    set(0, 'CursorLine',    { bg = nil })                              -- Horizontal trace marking active row (Kept nil to hide the gray bar)
    set(0, 'CursorLineNr',  { fg = colors.sand_gold, bold = true })    -- Line number text column highlight matching cursor position
    set(0, 'Visual',        { bg = colors.selection })                 -- Solid color track highlights for selected chunks of code text
    set(0, 'Search',        { fg = colors.bg, bg = colors.sand_gold }) -- Highlight overlay applied over matches found using the '/' lookups
    set(0, 'IncSearch',     { fg = colors.bg, bg = colors.blossom_rose }) -- Live matching targets as you type search expressions
    set(0, 'VertSplit',     { fg = colors.border })                    -- Legacy vertical border splitting file windows
    set(0, 'WinSeparator',  { fg = colors.border })                    -- Modern Neovim window splitting structural lines
    set(0, 'LineNr',        { fg = colors.gray })                      -- Default color for inactive line numbers on the left gutter track
    set(0, 'SignColumn',    { bg = colors.bg })                        -- Gutter space containing Git flags and LSP breaking diagnostics
    set(0, 'Folded',        { fg = colors.gray, bg = colors.bg_subtle }) -- Closed/collapsed code block placeholder bars
    set(0, 'MatchParen',    { fg = colors.sand_gold, bold = true, underline = true }) -- Highlighting twin bracket/brace matching active cursor position

    -- ========================================================================
    -- 3. FLAT STATUS BAR BLENDING (ASTRONVIM INTEGRATIONS)
    -- ========================================================================
    -- Custom tracking variables to clean out background colors from the bottom bar setup.
    set(0, 'StatusLine',         { fg = colors.fg, bg = colors.bg })       -- Main bottom configuration indicator row
    set(0, 'StatusLineNC',       { fg = colors.gray, bg = colors.bg })     -- Bottom indicator bar for split, non-focused code views
    set(0, 'StatusLineSeparator', { fg = colors.gray, bg = colors.bg })     -- Divider lines between active section fields
    set(0, 'AstroStatusLines',   { fg = colors.fg, bg = colors.bg })       -- AstroNvim's specific background grid container
    set(0, 'AstroNormal',        { fg = colors.fg, bg = colors.bg })       -- General context state inside Astro statusbars
    set(0, 'AstroStatusNC',      { fg = colors.gray, bg = colors.bg })     -- Inactive status text indicators for Astro framework split views
    set(0, 'AstroStatusSection', { fg = colors.fg, bg = colors.bg })       -- Individual modules packing code information at bottom rows
    
    -- AstroNvim dynamic mode indicators (Changes color dynamically based on keystrokes)
    set(0, 'AstroModeNormal',    { fg = colors.sand_gold, bg = colors.bg, bold = true }) -- Text colors when moving inside NORMAL mode
    set(0, 'AstroModeInsert',    { fg = colors.forest_green, bg = colors.bg, bold = true }) -- Text colors when typing code inside INSERT mode
    set(0, 'AstroModeVisual',    { fg = colors.blossom_rose, bg = colors.bg, bold = true }) -- Text colors when selecting blocks inside VISUAL mode
    set(0, 'AstroModeCommand',   { fg = colors.terracotta, bg = colors.bg, bold = true }) -- Text colors when writing instructions in COMMAND mode

    -- ========================================================================
    -- 4. POPUP MENUS (AUTOCOMPLETE WINDOW ENGINE)
    -- ========================================================================
    -- Controls autocomplete suggestions, select lists, and dropdown panels.
    set(0, 'Pmenu',         { fg = colors.fg, bg = colors.bg_subtle }) -- Background panel listing suggestions as you type code
    set(0, 'PmenuSel',      { fg = colors.fg, bg = colors.selection, bold = true }) -- Selected active item inside the autocompletion dropdown menu
    set(0, 'PmenuSbar',     { bg = colors.bg_subtle })                 -- Scrollbar backline backing popups menus
    set(0, 'PmenuThumb',    { bg = colors.border })                    -- Moving scrollbar handle marking item lists height placement

    -- ========================================================================
    -- 5. TREE-SITTER MODERN TOKEN SYNTAX LAYER
    -- ========================================================================
    -- Hooks directly into abstract tree nodes parsing languages dynamically (Bypasses old Vim rules).
    set(0, '@comment',     { link = 'Comment' })                       -- Modern standard language comments parsing engine
    set(0, '@constant',    { link = 'Constant' })                      -- Static definitions, hardcoded program logic constraints
    set(0, '@number',      { link = 'Number' })                        -- Floating, hexadecimal, integer token indicators
    set(0, '@string',      { link = 'String' })                        -- Strings, template characters inside code scopes
    set(0, '@variable',    { fg = colors.fg })                         -- Maps plain syntax variables to foreground color
    set(0, '@function',    { link = 'Function' })                      -- Declared runtime code functions, closures, methods
    set(0, '@keyword',     { link = 'Statement' })                     -- Main system loops, functions wrappers, imports
    set(0, '@type',        { link = 'Type' })                          -- Class names, TypeScript abstractions, compiler templates
    set(0, '@operator',    { fg = colors.terracotta })                 -- Math operations, pointers, assignments (=, +, &&)
    set(0, '@parameter',   { fg = colors.water_blue, italic = true })  -- Incoming functional inputs inside definition brackets

    -- ========================================================================
    -- 6. ASTRONVIM PLUGIN OVERRIDES & DIAGNOSTICS (NEO-TREE, GIT, LSP)
    -- ========================================================================
    -- Styles external core modules bundled with AstroNvim.
    set(0, "NormalNC",       { bg = colors.bg, fg = colors.fg })       -- Static code buffers losing window active focus
    set(0, "DiagnosticError", { fg = colors.terracotta })               -- Critical LSP code syntax breakdown marker
    set(0, "DiagnosticWarn",  { fg = colors.warn })                    -- Code style warnings or compilation alerts
    set(0, "DiagnosticInfo",  { fg = colors.info })                    -- Contextual language hint details
    set(0, "DiagnosticHint",  { fg = colors.hint })                    -- Minor architectural structure code optimization suggestions
    set(0, "GitSignsAdd",    { fg = colors.git_add, bg = colors.bg })  -- Gutter additions mark tracker for newly appended rows
    set(0, "GitSignsChange", { fg = colors.git_change, bg = colors.bg }) -- Gutter update track indicators for modified text positions
    set(0, "GitSignsDelete", { fg = colors.git_delete, bg = colors.bg }) -- Gutter track flags highlighting removed file lines

    -- Neo-tree file tracking sidebar parameters
    set(0, "NeoTreeNormal",     { bg = colors.bg, fg = colors.fg })    -- Main side panel filesystem viewer container space
    set(0, "NeoTreeNormalNC",   { bg = colors.bg, fg = colors.fg })    -- Directory tracking file tree panels losing operational focus
    set(0, "NeoTreeBorder",     { fg = colors.border, bg = colors.bg }) -- Vertical divider boundary separating files list from editor
    
    -- Folder and Directory Highlighting Updates
    set(0, "NeoTreeDirectoryName", { fg = colors.water_blue, bold = true }) -- Target project folder names
    set(0, "NeoTreeDirectoryIcon", { fg = colors.water_blue})              -- Triangle indicators and icons pointing next to folder names
    set(0, "NeoTreeRootName",      { fg = colors.terracotta, bold = true }) -- Highest level working directory root path title header
    set(0, "NeoTreeFileName",      { fg = colors.fg })                     -- Normal file entries listed inside folders path structures

    -- Neo-tree Git status tracking modifications overrides to ensure uniform aesthetic flow
    set(0, "NeoTreeDirectoryNameGitModified",  { link = "NeoTreeDirectoryName" })
    set(0, "NeoTreeDirectoryIconGitModified",  { link = "NeoTreeDirectoryIcon" })
    set(0, "NeoTreeDirectoryNameGitUntracked", { link = "NeoTreeDirectoryName" })
    set(0, "NeoTreeDirectoryIconGitUntracked", { link = "NeoTreeDirectoryIcon" })

    -- ========================================================================
    -- 6b. TOP PLUGIN COMPATIBILITY HIGHLIGHT LAYERS
    -- ========================================================================
    -- TELESCOPE FUZZY FINDER POPUPS
    set(0, "TelescopeNormal",         { fg = colors.fg, bg = colors.bg }) -- Main body canvas of Telescope panels
    set(0, "TelescopeBorder",         { fg = colors.border, bg = colors.bg }) -- Outer frame wrapping Telescope windows
    set(0, "TelescopePromptNormal",   { fg = colors.fg, bg = colors.selection }) -- Text prompt search line inside search panels
    set(0, "TelescopePromptBorder",   { fg = colors.border, bg = colors.selection }) -- Frame border enclosing the input search path line
    set(0, "TelescopePromptTitle",    { fg = colors.sand_gold, bold = true }) -- Active widget title text label
    set(0, "TelescopeResultsTitle",   { fg = colors.sky_teal, bold = true })   -- Results widget section title label
    set(0, "TelescopeSelection",      { fg = colors.fg, bg = colors.selection, bold = true }) -- Selected element tracker row
    set(0, "TelescopeMatching",       { fg = colors.blossom_rose, bold = true }) -- Matching string letter elements highlighting

    -- WHICH-KEY POPUP HOTKEY TIPS
    set(0, "WhichKey",                { fg = colors.blossom_rose }) -- Triggering shortcut hotkey text hints
    set(0, "WhichKeyGroup",           { fg = colors.sky_teal, bold = true }) -- Bound functional group description headings
    set(0, "WhichKeyDesc",            { fg = colors.fg }) -- Context task descriptions string values
    set(0, "WhichKeySeparator",       { fg = colors.gray }) -- Arrow symbols separating hotkeys from functions descriptions
    set(0, "WhichKeyFloat",           { bg = colors.bg }) -- Canvas box tracking floating hotkey widgets

    -- LAZY.NVIM PACKAGE MANAGER
    set(0, "LazyNormal",              { fg = colors.fg, bg = colors.bg }) -- Main dashboard window grid backdrop
    set(0, "LazyButton",              { bg = colors.selection }) -- Interactive operations block elements
    set(0, "LazyButtonActive",        { fg = colors.bg, bg = colors.sand_gold, bold = true }) -- Focused operation toggle highlight state
    set(0, "LazySpecial",             { fg = colors.clay_orange }) -- Special version configuration tracking text properties
    set(0, "LazyH1",                  { fg = colors.terracotta, bold = true }) -- Top banner label section headers

    -- MASON LSP/LINTER INSTALLER ENGINE
    set(0, "MasonNormal",             { fg = colors.fg, bg = colors.bg }) -- Main installer card window panels background
    set(0, "MasonHeader",             { fg = colors.bg, bg = colors.terracotta, bold = true }) -- Section title highlight columns block banner
    set(0, "MasonHighlight",          { fg = colors.clay_orange }) -- Package installation update notice labels
    set(0, "MasonHighlightBlock",     { fg = colors.bg, bg = colors.sky_teal }) -- Selected target indicators rows layout fields
    set(0, "MasonMuted",              { fg = colors.gray }) -- Uninstalled package grey labels listing tracker path

    -- FLASH.NVIM ADVANCED SEARCH TRACKER
    set(0, "FlashMatch",              { fg = colors.bg, bg = colors.sky_teal }) -- General search targets matches blocks markers
    set(0, "FlashCurrent",            { fg = colors.bg, bg = colors.sand_gold, bold = true }) -- Active targeted keyword context position
    set(0, "FlashLabel",              { fg = colors.fg, bg = colors.blossom_rose, bold = true }) -- Target jumping destination keys labels flags

    -- ========================================================================
    -- 7. TRANSPARENCY LAYER OVERRIDE ENGINE
    -- ========================================================================
    -- Clears out underlying background definitions to support terminal transparency configurations.
    -- If AstroNvim options possess background_transparent = true, these elements strip color layers.
    set(0, "Normal",             { fg = colors.fg, bg = nil })         -- Removes main window dark block to look into desktop paths
    set(0, "NormalNC",           { fg = colors.fg, bg = nil })         -- Strips background canvas from inactive workspace frames
    set(0, "SignColumn",         { bg = nil })                         -- Transparent background for LSP warning gutter column
    set(0, "LineNr",             { fg = colors.gray, bg = nil })       -- Transparent background underneath file line numbers track
    set(0, "NeoTreeNormal",      { fg = colors.fg, bg = nil })         -- Strips background from left workspace folder navigator panel
    set(0, "NeoTreeNormalNC",    { fg = colors.fg, bg = nil })         -- Transparent backdrop for file listing manager when unfocused
    set(0, "NeoTreeBorder",      { fg = colors.border, bg = nil })    -- Clears out hard borders under file listing panels layout
    set(0, "EndOfBuffer",        { fg = colors.bg, bg = nil })         -- Hides empty text lines (~ markers) at bottom of files layout
    set(0, "GitSignsAdd",        { fg = colors.git_add, bg = nil })    -- Wipes background shading from git creation tracking markers
    set(0, "GitSignsChange",     { fg = colors.git_change, bg = nil }) -- Wipes background shading from git update tracking markers
    set(0, "GitSignsDelete",     { fg = colors.git_delete, bg = nil }) -- Wipes background shading from git deletion tracking markers
    set(0, "CursorLine",         { bg = nil })                         -- Safeguards layout to ensure cursor track background stays transparent
    
    -- Status bar specific transparent cleanups (Ensures text floats flat on window backdrop)
    set(0, 'StatusLine',         { fg = colors.fg, bg = nil })         -- Removes black block backing system tracking bar row
    set(0, 'StatusLineNC',       { fg = colors.gray, bg = nil })       -- Removes black block backing secondary tracking bar row
    set(0, 'StatusLineSeparator', { fg = colors.gray, bg = nil })       -- Allows file bar segments boundaries to flow transparently
    set(0, 'AstroNormal',        { fg = colors.fg, bg = nil })         -- Clears status indicator background fields for Astro configuration template
    set(0, 'AstroStatusLines',   { fg = colors.fg, bg = nil })         -- Transparent backbone grid for bottom layout strip framework
    set(0, 'AstroStatusSection', { fg = colors.fg, bg = nil })         -- Strips individual cell blocks color fills from status sections
    set(0, 'AstroModeNormal',    { fg = colors.sand_gold, bg = nil, bold = true }) -- Floating normal mode tag label without color boxes
    set(0, 'AstroModeInsert',    { fg = colors.forest_green, bg = nil, bold = true }) -- Floating insert mode tag label without color boxes
    set(0, 'AstroModeVisual',    { fg = colors.blossom_rose, bg = nil, bold = true }) -- Floating visual mode tag label without color boxes
    set(0, 'AstroModeCommand',   { fg = colors.terracotta, bg = nil, bold = true }) -- Floating command mode tag label without color boxes

    -- Telescope windows transparency layers cleanups
    set(0, "TelescopeNormal",         { fg = colors.fg, bg = nil })
    set(0, "TelescopeBorder",         { fg = colors.border, bg = nil })
    set(0, "TelescopePromptNormal",   { fg = colors.fg, bg = nil })
    set(0, "TelescopePromptBorder",   { fg = colors.border, bg = nil })
    
    -- Lazy, Mason, and WhichKey transparency layers cleanups
    set(0, "LazyNormal",              { fg = colors.fg, bg = nil })
    set(0, "MasonNormal",             { fg = colors.fg, bg = nil })
    set(0, "WhichKeyFloat",           { bg = nil })
end 

return M
