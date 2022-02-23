require('bufferline').setup {
  options = {
    indicator_icon = ' ',
    numbers = "buffer_id",
    diagnostics = "nvim-cmp",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
    local icon = level:match("error") and " " or " "
    return " " .. icon .. count
    end,
    show_buffer_close_icons = true,
    show_close_icon = false,
    offsets = {
      {
        filetype = 'nerdtree',
        text = '  File Explorer',
        highlight = 'Directory',
        text_align = 'left',
      },
    },

    modified_icon = ' ',
    separator_style = 'thin',

    custom_areas = {
      left = function()
        return {
          { text = '    ', guifg = '#10737B',  },
        }
      end,
    },
  },
 highlights = {
    background = {
      guibg = { attribute = 'bg', highlight = 'TabLineFill' },
    },
    close_button = {
      guibg = { attribute = 'bg', highlight = 'TabLineFill' },
    },
    separator = {
      guifg = { attribute = 'fg', highlight = 'BufferLineSeparator' },
    },
    modified = {
      guifg = { attribute = 'fg', highlight = 'LineNr' },
    },
    modified_selected = {
      guifg = { attribute = 'fg', highlight = 'DiffAdd' },
    },
  },
}
