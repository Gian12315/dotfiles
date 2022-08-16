require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    school = "~/Notes/School",
                    work = "~/Notes/Work",
                    test = "~/Notes/Test",
                },
            },
        },
        ["core.norg.concealer"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp",
            },
        },

        ["core.export"] = {},

        ["core.export.markdown"] = {
            config = {
                extensions = "all",
            },
        },

        ["core.norg.qol.toc"] = {},

        ["core.norg.journal"] = {
            config = {
                journal_folder = "Journal",
            },
        },
    },
})
