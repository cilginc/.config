vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "/home/cilgin/Documents/obsidian/eng-vocab.md",
  callback = function()
    vim.fn.jobstart({ "/home/cilgin/dev/Python/myenv/bin/python3", "/home/cilgin/Documents/obsidian/scripts/eng-vocab-parse.py" }, {
      stdout = "null",
      stderr = "null",
      on_exit = function()
        -- edit! gibi Neovim komutlarını güvenle çağırmak için vim.schedule
        vim.schedule(function()
          vim.cmd("edit!")  -- dosyayı diskteki haliyle yeniden yükle
        end)
      end,
    })
  end,
})
