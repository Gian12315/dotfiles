local cmp = require('cmp')
local map = vim.api.nvim_set_keymap

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end


cmp.setup ({
 enabled = true;
 --  autocomplete = true;
 --  debug = false;
 --  min_length = 1;
 --  preselect = 'enable';
 --  throttle_time = 80;
 --  source_timeout = 200;
 --  incomplete_delay = 400;
 --  max_abbr_width = 100;
 --  max_kind_width = 100;
 --  max_menu_width = 100;
 --  documentation = true;

    snippet = {
        expand = function(args)
                -- For `vsnip` user.
                vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.
        end,
    },

    mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif vim.fn["vsnip#available"](1) == 1 then
                feedkey("<Plug>(vsnip-expand-or-jump)", "")
              elseif has_words_before() then
                cmp.complete()
              else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
              end
            end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function()
              if cmp.visible() then
                cmp.select_prev_item()
              elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                feedkey("<Plug>(vsnip-jump-prev)", "")
              end
            end, { "i", "s" }),
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
          }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },

  sources = cmp.config.sources ({
        { name = 'nvim_lsp' },
        { name = 'treesitter' },
        { name = 'buffer' },
        { name = 'vsnip' },
        { name = 'spell' },
        { name = 'path' },
        { name = 'calc' }
  })
})

-- local t = function(str)
--   return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end

-- local check_back_space = function()
--     local col = vim.fn.col('.') - 1
--     if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
--         return true
--     else
--         return false
--     end
-- end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
-- _G.tab_complete = function()
--   if vim.fn.pumvisible() == 1 then
--     return t "<C-n>"
--   elseif vim.fn.call("vsnip#available", {1}) == 1 then
--     return t "<Plug>(vsnip-expand-or-jump)"
--   elseif check_back_space() then
--     return t "<Tab>"
--   else
--     return vim.fn['compe#complete']()
--   end
-- end
-- _G.s_tab_complete = function()
--   if vim.fn.pumvisible() == 1 then
--     return t "<C-p>"
--   elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
--     return t "<Plug>(vsnip-jump-prev)"
--   else
--     -- If <S-Tab> is not working in your terminal, change it to <C-h>
--     return t "<S-Tab>"
--   end
-- end


-- map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
-- map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- local opts = {silent = true, expr = true, noremap = true}
-- map("i", "<C-Space>", "compe#complete()", opts)
-- map("i", "<CR>", "compe#confirm('<CR>')", opts)
-- map("i", "<C-e>", "compe#close('<C-e>')", opts)
-- map("i", "<C-f>", "compe#scroll({'delta': +4})", opts)
-- map("i", "<C-d>", "compe#scroll({'delta': -4})", opts)
