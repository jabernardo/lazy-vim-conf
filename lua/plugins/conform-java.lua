return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- Use google-java-format only for Java files
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.java = { "google_java_format" }

    -- Register custom formatter definition
    opts.formatters = opts.formatters or {}
    opts.formatters.google_java_format = {
      command = "google-java-format",
      args = { "-" },
      stdin = true,
    }
  end,
}
